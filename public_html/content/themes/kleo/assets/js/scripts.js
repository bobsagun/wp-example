/*! matchMedia() polyfill - Test a CSS media type/query in JS. Authors & copyright (c) 2012: Scott Jehl, Paul Irish, Nicholas Zakas. Dual MIT/BSD license */
/*! NOTE: If you're already including a window.matchMedia polyfill via Modernizr or otherwise, you don't need this part */
window.matchMedia=window.matchMedia||function(a){"use strict";var c,d=a.documentElement,e=d.firstElementChild||d.firstChild,f=a.createElement("body"),g=a.createElement("div");return g.id="mq-test-1",g.style.cssText="position:absolute;top:-100em",f.style.background="none",f.appendChild(g),function(a){return g.innerHTML='&shy;<style media="'+a+'"> #mq-test-1 { width: 42px; }</style>',d.insertBefore(f,e),c=42===g.offsetWidth,d.removeChild(f),{matches:c,media:a}}}(document);



/*! Respond.js v1.1.0: min/max-width media query polyfill. (c) Scott Jehl. MIT/GPLv2 Lic. j.mp/respondjs  */
(function(a){"use strict";function x(){u(!0)}var b={};if(a.respond=b,b.update=function(){},b.mediaQueriesSupported=a.matchMedia&&a.matchMedia("only all").matches,!b.mediaQueriesSupported){var q,r,t,c=a.document,d=c.documentElement,e=[],f=[],g=[],h={},i=30,j=c.getElementsByTagName("head")[0]||d,k=c.getElementsByTagName("base")[0],l=j.getElementsByTagName("link"),m=[],n=function(){for(var b=0;l.length>b;b++){var c=l[b],d=c.href,e=c.media,f=c.rel&&"stylesheet"===c.rel.toLowerCase();d&&f&&!h[d]&&(c.styleSheet&&c.styleSheet.rawCssText?(p(c.styleSheet.rawCssText,d,e),h[d]=!0):(!/^([a-zA-Z:]*\/\/)/.test(d)&&!k||d.replace(RegExp.$1,"").split("/")[0]===a.location.host)&&m.push({href:d,media:e}))}o()},o=function(){if(m.length){var b=m.shift();v(b.href,function(c){p(c,b.href,b.media),h[b.href]=!0,a.setTimeout(function(){o()},0)})}},p=function(a,b,c){var d=a.match(/@media[^\{]+\{([^\{\}]*\{[^\}\{]*\})+/gi),g=d&&d.length||0;b=b.substring(0,b.lastIndexOf("/"));var h=function(a){return a.replace(/(url\()['"]?([^\/\)'"][^:\)'"]+)['"]?(\))/g,"$1"+b+"$2$3")},i=!g&&c;b.length&&(b+="/"),i&&(g=1);for(var j=0;g>j;j++){var k,l,m,n;i?(k=c,f.push(h(a))):(k=d[j].match(/@media *([^\{]+)\{([\S\s]+?)$/)&&RegExp.$1,f.push(RegExp.$2&&h(RegExp.$2))),m=k.split(","),n=m.length;for(var o=0;n>o;o++)l=m[o],e.push({media:l.split("(")[0].match(/(only\s+)?([a-zA-Z]+)\s?/)&&RegExp.$2||"all",rules:f.length-1,hasquery:l.indexOf("(")>-1,minw:l.match(/\(\s*min\-width\s*:\s*(\s*[0-9\.]+)(px|em)\s*\)/)&&parseFloat(RegExp.$1)+(RegExp.$2||""),maxw:l.match(/\(\s*max\-width\s*:\s*(\s*[0-9\.]+)(px|em)\s*\)/)&&parseFloat(RegExp.$1)+(RegExp.$2||"")})}u()},s=function(){var a,b=c.createElement("div"),e=c.body,f=!1;return b.style.cssText="position:absolute;font-size:1em;width:1em",e||(e=f=c.createElement("body"),e.style.background="none"),e.appendChild(b),d.insertBefore(e,d.firstChild),a=b.offsetWidth,f?d.removeChild(e):e.removeChild(b),a=t=parseFloat(a)},u=function(b){var h="clientWidth",k=d[h],m="CSS1Compat"===c.compatMode&&k||c.body[h]||k,n={},o=l[l.length-1],p=(new Date).getTime();if(b&&q&&i>p-q)return a.clearTimeout(r),r=a.setTimeout(u,i),void 0;q=p;for(var v in e)if(e.hasOwnProperty(v)){var w=e[v],x=w.minw,y=w.maxw,z=null===x,A=null===y,B="em";x&&(x=parseFloat(x)*(x.indexOf(B)>-1?t||s():1)),y&&(y=parseFloat(y)*(y.indexOf(B)>-1?t||s():1)),w.hasquery&&(z&&A||!(z||m>=x)||!(A||y>=m))||(n[w.media]||(n[w.media]=[]),n[w.media].push(f[w.rules]))}for(var C in g)g.hasOwnProperty(C)&&g[C]&&g[C].parentNode===j&&j.removeChild(g[C]);for(var D in n)if(n.hasOwnProperty(D)){var E=c.createElement("style"),F=n[D].join("\n");E.type="text/css",E.media=D,j.insertBefore(E,o.nextSibling),E.styleSheet?E.styleSheet.cssText=F:E.appendChild(c.createTextNode(F)),g.push(E)}},v=function(a,b){var c=w();c&&(c.open("GET",a,!0),c.onreadystatechange=function(){4!==c.readyState||200!==c.status&&304!==c.status||b(c.responseText)},4!==c.readyState&&c.send(null))},w=function(){var b=!1;try{b=new a.XMLHttpRequest}catch(c){b=new a.ActiveXObject("Microsoft.XMLHTTP")}return function(){return b}}();n(),b.update=n,a.addEventListener?a.addEventListener("resize",x,!1):a.attachEvent&&a.attachEvent("onresize",x)}})(this);



/*
 * Project: Twitter Bootstrap Hover Dropdown
 * Author: Cameron Spear
 * Contributors: Mattia Larentis
 * Dependencies: Twitter Bootstrap's Dropdown plugin
 * A simple plugin to enable twitter bootstrap dropdowns to active on hover and provide a nice user experience.
 * No license, do what you want. I'd love credit or a shoutout, though.
 * http://cameronspear.com/blog/twitter-bootstrap-dropdown-on-hover-plugin/
 */
(function(b,a,c){var d=b();b.fn.dropdownHover=function(e){d=d.add(this.parent());return this.each(function(){var k=b(this),j=k.parent(),i={delay:200,instantlyCloseOthers:true},h={delay:b(this).data("delay"),instantlyCloseOthers:b(this).data("close-others")},f=b.extend(true,{},i,e,h),g;j.hover(function(l){if(!j.hasClass("open")&&!k.is(l.target)){return true}if(f.instantlyCloseOthers===true){d.removeClass("open")}a.clearTimeout(g);j.addClass("open")},function(){g=a.setTimeout(function(){j.removeClass("open")},f.delay)});k.hover(function(){if(f.instantlyCloseOthers===true){d.removeClass("open")}a.clearTimeout(g);j.addClass("open")});j.find(".dropdown-submenu").each(function(){var m=b(this);var l;m.hover(function(){a.clearTimeout(l);m.children(".dropdown-menu").show();m.siblings().children(".dropdown-menu").hide()},function(){var n=m.children(".dropdown-menu");l=a.setTimeout(function(){n.hide()},f.delay)})})})};})(jQuery,this);



/* =========================================================
 * bootstrap-tabdrop.js
 * http://www.eyecon.ro/bootstrap-tabdrop
 * =========================================================
 * Copyright 2012 Stefan Petre
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * ========================================================= */
 
!function(c){var b=(function(){var h=[];var d=false;var g;var e=function(i){clearTimeout(g);g=setTimeout(f,100)};var f=function(){for(var k=0,j=h.length;k<j;k++){h[k].apply()}};return{register:function(i){h.push(i);if(d===false){c(window).bind("resize",e);d=true}},unregister:function(l){for(var k=0,j=h.length;k<j;k++){if(h[k]==l){delete h[k];break}}}}}());var a=function(e,d){this.element=c(e);this.dropdown=c('<li class="dropdown hide pull-right tabdrop"><a class="dropdown-toggle" data-toggle="dropdown" href="#">'+d.text+'</a><ul class="dropdown-menu"></ul></li>').prependTo(this.element);if(this.element.parent().is(".tabs-below")){this.dropdown.addClass("dropup")}b.register(c.proxy(this.layout,this));this.layout()};a.prototype={constructor:a,layout:function(){var d=[];this.dropdown.removeClass("hide");this.element.append(this.dropdown.find("li")).find(">li").not(".tabdrop").each(function(){if(this.offsetTop>0){d.push(this)}});if(d.length>0){d=c(d);this.dropdown.find("ul").empty().append(d);if(this.dropdown.find(".active").length==1){this.dropdown.addClass("active")}else{this.dropdown.removeClass("active")}}else{this.dropdown.addClass("hide")}}};c.fn.tabdrop=function(d){return this.each(function(){var g=c(this),f=g.data("tabdrop"),e=typeof d==="object"&&d;if(!f){g.data("tabdrop",(f=new a(this,c.extend({},c.fn.tabdrop.defaults,e))))}if(typeof d=="string"){f[d]()}})};c.fn.tabdrop.defaults={text:"&nbsp;"};c.fn.tabdrop.Constructor=a}(window.jQuery);



/* ======================= Sticky Plugin =============================== */
// // // Sticky Plugin v1.0.0 for jQuery
// =============
// Author: Anthony Garand
// Improvements by German M. Bravo (Kronuz) and Ruud Kamphuis (ruudk)
// Improvements by Leonardo C. Daronco (daronco)
// Created: 2/14/2011
// Date: 2/12/2012
// Website: http://labs.anthonygarand.com/sticky
// Description: Makes an element on the page stick on the screen as you scroll
//       It will only set the 'top' and 'position' of your element, you
//       might need to adjust the width in some cases.
(function(f){var e={topSpacing:0,bottomSpacing:0,className:"is-sticky",wrapperClassName:"sticky-wrapper",center:false,getWidthFrom:""},b=f(window),d=f(document),i=[],a=b.height(),g=function(){var j=b.scrollTop(),q=d.height(),p=q-a,l=(j>p)?p-j:0;for(var m=0;m<i.length;m++){var r=i[m],k=r.stickyWrapper.offset().top,n=k-r.topSpacing-l;if(j<=n){if(r.currentTop!==null){r.stickyElement.css("position","").css("top","");r.stickyElement.parent().removeClass(r.className);r.currentTop=null}}else{var o=q-r.stickyElement.outerHeight()-r.topSpacing-r.bottomSpacing-j-l;if(o<0){o=o+r.topSpacing}else{o=r.topSpacing}if(r.currentTop!=o){r.stickyElement.css("position","fixed").css("top",o);if(typeof r.getWidthFrom!=="undefined"){r.stickyElement.css("width",f(r.getWidthFrom).width())}r.stickyElement.parent().addClass(r.className);r.currentTop=o}}}},h=function(){a=b.height()},c={init:function(j){var k=f.extend(e,j);return this.each(function(){var l=f(this);var m=l.attr("id");var o=f("<div></div>").attr("id",m+"-sticky-wrapper").addClass(k.wrapperClassName);l.wrapAll(o);if(k.center){l.parent().css({width:l.outerWidth(),marginLeft:"auto",marginRight:"auto"})}if(l.css("float")=="right"){l.css({"float":"none"}).parent().css({"float":"right"})}var n=l.parent();n.css("height",l.outerHeight());i.push({topSpacing:k.topSpacing,bottomSpacing:k.bottomSpacing,stickyElement:l,currentTop:null,stickyWrapper:n,className:k.className,getWidthFrom:k.getWidthFrom})})},update:g};if(window.addEventListener){window.addEventListener("scroll",g,false);window.addEventListener("resize",h,false)}else{if(window.attachEvent){window.attachEvent("onscroll",g);window.attachEvent("onresize",h)}}f.fn.sticky=function(j){if(c[j]){return c[j].apply(this,Array.prototype.slice.call(arguments,1))}else{if(typeof j==="object"||!j){return c.init.apply(this,arguments)}else{f.error("Method "+j+" does not exist on jQuery.sticky")}}};f(function(){setTimeout(g,0)})})(jQuery);



/* ======================= fitVids Plugin =============================== */
/*global jQuery */
/*jshint multistr:true browser:true */
/*!
* FitVids 1.0.3
*
* Copyright 2013, Chris Coyier - http://css-tricks.com + Dave Rupert - http://daverupert.com
* Credit to Thierry Koblentz - http://www.alistapart.com/articles/creating-intrinsic-ratios-for-video/
* Released under the WTFPL license - http://sam.zoy.org/wtfpl/
*
* Date: Thu Sept 01 18:00:00 2011 -0500
*/
(function(a){a.fn.fitVids=function(b){var c={customSelector:null};if(!document.getElementById("fit-vids-style")){var f=document.createElement("div"),d=document.getElementsByTagName("base")[0]||document.getElementsByTagName("script")[0],e="&shy;<style>.fluid-width-video-wrapper{width:100%;position:relative;padding:0;}.fluid-width-video-wrapper iframe,.fluid-width-video-wrapper object,.fluid-width-video-wrapper embed {position:absolute;top:0;left:0;width:100%;height:100%;}</style>";f.className="fit-vids-style";f.id="fit-vids-style";f.style.display="none";f.innerHTML=e;d.parentNode.insertBefore(f,d)}if(b){a.extend(c,b)}return this.each(function(){var g=["iframe[src*='player.vimeo.com']","iframe[src*='youtube.com']","iframe[src*='youtube-nocookie.com']","iframe[src*='kickstarter.com'][src*='video.html']","iframe[src*='embed.spotify.com']","object","embed:not(.mejs-shim)"];if(c.customSelector){g.push(c.customSelector)}var h=a(this).find(g.join(","));h=h.not("object object");h.each(function(){var m=a(this);if(this.tagName.toLowerCase()==="embed"&&m.parent("object").length||m.parent(".fluid-width-video-wrapper").length){return}var i=(this.tagName.toLowerCase()==="object"||(m.attr("height")&&!isNaN(parseInt(m.attr("height"),10))))?parseInt(m.attr("height"),10):m.height(),j=!isNaN(parseInt(m.attr("width"),10))?parseInt(m.attr("width"),10):m.width(),k=i/j;if(!m.attr("id")){var l="fitvid"+Math.floor(Math.random()*999999);m.attr("id",l)}m.wrap('<div class="fluid-width-video-wrapper"></div>').parent(".fluid-width-video-wrapper").css("padding-top",(k*100)+"%");m.removeAttr("height").removeAttr("width")})})}})(window.jQuery);



/* ======================= jQuery Easing Plugin =============================== */
/* jQuery Easing Plugin, v1.3 - http://gsgd.co.uk/sandbox/jquery/easing/ */
jQuery.easing.jswing=jQuery.easing.swing;jQuery.extend(jQuery.easing,{def:"easeOutQuad",swing:function(e,f,a,h,g){return jQuery.easing[jQuery.easing.def](e,f,a,h,g)},easeInQuad:function(e,f,a,h,g){return h*(f/=g)*f+a},easeOutQuad:function(e,f,a,h,g){return -h*(f/=g)*(f-2)+a},easeInOutQuad:function(e,f,a,h,g){if((f/=g/2)<1){return h/2*f*f+a}return -h/2*((--f)*(f-2)-1)+a},easeInCubic:function(e,f,a,h,g){return h*(f/=g)*f*f+a},easeOutCubic:function(e,f,a,h,g){return h*((f=f/g-1)*f*f+1)+a},easeInOutCubic:function(e,f,a,h,g){if((f/=g/2)<1){return h/2*f*f*f+a}return h/2*((f-=2)*f*f+2)+a},easeInQuart:function(e,f,a,h,g){return h*(f/=g)*f*f*f+a},easeOutQuart:function(e,f,a,h,g){return -h*((f=f/g-1)*f*f*f-1)+a},easeInOutQuart:function(e,f,a,h,g){if((f/=g/2)<1){return h/2*f*f*f*f+a}return -h/2*((f-=2)*f*f*f-2)+a},easeInQuint:function(e,f,a,h,g){return h*(f/=g)*f*f*f*f+a},easeOutQuint:function(e,f,a,h,g){return h*((f=f/g-1)*f*f*f*f+1)+a},easeInOutQuint:function(e,f,a,h,g){if((f/=g/2)<1){return h/2*f*f*f*f*f+a}return h/2*((f-=2)*f*f*f*f+2)+a},easeInSine:function(e,f,a,h,g){return -h*Math.cos(f/g*(Math.PI/2))+h+a},easeOutSine:function(e,f,a,h,g){return h*Math.sin(f/g*(Math.PI/2))+a},easeInOutSine:function(e,f,a,h,g){return -h/2*(Math.cos(Math.PI*f/g)-1)+a},easeInExpo:function(e,f,a,h,g){return(f==0)?a:h*Math.pow(2,10*(f/g-1))+a},easeOutExpo:function(e,f,a,h,g){return(f==g)?a+h:h*(-Math.pow(2,-10*f/g)+1)+a},easeInOutExpo:function(e,f,a,h,g){if(f==0){return a}if(f==g){return a+h}if((f/=g/2)<1){return h/2*Math.pow(2,10*(f-1))+a}return h/2*(-Math.pow(2,-10*--f)+2)+a},easeInCirc:function(e,f,a,h,g){return -h*(Math.sqrt(1-(f/=g)*f)-1)+a},easeOutCirc:function(e,f,a,h,g){return h*Math.sqrt(1-(f=f/g-1)*f)+a},easeInOutCirc:function(e,f,a,h,g){if((f/=g/2)<1){return -h/2*(Math.sqrt(1-f*f)-1)+a}return h/2*(Math.sqrt(1-(f-=2)*f)+1)+a},easeInElastic:function(f,h,e,l,k){var i=1.70158;var j=0;var g=l;if(h==0){return e}if((h/=k)==1){return e+l}if(!j){j=k*0.3}if(g<Math.abs(l)){g=l;var i=j/4}else{var i=j/(2*Math.PI)*Math.asin(l/g)}return -(g*Math.pow(2,10*(h-=1))*Math.sin((h*k-i)*(2*Math.PI)/j))+e},easeOutElastic:function(f,h,e,l,k){var i=1.70158;var j=0;var g=l;if(h==0){return e}if((h/=k)==1){return e+l}if(!j){j=k*0.3}if(g<Math.abs(l)){g=l;var i=j/4}else{var i=j/(2*Math.PI)*Math.asin(l/g)}return g*Math.pow(2,-10*h)*Math.sin((h*k-i)*(2*Math.PI)/j)+l+e},easeInOutElastic:function(f,h,e,l,k){var i=1.70158;var j=0;var g=l;if(h==0){return e}if((h/=k/2)==2){return e+l}if(!j){j=k*(0.3*1.5)}if(g<Math.abs(l)){g=l;var i=j/4}else{var i=j/(2*Math.PI)*Math.asin(l/g)}if(h<1){return -0.5*(g*Math.pow(2,10*(h-=1))*Math.sin((h*k-i)*(2*Math.PI)/j))+e}return g*Math.pow(2,-10*(h-=1))*Math.sin((h*k-i)*(2*Math.PI)/j)*0.5+l+e},easeInBack:function(e,f,a,i,h,g){if(g==undefined){g=1.70158}return i*(f/=h)*f*((g+1)*f-g)+a},easeOutBack:function(e,f,a,i,h,g){if(g==undefined){g=1.70158}return i*((f=f/h-1)*f*((g+1)*f+g)+1)+a},easeInOutBack:function(e,f,a,i,h,g){if(g==undefined){g=1.70158}if((f/=h/2)<1){return i/2*(f*f*(((g*=(1.525))+1)*f-g))+a}return i/2*((f-=2)*f*(((g*=(1.525))+1)*f+g)+2)+a},easeInBounce:function(e,f,a,h,g){return h-jQuery.easing.easeOutBounce(e,g-f,0,h,g)+a},easeOutBounce:function(e,f,a,h,g){if((f/=g)<(1/2.75)){return h*(7.5625*f*f)+a}else{if(f<(2/2.75)){return h*(7.5625*(f-=(1.5/2.75))*f+0.75)+a}else{if(f<(2.5/2.75)){return h*(7.5625*(f-=(2.25/2.75))*f+0.9375)+a}else{return h*(7.5625*(f-=(2.625/2.75))*f+0.984375)+a}}}},easeInOutBounce:function(e,f,a,h,g){if(f<g/2){return jQuery.easing.easeInBounce(e,f*2,0,h,g)*0.5+a}return jQuery.easing.easeOutBounce(e,f*2-g,0,h,g)*0.5+h*0.5+a}});



/* ======================= debouncedresize Plugin =============================== */
/*
* debouncedresize: special jQuery event that happens once after a window resize
*
* latest version and complete README available on Github:
* https://github.com/louisremi/jquery-smartresize/blob/master/jquery.debouncedresize.js
*
* Copyright 2011 @louis_remi
* Licensed under the MIT license.
*/
(function(d){var b=d.event,a,c;a=b.special.debouncedresize={setup:function(){d(this).on("resize",a.handler)},teardown:function(){d(this).off("resize",a.handler)},handler:function(i,e){var h=this,g=arguments,f=function(){i.type="debouncedresize";b.dispatch.apply(h,g)};if(c){clearTimeout(c)}e?f():c=setTimeout(f,a.threshold)},threshold:150}})(jQuery);



/* ======================= imagesLoaded Plugin =============================== */
/*!
 * imagesLoaded PACKAGED v3.1.8
 * JavaScript is all like "You images are done yet or what?"
 * MIT License
 */

(function(){function e(){}function t(e,t){for(var n=e.length;n--;)if(e[n].listener===t)return n;return-1}function n(e){return function(){return this[e].apply(this,arguments)}}var i=e.prototype,r=this,o=r.EventEmitter;i.getListeners=function(e){var t,n,i=this._getEvents();if("object"==typeof e){t={};for(n in i)i.hasOwnProperty(n)&&e.test(n)&&(t[n]=i[n])}else t=i[e]||(i[e]=[]);return t},i.flattenListeners=function(e){var t,n=[];for(t=0;e.length>t;t+=1)n.push(e[t].listener);return n},i.getListenersAsObject=function(e){var t,n=this.getListeners(e);return n instanceof Array&&(t={},t[e]=n),t||n},i.addListener=function(e,n){var i,r=this.getListenersAsObject(e),o="object"==typeof n;for(i in r)r.hasOwnProperty(i)&&-1===t(r[i],n)&&r[i].push(o?n:{listener:n,once:!1});return this},i.on=n("addListener"),i.addOnceListener=function(e,t){return this.addListener(e,{listener:t,once:!0})},i.once=n("addOnceListener"),i.defineEvent=function(e){return this.getListeners(e),this},i.defineEvents=function(e){for(var t=0;e.length>t;t+=1)this.defineEvent(e[t]);return this},i.removeListener=function(e,n){var i,r,o=this.getListenersAsObject(e);for(r in o)o.hasOwnProperty(r)&&(i=t(o[r],n),-1!==i&&o[r].splice(i,1));return this},i.off=n("removeListener"),i.addListeners=function(e,t){return this.manipulateListeners(!1,e,t)},i.removeListeners=function(e,t){return this.manipulateListeners(!0,e,t)},i.manipulateListeners=function(e,t,n){var i,r,o=e?this.removeListener:this.addListener,s=e?this.removeListeners:this.addListeners;if("object"!=typeof t||t instanceof RegExp)for(i=n.length;i--;)o.call(this,t,n[i]);else for(i in t)t.hasOwnProperty(i)&&(r=t[i])&&("function"==typeof r?o.call(this,i,r):s.call(this,i,r));return this},i.removeEvent=function(e){var t,n=typeof e,i=this._getEvents();if("string"===n)delete i[e];else if("object"===n)for(t in i)i.hasOwnProperty(t)&&e.test(t)&&delete i[t];else delete this._events;return this},i.removeAllListeners=n("removeEvent"),i.emitEvent=function(e,t){var n,i,r,o,s=this.getListenersAsObject(e);for(r in s)if(s.hasOwnProperty(r))for(i=s[r].length;i--;)n=s[r][i],n.once===!0&&this.removeListener(e,n.listener),o=n.listener.apply(this,t||[]),o===this._getOnceReturnValue()&&this.removeListener(e,n.listener);return this},i.trigger=n("emitEvent"),i.emit=function(e){var t=Array.prototype.slice.call(arguments,1);return this.emitEvent(e,t)},i.setOnceReturnValue=function(e){return this._onceReturnValue=e,this},i._getOnceReturnValue=function(){return this.hasOwnProperty("_onceReturnValue")?this._onceReturnValue:!0},i._getEvents=function(){return this._events||(this._events={})},e.noConflict=function(){return r.EventEmitter=o,e},"function"==typeof define&&define.amd?define("eventEmitter/EventEmitter",[],function(){return e}):"object"==typeof module&&module.exports?module.exports=e:this.EventEmitter=e}).call(this),function(e){function t(t){var n=e.event;return n.target=n.target||n.srcElement||t,n}var n=document.documentElement,i=function(){};n.addEventListener?i=function(e,t,n){e.addEventListener(t,n,!1)}:n.attachEvent&&(i=function(e,n,i){e[n+i]=i.handleEvent?function(){var n=t(e);i.handleEvent.call(i,n)}:function(){var n=t(e);i.call(e,n)},e.attachEvent("on"+n,e[n+i])});var r=function(){};n.removeEventListener?r=function(e,t,n){e.removeEventListener(t,n,!1)}:n.detachEvent&&(r=function(e,t,n){e.detachEvent("on"+t,e[t+n]);try{delete e[t+n]}catch(i){e[t+n]=void 0}});var o={bind:i,unbind:r};"function"==typeof define&&define.amd?define("eventie/eventie",o):e.eventie=o}(this),function(e,t){"function"==typeof define&&define.amd?define(["eventEmitter/EventEmitter","eventie/eventie"],function(n,i){return t(e,n,i)}):"object"==typeof exports?module.exports=t(e,require("wolfy87-eventemitter"),require("eventie")):e.imagesLoaded=t(e,e.EventEmitter,e.eventie)}(window,function(e,t,n){function i(e,t){for(var n in t)e[n]=t[n];return e}function r(e){return"[object Array]"===d.call(e)}function o(e){var t=[];if(r(e))t=e;else if("number"==typeof e.length)for(var n=0,i=e.length;i>n;n++)t.push(e[n]);else t.push(e);return t}function s(e,t,n){if(!(this instanceof s))return new s(e,t);"string"==typeof e&&(e=document.querySelectorAll(e)),this.elements=o(e),this.options=i({},this.options),"function"==typeof t?n=t:i(this.options,t),n&&this.on("always",n),this.getImages(),a&&(this.jqDeferred=new a.Deferred);var r=this;setTimeout(function(){r.check()})}function f(e){this.img=e}function c(e){this.src=e,v[e]=this}var a=e.jQuery,u=e.console,h=u!==void 0,d=Object.prototype.toString;s.prototype=new t,s.prototype.options={},s.prototype.getImages=function(){this.images=[];for(var e=0,t=this.elements.length;t>e;e++){var n=this.elements[e];"IMG"===n.nodeName&&this.addImage(n);var i=n.nodeType;if(i&&(1===i||9===i||11===i))for(var r=n.querySelectorAll("img"),o=0,s=r.length;s>o;o++){var f=r[o];this.addImage(f)}}},s.prototype.addImage=function(e){var t=new f(e);this.images.push(t)},s.prototype.check=function(){function e(e,r){return t.options.debug&&h&&u.log("confirm",e,r),t.progress(e),n++,n===i&&t.complete(),!0}var t=this,n=0,i=this.images.length;if(this.hasAnyBroken=!1,!i)return this.complete(),void 0;for(var r=0;i>r;r++){var o=this.images[r];o.on("confirm",e),o.check()}},s.prototype.progress=function(e){this.hasAnyBroken=this.hasAnyBroken||!e.isLoaded;var t=this;setTimeout(function(){t.emit("progress",t,e),t.jqDeferred&&t.jqDeferred.notify&&t.jqDeferred.notify(t,e)})},s.prototype.complete=function(){var e=this.hasAnyBroken?"fail":"done";this.isComplete=!0;var t=this;setTimeout(function(){if(t.emit(e,t),t.emit("always",t),t.jqDeferred){var n=t.hasAnyBroken?"reject":"resolve";t.jqDeferred[n](t)}})},a&&(a.fn.imagesLoaded=function(e,t){var n=new s(this,e,t);return n.jqDeferred.promise(a(this))}),f.prototype=new t,f.prototype.check=function(){var e=v[this.img.src]||new c(this.img.src);if(e.isConfirmed)return this.confirm(e.isLoaded,"cached was confirmed"),void 0;if(this.img.complete&&void 0!==this.img.naturalWidth)return this.confirm(0!==this.img.naturalWidth,"naturalWidth"),void 0;var t=this;e.on("confirm",function(e,n){return t.confirm(e.isLoaded,n),!0}),e.check()},f.prototype.confirm=function(e,t){this.isLoaded=e,this.emit("confirm",this,t)};var v={};return c.prototype=new t,c.prototype.check=function(){if(!this.isChecked){var e=new Image;n.bind(e,"load",this),n.bind(e,"error",this),e.src=this.src,this.isChecked=!0}},c.prototype.handleEvent=function(e){var t="on"+e.type;this[t]&&this[t](e)},c.prototype.onload=function(e){this.confirm(!0,"onload"),this.unbindProxyEvents(e)},c.prototype.onerror=function(e){this.confirm(!1,"onerror"),this.unbindProxyEvents(e)},c.prototype.confirm=function(e,t){this.isConfirmed=!0,this.isLoaded=e,this.emit("confirm",this,t)},c.prototype.unbindProxyEvents=function(e){n.unbind(e.target,"load",this),n.unbind(e.target,"error",this)},s});


/* ======================= imgpreload Plugin =============================== */
/**
 * jquery.imgpreload 1.6.2 <https://github.com/farinspace/jquery.imgpreload>
 * Copyright 2009-2014 Dimas Begunoff <http://farinspace.com>
 * License MIT <http://opensource.org/licenses/MIT>
 */
"undefined"!=typeof jQuery&&!function(a){"use strict";a.imgpreload=function(b,c){c=a.extend({},a.fn.imgpreload.defaults,c instanceof Function?{all:c}:c),"string"==typeof b&&(b=[b]);var d=[];a.each(b,function(e,f){var g=new Image,h=f,i=g;"string"!=typeof f&&(h=a(f).attr("src")||a(f).css("background-image").replace(/^url\((?:"|')?(.*)(?:'|")?\)$/gm,"$1"),i=f),a(g).bind("load error",function(e){d.push(i),a.data(i,"loaded","error"==e.type?!1:!0),c.each instanceof Function&&c.each.call(i,d.slice(0)),d.length>=b.length&&c.all instanceof Function&&c.all.call(d),a(this).unbind("load error")}),g.src=h})},a.fn.imgpreload=function(b){return a.imgpreload(this,b),this},a.fn.imgpreload.defaults={each:null,all:null}}(jQuery);


/*!
 * Variations Plugin
 */(function(e,t,n,r){e.fn.wc_variation_form=function(){e.fn.wc_variation_form.find_matching_variations=function(t,n){var r=[];for(var i=0;i<t.length;i++){var s=t[i],o=s.variation_id;e.fn.wc_variation_form.variations_match(s.attributes,n)&&r.push(s)}return r};e.fn.wc_variation_form.variations_match=function(e,t){var n=!0;for(attr_name in e){var i=e[attr_name],s=t[attr_name];i!==r&&s!==r&&i.length!=0&&s.length!=0&&i!=s&&(n=!1)}return n};this.unbind("check_variations update_variation_values found_variation");this.find(".reset_variations").unbind("click");this.find(".variations select").unbind("change focusin");$form=this.on("click",".reset_variations",function(t){e(this).closest(".variations_form").find(".variations select").val("").change();var n=e(this).closest(".product").find(".sku"),r=e(this).closest(".product").find(".product_weight"),i=e(this).closest(".product").find(".product_dimensions");n.attr("data-o_sku")&&n.text(n.attr("data-o_sku"));r.attr("data-o_weight")&&r.text(r.attr("data-o_weight"));i.attr("data-o_dimensions")&&i.text(i.attr("data-o_dimensions"));return!1}).on("change",".variations select",function(t){$variation_form=e(this).closest(".variations_form");$variation_form.find("input[name=variation_id]").val("").change();$variation_form.trigger("woocommerce_variation_select_change").trigger("check_variations",["",!1]);e(this).blur();e().uniform&&e.isFunction(e.uniform.update)&&e.uniform.update()}).on("focusin touchstart",".variations select",function(t){$variation_form=e(this).closest(".variations_form");$variation_form.trigger("woocommerce_variation_select_focusin").trigger("check_variations",[e(this).attr("name"),!0])}).on("check_variations",function(n,r,i){var s=!0,o=!1,u=!1,a={},f=e(this),l=f.find(".reset_variations");f.find(".variations select").each(function(){e(this).val().length==0?s=!1:o=!0;if(r&&e(this).attr("name")==r){s=!1;a[e(this).attr("name")]=""}else{value=e(this).val();a[e(this).attr("name")]=value}});var c=parseInt(f.data("product_id")),h=f.data("product_variations");h||(h=t.product_variations[c]);h||(h=t.product_variations);h||(h=t["product_variations_"+c]);var p=e.fn.wc_variation_form.find_matching_variations(h,a);if(s){var d=p.shift();if(d){f.find("input[name=variation_id]").val(d.variation_id).change();f.trigger("found_variation",[d])}else{f.find(".variations select").val("");i||f.trigger("reset_image");alert(woocommerce_params.i18n_no_matching_variations_text)}}else{f.trigger("update_variation_values",[p]);i||f.trigger("reset_image");r||f.find(".single_variation_wrap").slideUp("200")}o?l.css("visibility")=="hidden"&&l.css("visibility","visible").hide().fadeIn():l.css("visibility","hidden")}).on("reset_image",function(t){var n=e(this).closest(".product"),i=n.find("div.images img:eq(0)"),s=n.find("div.images a.zoom:eq(0)"),o=i.attr("data-o_src"),u=i.attr("data-o_title"),a=i.attr("data-o_alt"),f=s.attr("data-o_href");o!=r&&i.attr("src",o);f!=r&&s.attr("href",f);if(u!=r){i.attr("title",u);s.attr("title",u)}a!=r&&i.attr("alt",a)}).on("update_variation_values",function(t,n){$variation_form=e(this).closest(".variations_form");$variation_form.find(".variations select").each(function(t,r){current_attr_select=e(r);current_attr_select.data("attribute_options")||current_attr_select.data("attribute_options",current_attr_select.find("option:gt(0)").get());current_attr_select.find("option:gt(0)").remove();current_attr_select.append(current_attr_select.data("attribute_options"));current_attr_select.find("option:gt(0)").removeClass("active");var i=current_attr_select.attr("name");for(num in n)if(typeof n[num]!="undefined"){var s=n[num].attributes;for(attr_name in s){var o=s[attr_name];if(attr_name==i)if(o){o=e("<div/>").html(o).text();o=o.replace(/'/g,"\\'");o=o.replace(/"/g,'\\"');current_attr_select.find('option[value="'+o+'"]').addClass("active")}else current_attr_select.find("option:gt(0)").addClass("active")}}current_attr_select.find("option:gt(0):not(.active)").remove()});$variation_form.trigger("woocommerce_update_variation_values")}).on("found_variation",function(t,n){var i=e(this),s=e(this).closest(".product"),o=s.find("div.images img:eq(0)"),u=s.find("div.images a.zoom:eq(0)"),a=o.attr("data-o_src"),f=o.attr("data-o_title"),l=o.attr("data-o_alt"),c=u.attr("data-o_href"),h=n.image_src,p=n.image_link,d=n.image_title,v=n.image_alt;i.find(".variations_button").show();i.find(".single_variation").html(n.price_html+n.availability_html);if(a==r){a=o.attr("src")?o.attr("src"):"";o.attr("data-o_src",a)}if(c==r){c=u.attr("href")?u.attr("href"):"";u.attr("data-o_href",c)}if(f==r){f=o.attr("title")?o.attr("title"):"";o.attr("data-o_title",f)}if(l==r){l=o.attr("alt")?o.attr("alt"):"";o.attr("data-o_alt",l)}if(h&&h.length>1){o.attr("src",h).attr("alt",v).attr("title",d);u.attr("href",p).attr("title",d)}else{o.attr("src",a).attr("alt",l).attr("title",f);u.attr("href",c).attr("title",f)}var m=i.find(".single_variation_wrap"),g=s.find(".product_meta").find(".sku"),y=s.find(".product_weight"),b=s.find(".product_dimensions");g.attr("data-o_sku")||g.attr("data-o_sku",g.text());y.attr("data-o_weight")||y.attr("data-o_weight",y.text());b.attr("data-o_dimensions")||b.attr("data-o_dimensions",b.text());n.sku?g.text(n.sku):g.text(g.attr("data-o_sku"));n.weight?y.text(n.weight):y.text(y.attr("data-o_weight"));n.dimensions?b.text(n.dimensions):b.text(b.attr("data-o_dimensions"));m.find(".quantity").show();!n.is_in_stock&&!n.backorders_allowed&&i.find(".variations_button").hide();n.min_qty?m.find("input[name=quantity]").attr("min",n.min_qty).val(n.min_qty):m.find("input[name=quantity]").removeAttr("min");n.max_qty?m.find("input[name=quantity]").attr("max",n.max_qty):m.find("input[name=quantity]").removeAttr("max");if(n.is_sold_individually=="yes"){m.find("input[name=quantity]").val("1");m.find(".quantity").hide()}m.slideDown("200").trigger("show_variation",[n])});$form.trigger("wc_variation_form");return $form};e(function(){e(".variations_form").wc_variation_form();e(".variations_form .variations select").change()})})(jQuery,window,document);
