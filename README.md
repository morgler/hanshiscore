# Middleman Twitter Bootstrap


## What is it?

Middleman Twitter Bootstrap is my clean project starting point for the [Middleman](http://middlemanapp.com/) static site generator. 

It sets up <kbd>middleman</kbd> for blogging and pulls in the [twitter-bootstrap](http://twitter.github.com/bootstrap/) framework. It also sets up code highlighting using
[highlight.js](http://softwaremaniacs.org/soft/highlight/en/).

And that's all it does.

This project draws heavily from Ayumi Fujii's [middleman-bootstrap](https://github.com/fujimogn/middleman-bootstrap), delivering a simpler setup that is based on 
<kbd>haml</kbd> instead of <kbd>slim</kbd> and without using [Font Awesome.](http://fortawesome.github.com/Font-Awesome/) 
Also see Nathan Henderson's [middleman-bootstrap](https://github.com/nathos/middleman-bootstrap) for a starting point that uses other grid systems and HTML5 Boilerplate.

## Usage

Use native Apple Silicon Ruby 3.4.10, selected by `.ruby-version` and
`.tool-versions`, plus native Node.js for JavaScript processing. Install gems
with `bin/project-env bundle config set --local path vendor/bundle` and `bin/project-env bundle install`.
Run `bin/project-env bundle exec middleman build`, then `bin/project-env bundle exec ruby test/smoke_test.rb`.

The site uses Middleman 4, SassC, Rack 3 and Puma 8. The pinned
`middleman-deploy` prerelease supplies the Middleman 4 extension API; the older
stable release only supports the removed extension API. Deployment settings are
preserved, but deployment must be requested and checked separately.

_Quick setup:_ Assuming you have Ruby setup, download this project, then <kdb>bin/project-env bundle install</kbd> and then <kbd>bundle exec middleman</kbd>. Now visit <kbd>http://localhost:4567</kbd>

Check Middleman's [documentation](https://github.com/middleman/middleman) for details. 

## License

* Twitter Bootstrap: Apache License v2.0
* Middleman: Copyright (c) 2010 Thomas Reynolds. MIT Licensed
* jQuery: MIT/GPL license
* highlight.js: Copyright (c) 2006, Ivan Sagalaev

Similarly, refer to each component for its license.

Everything else:

* [The Unlicense](http://unlicense.org/) (aka: public domain)

`bin/project-env` selects the installed project Ruby directly, even when the shell defaults to macOS system Ruby.
