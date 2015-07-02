/**
 * cbpAnimatedHeader.js v1.0.0
 * http://www.codrops.com
 *
 * Licensed under the MIT license.
 * http://www.opensource.org/licenses/mit-license.php
 * 
 * Copyright 2013, Codrops
 * http://www.codrops.com
 */
var cbpAnimatedHeader=function(){function t(){window.addEventListener("scroll",function(){s||(s=!0,setTimeout(e,250))},!1)}function e(){var t=n();t>=r?classie.add(o,"navbar-shrink"):classie.remove(o,"navbar-shrink"),s=!1}function n(){return window.pageYOffset||i.scrollTop}var i=document.documentElement,o=document.querySelector(".navbar-default"),s=!1,r=300;t()}();