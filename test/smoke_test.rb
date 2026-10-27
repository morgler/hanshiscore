require 'rack'
require 'rack/mock'
require 'rack/lint'
require 'uri'

root = File.expand_path('..', __dir__)
Dir.chdir(root) do
  app = Rack::Builder.parse_file('config.ru')
  request = Rack::MockRequest.new(Rack::Lint.new(app))
  { '/' => 200, '/legal/' => 200, '/missing-migration-check' => 404 }.each do |path, status|
    response = request.get(path)
    raise "#{path}: expected #{status}, got #{response.status}" unless response.status == status
  end

  build = File.join(root, 'build')
  raise 'Run bundle exec middleman build first' unless File.file?(File.join(build, 'index.html'))
  checked = 0
  Dir.glob(File.join(build, '**', '*.html')).each do |page|
    File.read(page, encoding: 'UTF-8').scan(/<(?:script|link)\b[^>]*(?:src|href)=["']([^"']+)/i).flatten.each do |url|
      next if url.match?(%r{\A(?:[a-z]+:|//|#)}i)

      path = URI::DEFAULT_PARSER.unescape(URI.parse(url).path)
      asset = if path.start_with?('/')
                File.join(build, path.delete_prefix('/'))
              else
                File.expand_path(path, File.dirname(page))
              end
      raise "Missing asset in #{page}: #{url}" unless File.file?(asset)

      checked += 1
    end
  end
  puts "Rack homepage, legal page, and 404 checks passed; #{checked} local asset links resolved."
end
