(function(){const t=document.createElement("link").relList;if(t&&t.supports&&t.supports("modulepreload"))return;for(const r of document.querySelectorAll('link[rel="modulepreload"]'))a(r);new MutationObserver(r=>{for(const i of r)if(i.type==="childList")for(const s of i.addedNodes)s.tagName==="LINK"&&s.rel==="modulepreload"&&a(s)}).observe(document,{childList:!0,subtree:!0});function n(r){const i={};return r.integrity&&(i.integrity=r.integrity),r.referrerPolicy&&(i.referrerPolicy=r.referrerPolicy),r.crossOrigin==="use-credentials"?i.credentials="include":r.crossOrigin==="anonymous"?i.credentials="omit":i.credentials="same-origin",i}function a(r){if(r.ep)return;r.ep=!0;const i=n(r);fetch(r.href,i)}})();function kn(e,t){var n=Object.keys(e);if(Object.getOwnPropertySymbols){var a=Object.getOwnPropertySymbols(e);t&&(a=a.filter(function(r){return Object.getOwnPropertyDescriptor(e,r).enumerable})),n.push.apply(n,a)}return n}function m(e){for(var t=1;t<arguments.length;t++){var n=arguments[t]!=null?arguments[t]:{};t%2?kn(Object(n),!0).forEach(function(a){O(e,a,n[a])}):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(n)):kn(Object(n)).forEach(function(a){Object.defineProperty(e,a,Object.getOwnPropertyDescriptor(n,a))})}return e}function dt(e){"@babel/helpers - typeof";return dt=typeof Symbol=="function"&&typeof Symbol.iterator=="symbol"?function(t){return typeof t}:function(t){return t&&typeof Symbol=="function"&&t.constructor===Symbol&&t!==Symbol.prototype?"symbol":typeof t},dt(e)}function sr(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}function xn(e,t){for(var n=0;n<t.length;n++){var a=t[n];a.enumerable=a.enumerable||!1,a.configurable=!0,"value"in a&&(a.writable=!0),Object.defineProperty(e,a.key,a)}}function or(e,t,n){return t&&xn(e.prototype,t),n&&xn(e,n),Object.defineProperty(e,"prototype",{writable:!1}),e}function O(e,t,n){return t in e?Object.defineProperty(e,t,{value:n,enumerable:!0,configurable:!0,writable:!0}):e[t]=n,e}function en(e,t){return cr(e)||ur(e,t)||oa(e,t)||mr()}function Ye(e){return lr(e)||fr(e)||oa(e)||dr()}function lr(e){if(Array.isArray(e))return Tt(e)}function cr(e){if(Array.isArray(e))return e}function fr(e){if(typeof Symbol<"u"&&e[Symbol.iterator]!=null||e["@@iterator"]!=null)return Array.from(e)}function ur(e,t){var n=e==null?null:typeof Symbol<"u"&&e[Symbol.iterator]||e["@@iterator"];if(n!=null){var a=[],r=!0,i=!1,s,o;try{for(n=n.call(e);!(r=(s=n.next()).done)&&(a.push(s.value),!(t&&a.length===t));r=!0);}catch(l){i=!0,o=l}finally{try{!r&&n.return!=null&&n.return()}finally{if(i)throw o}}return a}}function oa(e,t){if(e){if(typeof e=="string")return Tt(e,t);var n=Object.prototype.toString.call(e).slice(8,-1);if(n==="Object"&&e.constructor&&(n=e.constructor.name),n==="Map"||n==="Set")return Array.from(e);if(n==="Arguments"||/^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(n))return Tt(e,t)}}function Tt(e,t){(t==null||t>e.length)&&(t=e.length);for(var n=0,a=new Array(t);n<t;n++)a[n]=e[n];return a}function dr(){throw new TypeError(`Invalid attempt to spread non-iterable instance.
In order to be iterable, non-array objects must have a [Symbol.iterator]() method.`)}function mr(){throw new TypeError(`Invalid attempt to destructure non-iterable instance.
In order to be iterable, non-array objects must have a [Symbol.iterator]() method.`)}var Sn=function(){},tn={},la={},ca=null,fa={mark:Sn,measure:Sn};try{typeof window<"u"&&(tn=window),typeof document<"u"&&(la=document),typeof MutationObserver<"u"&&(ca=MutationObserver),typeof performance<"u"&&(fa=performance)}catch{}var hr=tn.navigator||{},Cn=hr.userAgent,An=Cn===void 0?"":Cn,ae=tn,A=la,En=ca,Be=fa;ae.document;var X=!!A.documentElement&&!!A.head&&typeof A.addEventListener=="function"&&typeof A.createElement=="function",ua=~An.indexOf("MSIE")||~An.indexOf("Trident/"),Ke,Xe,qe,Je,Qe,V="___FONT_AWESOME___",Lt=16,da="fa",ma="svg-inline--fa",de="data-fa-i2svg",zt="data-fa-pseudo-element",vr="data-fa-pseudo-element-pending",nn="data-prefix",an="data-icon",In="fontawesome-i2svg",pr="async",gr=["HTML","HEAD","STYLE","SCRIPT"],ha=function(){try{return!0}catch{return!1}}(),C="classic",P="sharp",rn=[C,P];function $e(e){return new Proxy(e,{get:function(n,a){return a in n?n[a]:n[C]}})}var Le=$e((Ke={},O(Ke,C,{fa:"solid",fas:"solid","fa-solid":"solid",far:"regular","fa-regular":"regular",fal:"light","fa-light":"light",fat:"thin","fa-thin":"thin",fad:"duotone","fa-duotone":"duotone",fab:"brands","fa-brands":"brands",fak:"kit",fakd:"kit","fa-kit":"kit","fa-kit-duotone":"kit"}),O(Ke,P,{fa:"solid",fass:"solid","fa-solid":"solid",fasr:"regular","fa-regular":"regular",fasl:"light","fa-light":"light",fast:"thin","fa-thin":"thin"}),Ke)),ze=$e((Xe={},O(Xe,C,{solid:"fas",regular:"far",light:"fal",thin:"fat",duotone:"fad",brands:"fab",kit:"fak"}),O(Xe,P,{solid:"fass",regular:"fasr",light:"fasl",thin:"fast"}),Xe)),Fe=$e((qe={},O(qe,C,{fab:"fa-brands",fad:"fa-duotone",fak:"fa-kit",fal:"fa-light",far:"fa-regular",fas:"fa-solid",fat:"fa-thin"}),O(qe,P,{fass:"fa-solid",fasr:"fa-regular",fasl:"fa-light",fast:"fa-thin"}),qe)),br=$e((Je={},O(Je,C,{"fa-brands":"fab","fa-duotone":"fad","fa-kit":"fak","fa-light":"fal","fa-regular":"far","fa-solid":"fas","fa-thin":"fat"}),O(Je,P,{"fa-solid":"fass","fa-regular":"fasr","fa-light":"fasl","fa-thin":"fast"}),Je)),yr=/fa(s|r|l|t|d|b|k|ss|sr|sl|st)?[\-\ ]/,va="fa-layers-text",wr=/Font ?Awesome ?([56 ]*)(Solid|Regular|Light|Thin|Duotone|Brands|Free|Pro|Sharp|Kit)?.*/i,_r=$e((Qe={},O(Qe,C,{900:"fas",400:"far",normal:"far",300:"fal",100:"fat"}),O(Qe,P,{900:"fass",400:"fasr",300:"fasl",100:"fast"}),Qe)),pa=[1,2,3,4,5,6,7,8,9,10],kr=pa.concat([11,12,13,14,15,16,17,18,19,20]),xr=["class","data-prefix","data-icon","data-fa-transform","data-fa-mask"],ce={GROUP:"duotone-group",SWAP_OPACITY:"swap-opacity",PRIMARY:"primary",SECONDARY:"secondary"},je=new Set;Object.keys(ze[C]).map(je.add.bind(je));Object.keys(ze[P]).map(je.add.bind(je));var Sr=[].concat(rn,Ye(je),["2xs","xs","sm","lg","xl","2xl","beat","border","fade","beat-fade","bounce","flip-both","flip-horizontal","flip-vertical","flip","fw","inverse","layers-counter","layers-text","layers","li","pull-left","pull-right","pulse","rotate-180","rotate-270","rotate-90","rotate-by","shake","spin-pulse","spin-reverse","spin","stack-1x","stack-2x","stack","ul",ce.GROUP,ce.SWAP_OPACITY,ce.PRIMARY,ce.SECONDARY]).concat(pa.map(function(e){return"".concat(e,"x")})).concat(kr.map(function(e){return"w-".concat(e)})),Me=ae.FontAwesomeConfig||{};function Cr(e){var t=A.querySelector("script["+e+"]");if(t)return t.getAttribute(e)}function Ar(e){return e===""?!0:e==="false"?!1:e==="true"?!0:e}if(A&&typeof A.querySelector=="function"){var Er=[["data-family-prefix","familyPrefix"],["data-css-prefix","cssPrefix"],["data-family-default","familyDefault"],["data-style-default","styleDefault"],["data-replacement-class","replacementClass"],["data-auto-replace-svg","autoReplaceSvg"],["data-auto-add-css","autoAddCss"],["data-auto-a11y","autoA11y"],["data-search-pseudo-elements","searchPseudoElements"],["data-observe-mutations","observeMutations"],["data-mutate-approach","mutateApproach"],["data-keep-original-source","keepOriginalSource"],["data-measure-performance","measurePerformance"],["data-show-missing-icons","showMissingIcons"]];Er.forEach(function(e){var t=en(e,2),n=t[0],a=t[1],r=Ar(Cr(n));r!=null&&(Me[a]=r)})}var ga={styleDefault:"solid",familyDefault:"classic",cssPrefix:da,replacementClass:ma,autoReplaceSvg:!0,autoAddCss:!0,autoA11y:!0,searchPseudoElements:!1,observeMutations:!0,mutateApproach:"async",keepOriginalSource:!0,measurePerformance:!1,showMissingIcons:!0};Me.familyPrefix&&(Me.cssPrefix=Me.familyPrefix);var xe=m(m({},ga),Me);xe.autoReplaceSvg||(xe.observeMutations=!1);var v={};Object.keys(ga).forEach(function(e){Object.defineProperty(v,e,{enumerable:!0,set:function(n){xe[e]=n,Re.forEach(function(a){return a(v)})},get:function(){return xe[e]}})});Object.defineProperty(v,"familyPrefix",{enumerable:!0,set:function(t){xe.cssPrefix=t,Re.forEach(function(n){return n(v)})},get:function(){return xe.cssPrefix}});ae.FontAwesomeConfig=v;var Re=[];function Ir(e){return Re.push(e),function(){Re.splice(Re.indexOf(e),1)}}var q=Lt,Y={size:16,x:0,y:0,rotate:0,flipX:!1,flipY:!1};function Pr(e){if(!(!e||!X)){var t=A.createElement("style");t.setAttribute("type","text/css"),t.innerHTML=e;for(var n=A.head.childNodes,a=null,r=n.length-1;r>-1;r--){var i=n[r],s=(i.tagName||"").toUpperCase();["STYLE","LINK"].indexOf(s)>-1&&(a=i)}return A.head.insertBefore(t,a),e}}var Or="0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";function De(){for(var e=12,t="";e-- >0;)t+=Or[Math.random()*62|0];return t}function Se(e){for(var t=[],n=(e||[]).length>>>0;n--;)t[n]=e[n];return t}function sn(e){return e.classList?Se(e.classList):(e.getAttribute("class")||"").split(" ").filter(function(t){return t})}function ba(e){return"".concat(e).replace(/&/g,"&amp;").replace(/"/g,"&quot;").replace(/'/g,"&#39;").replace(/</g,"&lt;").replace(/>/g,"&gt;")}function Mr(e){return Object.keys(e||{}).reduce(function(t,n){return t+"".concat(n,'="').concat(ba(e[n]),'" ')},"").trim()}function wt(e){return Object.keys(e||{}).reduce(function(t,n){return t+"".concat(n,": ").concat(e[n].trim(),";")},"")}function on(e){return e.size!==Y.size||e.x!==Y.x||e.y!==Y.y||e.rotate!==Y.rotate||e.flipX||e.flipY}function Rr(e){var t=e.transform,n=e.containerWidth,a=e.iconWidth,r={transform:"translate(".concat(n/2," 256)")},i="translate(".concat(t.x*32,", ").concat(t.y*32,") "),s="scale(".concat(t.size/16*(t.flipX?-1:1),", ").concat(t.size/16*(t.flipY?-1:1),") "),o="rotate(".concat(t.rotate," 0 0)"),l={transform:"".concat(i," ").concat(s," ").concat(o)},c={transform:"translate(".concat(a/2*-1," -256)")};return{outer:r,inner:l,path:c}}function Nr(e){var t=e.transform,n=e.width,a=n===void 0?Lt:n,r=e.height,i=r===void 0?Lt:r,s=e.startCentered,o=s===void 0?!1:s,l="";return o&&ua?l+="translate(".concat(t.x/q-a/2,"em, ").concat(t.y/q-i/2,"em) "):o?l+="translate(calc(-50% + ".concat(t.x/q,"em), calc(-50% + ").concat(t.y/q,"em)) "):l+="translate(".concat(t.x/q,"em, ").concat(t.y/q,"em) "),l+="scale(".concat(t.size/q*(t.flipX?-1:1),", ").concat(t.size/q*(t.flipY?-1:1),") "),l+="rotate(".concat(t.rotate,"deg) "),l}var Tr=`:root, :host {
  --fa-font-solid: normal 900 1em/1 "Font Awesome 6 Solid";
  --fa-font-regular: normal 400 1em/1 "Font Awesome 6 Regular";
  --fa-font-light: normal 300 1em/1 "Font Awesome 6 Light";
  --fa-font-thin: normal 100 1em/1 "Font Awesome 6 Thin";
  --fa-font-duotone: normal 900 1em/1 "Font Awesome 6 Duotone";
  --fa-font-sharp-solid: normal 900 1em/1 "Font Awesome 6 Sharp";
  --fa-font-sharp-regular: normal 400 1em/1 "Font Awesome 6 Sharp";
  --fa-font-sharp-light: normal 300 1em/1 "Font Awesome 6 Sharp";
  --fa-font-sharp-thin: normal 100 1em/1 "Font Awesome 6 Sharp";
  --fa-font-brands: normal 400 1em/1 "Font Awesome 6 Brands";
}

svg:not(:root).svg-inline--fa, svg:not(:host).svg-inline--fa {
  overflow: visible;
  box-sizing: content-box;
}

.svg-inline--fa {
  display: var(--fa-display, inline-block);
  height: 1em;
  overflow: visible;
  vertical-align: -0.125em;
}
.svg-inline--fa.fa-2xs {
  vertical-align: 0.1em;
}
.svg-inline--fa.fa-xs {
  vertical-align: 0em;
}
.svg-inline--fa.fa-sm {
  vertical-align: -0.0714285705em;
}
.svg-inline--fa.fa-lg {
  vertical-align: -0.2em;
}
.svg-inline--fa.fa-xl {
  vertical-align: -0.25em;
}
.svg-inline--fa.fa-2xl {
  vertical-align: -0.3125em;
}
.svg-inline--fa.fa-pull-left {
  margin-right: var(--fa-pull-margin, 0.3em);
  width: auto;
}
.svg-inline--fa.fa-pull-right {
  margin-left: var(--fa-pull-margin, 0.3em);
  width: auto;
}
.svg-inline--fa.fa-li {
  width: var(--fa-li-width, 2em);
  top: 0.25em;
}
.svg-inline--fa.fa-fw {
  width: var(--fa-fw-width, 1.25em);
}

.fa-layers svg.svg-inline--fa {
  bottom: 0;
  left: 0;
  margin: auto;
  position: absolute;
  right: 0;
  top: 0;
}

.fa-layers-counter, .fa-layers-text {
  display: inline-block;
  position: absolute;
  text-align: center;
}

.fa-layers {
  display: inline-block;
  height: 1em;
  position: relative;
  text-align: center;
  vertical-align: -0.125em;
  width: 1em;
}
.fa-layers svg.svg-inline--fa {
  -webkit-transform-origin: center center;
          transform-origin: center center;
}

.fa-layers-text {
  left: 50%;
  top: 50%;
  -webkit-transform: translate(-50%, -50%);
          transform: translate(-50%, -50%);
  -webkit-transform-origin: center center;
          transform-origin: center center;
}

.fa-layers-counter {
  background-color: var(--fa-counter-background-color, #ff253a);
  border-radius: var(--fa-counter-border-radius, 1em);
  box-sizing: border-box;
  color: var(--fa-inverse, #fff);
  line-height: var(--fa-counter-line-height, 1);
  max-width: var(--fa-counter-max-width, 5em);
  min-width: var(--fa-counter-min-width, 1.5em);
  overflow: hidden;
  padding: var(--fa-counter-padding, 0.25em 0.5em);
  right: var(--fa-right, 0);
  text-overflow: ellipsis;
  top: var(--fa-top, 0);
  -webkit-transform: scale(var(--fa-counter-scale, 0.25));
          transform: scale(var(--fa-counter-scale, 0.25));
  -webkit-transform-origin: top right;
          transform-origin: top right;
}

.fa-layers-bottom-right {
  bottom: var(--fa-bottom, 0);
  right: var(--fa-right, 0);
  top: auto;
  -webkit-transform: scale(var(--fa-layers-scale, 0.25));
          transform: scale(var(--fa-layers-scale, 0.25));
  -webkit-transform-origin: bottom right;
          transform-origin: bottom right;
}

.fa-layers-bottom-left {
  bottom: var(--fa-bottom, 0);
  left: var(--fa-left, 0);
  right: auto;
  top: auto;
  -webkit-transform: scale(var(--fa-layers-scale, 0.25));
          transform: scale(var(--fa-layers-scale, 0.25));
  -webkit-transform-origin: bottom left;
          transform-origin: bottom left;
}

.fa-layers-top-right {
  top: var(--fa-top, 0);
  right: var(--fa-right, 0);
  -webkit-transform: scale(var(--fa-layers-scale, 0.25));
          transform: scale(var(--fa-layers-scale, 0.25));
  -webkit-transform-origin: top right;
          transform-origin: top right;
}

.fa-layers-top-left {
  left: var(--fa-left, 0);
  right: auto;
  top: var(--fa-top, 0);
  -webkit-transform: scale(var(--fa-layers-scale, 0.25));
          transform: scale(var(--fa-layers-scale, 0.25));
  -webkit-transform-origin: top left;
          transform-origin: top left;
}

.fa-1x {
  font-size: 1em;
}

.fa-2x {
  font-size: 2em;
}

.fa-3x {
  font-size: 3em;
}

.fa-4x {
  font-size: 4em;
}

.fa-5x {
  font-size: 5em;
}

.fa-6x {
  font-size: 6em;
}

.fa-7x {
  font-size: 7em;
}

.fa-8x {
  font-size: 8em;
}

.fa-9x {
  font-size: 9em;
}

.fa-10x {
  font-size: 10em;
}

.fa-2xs {
  font-size: 0.625em;
  line-height: 0.1em;
  vertical-align: 0.225em;
}

.fa-xs {
  font-size: 0.75em;
  line-height: 0.0833333337em;
  vertical-align: 0.125em;
}

.fa-sm {
  font-size: 0.875em;
  line-height: 0.0714285718em;
  vertical-align: 0.0535714295em;
}

.fa-lg {
  font-size: 1.25em;
  line-height: 0.05em;
  vertical-align: -0.075em;
}

.fa-xl {
  font-size: 1.5em;
  line-height: 0.0416666682em;
  vertical-align: -0.125em;
}

.fa-2xl {
  font-size: 2em;
  line-height: 0.03125em;
  vertical-align: -0.1875em;
}

.fa-fw {
  text-align: center;
  width: 1.25em;
}

.fa-ul {
  list-style-type: none;
  margin-left: var(--fa-li-margin, 2.5em);
  padding-left: 0;
}
.fa-ul > li {
  position: relative;
}

.fa-li {
  left: calc(var(--fa-li-width, 2em) * -1);
  position: absolute;
  text-align: center;
  width: var(--fa-li-width, 2em);
  line-height: inherit;
}

.fa-border {
  border-color: var(--fa-border-color, #eee);
  border-radius: var(--fa-border-radius, 0.1em);
  border-style: var(--fa-border-style, solid);
  border-width: var(--fa-border-width, 0.08em);
  padding: var(--fa-border-padding, 0.2em 0.25em 0.15em);
}

.fa-pull-left {
  float: left;
  margin-right: var(--fa-pull-margin, 0.3em);
}

.fa-pull-right {
  float: right;
  margin-left: var(--fa-pull-margin, 0.3em);
}

.fa-beat {
  -webkit-animation-name: fa-beat;
          animation-name: fa-beat;
  -webkit-animation-delay: var(--fa-animation-delay, 0s);
          animation-delay: var(--fa-animation-delay, 0s);
  -webkit-animation-direction: var(--fa-animation-direction, normal);
          animation-direction: var(--fa-animation-direction, normal);
  -webkit-animation-duration: var(--fa-animation-duration, 1s);
          animation-duration: var(--fa-animation-duration, 1s);
  -webkit-animation-iteration-count: var(--fa-animation-iteration-count, infinite);
          animation-iteration-count: var(--fa-animation-iteration-count, infinite);
  -webkit-animation-timing-function: var(--fa-animation-timing, ease-in-out);
          animation-timing-function: var(--fa-animation-timing, ease-in-out);
}

.fa-bounce {
  -webkit-animation-name: fa-bounce;
          animation-name: fa-bounce;
  -webkit-animation-delay: var(--fa-animation-delay, 0s);
          animation-delay: var(--fa-animation-delay, 0s);
  -webkit-animation-direction: var(--fa-animation-direction, normal);
          animation-direction: var(--fa-animation-direction, normal);
  -webkit-animation-duration: var(--fa-animation-duration, 1s);
          animation-duration: var(--fa-animation-duration, 1s);
  -webkit-animation-iteration-count: var(--fa-animation-iteration-count, infinite);
          animation-iteration-count: var(--fa-animation-iteration-count, infinite);
  -webkit-animation-timing-function: var(--fa-animation-timing, cubic-bezier(0.28, 0.84, 0.42, 1));
          animation-timing-function: var(--fa-animation-timing, cubic-bezier(0.28, 0.84, 0.42, 1));
}

.fa-fade {
  -webkit-animation-name: fa-fade;
          animation-name: fa-fade;
  -webkit-animation-delay: var(--fa-animation-delay, 0s);
          animation-delay: var(--fa-animation-delay, 0s);
  -webkit-animation-direction: var(--fa-animation-direction, normal);
          animation-direction: var(--fa-animation-direction, normal);
  -webkit-animation-duration: var(--fa-animation-duration, 1s);
          animation-duration: var(--fa-animation-duration, 1s);
  -webkit-animation-iteration-count: var(--fa-animation-iteration-count, infinite);
          animation-iteration-count: var(--fa-animation-iteration-count, infinite);
  -webkit-animation-timing-function: var(--fa-animation-timing, cubic-bezier(0.4, 0, 0.6, 1));
          animation-timing-function: var(--fa-animation-timing, cubic-bezier(0.4, 0, 0.6, 1));
}

.fa-beat-fade {
  -webkit-animation-name: fa-beat-fade;
          animation-name: fa-beat-fade;
  -webkit-animation-delay: var(--fa-animation-delay, 0s);
          animation-delay: var(--fa-animation-delay, 0s);
  -webkit-animation-direction: var(--fa-animation-direction, normal);
          animation-direction: var(--fa-animation-direction, normal);
  -webkit-animation-duration: var(--fa-animation-duration, 1s);
          animation-duration: var(--fa-animation-duration, 1s);
  -webkit-animation-iteration-count: var(--fa-animation-iteration-count, infinite);
          animation-iteration-count: var(--fa-animation-iteration-count, infinite);
  -webkit-animation-timing-function: var(--fa-animation-timing, cubic-bezier(0.4, 0, 0.6, 1));
          animation-timing-function: var(--fa-animation-timing, cubic-bezier(0.4, 0, 0.6, 1));
}

.fa-flip {
  -webkit-animation-name: fa-flip;
          animation-name: fa-flip;
  -webkit-animation-delay: var(--fa-animation-delay, 0s);
          animation-delay: var(--fa-animation-delay, 0s);
  -webkit-animation-direction: var(--fa-animation-direction, normal);
          animation-direction: var(--fa-animation-direction, normal);
  -webkit-animation-duration: var(--fa-animation-duration, 1s);
          animation-duration: var(--fa-animation-duration, 1s);
  -webkit-animation-iteration-count: var(--fa-animation-iteration-count, infinite);
          animation-iteration-count: var(--fa-animation-iteration-count, infinite);
  -webkit-animation-timing-function: var(--fa-animation-timing, ease-in-out);
          animation-timing-function: var(--fa-animation-timing, ease-in-out);
}

.fa-shake {
  -webkit-animation-name: fa-shake;
          animation-name: fa-shake;
  -webkit-animation-delay: var(--fa-animation-delay, 0s);
          animation-delay: var(--fa-animation-delay, 0s);
  -webkit-animation-direction: var(--fa-animation-direction, normal);
          animation-direction: var(--fa-animation-direction, normal);
  -webkit-animation-duration: var(--fa-animation-duration, 1s);
          animation-duration: var(--fa-animation-duration, 1s);
  -webkit-animation-iteration-count: var(--fa-animation-iteration-count, infinite);
          animation-iteration-count: var(--fa-animation-iteration-count, infinite);
  -webkit-animation-timing-function: var(--fa-animation-timing, linear);
          animation-timing-function: var(--fa-animation-timing, linear);
}

.fa-spin {
  -webkit-animation-name: fa-spin;
          animation-name: fa-spin;
  -webkit-animation-delay: var(--fa-animation-delay, 0s);
          animation-delay: var(--fa-animation-delay, 0s);
  -webkit-animation-direction: var(--fa-animation-direction, normal);
          animation-direction: var(--fa-animation-direction, normal);
  -webkit-animation-duration: var(--fa-animation-duration, 2s);
          animation-duration: var(--fa-animation-duration, 2s);
  -webkit-animation-iteration-count: var(--fa-animation-iteration-count, infinite);
          animation-iteration-count: var(--fa-animation-iteration-count, infinite);
  -webkit-animation-timing-function: var(--fa-animation-timing, linear);
          animation-timing-function: var(--fa-animation-timing, linear);
}

.fa-spin-reverse {
  --fa-animation-direction: reverse;
}

.fa-pulse,
.fa-spin-pulse {
  -webkit-animation-name: fa-spin;
          animation-name: fa-spin;
  -webkit-animation-direction: var(--fa-animation-direction, normal);
          animation-direction: var(--fa-animation-direction, normal);
  -webkit-animation-duration: var(--fa-animation-duration, 1s);
          animation-duration: var(--fa-animation-duration, 1s);
  -webkit-animation-iteration-count: var(--fa-animation-iteration-count, infinite);
          animation-iteration-count: var(--fa-animation-iteration-count, infinite);
  -webkit-animation-timing-function: var(--fa-animation-timing, steps(8));
          animation-timing-function: var(--fa-animation-timing, steps(8));
}

@media (prefers-reduced-motion: reduce) {
  .fa-beat,
.fa-bounce,
.fa-fade,
.fa-beat-fade,
.fa-flip,
.fa-pulse,
.fa-shake,
.fa-spin,
.fa-spin-pulse {
    -webkit-animation-delay: -1ms;
            animation-delay: -1ms;
    -webkit-animation-duration: 1ms;
            animation-duration: 1ms;
    -webkit-animation-iteration-count: 1;
            animation-iteration-count: 1;
    -webkit-transition-delay: 0s;
            transition-delay: 0s;
    -webkit-transition-duration: 0s;
            transition-duration: 0s;
  }
}
@-webkit-keyframes fa-beat {
  0%, 90% {
    -webkit-transform: scale(1);
            transform: scale(1);
  }
  45% {
    -webkit-transform: scale(var(--fa-beat-scale, 1.25));
            transform: scale(var(--fa-beat-scale, 1.25));
  }
}
@keyframes fa-beat {
  0%, 90% {
    -webkit-transform: scale(1);
            transform: scale(1);
  }
  45% {
    -webkit-transform: scale(var(--fa-beat-scale, 1.25));
            transform: scale(var(--fa-beat-scale, 1.25));
  }
}
@-webkit-keyframes fa-bounce {
  0% {
    -webkit-transform: scale(1, 1) translateY(0);
            transform: scale(1, 1) translateY(0);
  }
  10% {
    -webkit-transform: scale(var(--fa-bounce-start-scale-x, 1.1), var(--fa-bounce-start-scale-y, 0.9)) translateY(0);
            transform: scale(var(--fa-bounce-start-scale-x, 1.1), var(--fa-bounce-start-scale-y, 0.9)) translateY(0);
  }
  30% {
    -webkit-transform: scale(var(--fa-bounce-jump-scale-x, 0.9), var(--fa-bounce-jump-scale-y, 1.1)) translateY(var(--fa-bounce-height, -0.5em));
            transform: scale(var(--fa-bounce-jump-scale-x, 0.9), var(--fa-bounce-jump-scale-y, 1.1)) translateY(var(--fa-bounce-height, -0.5em));
  }
  50% {
    -webkit-transform: scale(var(--fa-bounce-land-scale-x, 1.05), var(--fa-bounce-land-scale-y, 0.95)) translateY(0);
            transform: scale(var(--fa-bounce-land-scale-x, 1.05), var(--fa-bounce-land-scale-y, 0.95)) translateY(0);
  }
  57% {
    -webkit-transform: scale(1, 1) translateY(var(--fa-bounce-rebound, -0.125em));
            transform: scale(1, 1) translateY(var(--fa-bounce-rebound, -0.125em));
  }
  64% {
    -webkit-transform: scale(1, 1) translateY(0);
            transform: scale(1, 1) translateY(0);
  }
  100% {
    -webkit-transform: scale(1, 1) translateY(0);
            transform: scale(1, 1) translateY(0);
  }
}
@keyframes fa-bounce {
  0% {
    -webkit-transform: scale(1, 1) translateY(0);
            transform: scale(1, 1) translateY(0);
  }
  10% {
    -webkit-transform: scale(var(--fa-bounce-start-scale-x, 1.1), var(--fa-bounce-start-scale-y, 0.9)) translateY(0);
            transform: scale(var(--fa-bounce-start-scale-x, 1.1), var(--fa-bounce-start-scale-y, 0.9)) translateY(0);
  }
  30% {
    -webkit-transform: scale(var(--fa-bounce-jump-scale-x, 0.9), var(--fa-bounce-jump-scale-y, 1.1)) translateY(var(--fa-bounce-height, -0.5em));
            transform: scale(var(--fa-bounce-jump-scale-x, 0.9), var(--fa-bounce-jump-scale-y, 1.1)) translateY(var(--fa-bounce-height, -0.5em));
  }
  50% {
    -webkit-transform: scale(var(--fa-bounce-land-scale-x, 1.05), var(--fa-bounce-land-scale-y, 0.95)) translateY(0);
            transform: scale(var(--fa-bounce-land-scale-x, 1.05), var(--fa-bounce-land-scale-y, 0.95)) translateY(0);
  }
  57% {
    -webkit-transform: scale(1, 1) translateY(var(--fa-bounce-rebound, -0.125em));
            transform: scale(1, 1) translateY(var(--fa-bounce-rebound, -0.125em));
  }
  64% {
    -webkit-transform: scale(1, 1) translateY(0);
            transform: scale(1, 1) translateY(0);
  }
  100% {
    -webkit-transform: scale(1, 1) translateY(0);
            transform: scale(1, 1) translateY(0);
  }
}
@-webkit-keyframes fa-fade {
  50% {
    opacity: var(--fa-fade-opacity, 0.4);
  }
}
@keyframes fa-fade {
  50% {
    opacity: var(--fa-fade-opacity, 0.4);
  }
}
@-webkit-keyframes fa-beat-fade {
  0%, 100% {
    opacity: var(--fa-beat-fade-opacity, 0.4);
    -webkit-transform: scale(1);
            transform: scale(1);
  }
  50% {
    opacity: 1;
    -webkit-transform: scale(var(--fa-beat-fade-scale, 1.125));
            transform: scale(var(--fa-beat-fade-scale, 1.125));
  }
}
@keyframes fa-beat-fade {
  0%, 100% {
    opacity: var(--fa-beat-fade-opacity, 0.4);
    -webkit-transform: scale(1);
            transform: scale(1);
  }
  50% {
    opacity: 1;
    -webkit-transform: scale(var(--fa-beat-fade-scale, 1.125));
            transform: scale(var(--fa-beat-fade-scale, 1.125));
  }
}
@-webkit-keyframes fa-flip {
  50% {
    -webkit-transform: rotate3d(var(--fa-flip-x, 0), var(--fa-flip-y, 1), var(--fa-flip-z, 0), var(--fa-flip-angle, -180deg));
            transform: rotate3d(var(--fa-flip-x, 0), var(--fa-flip-y, 1), var(--fa-flip-z, 0), var(--fa-flip-angle, -180deg));
  }
}
@keyframes fa-flip {
  50% {
    -webkit-transform: rotate3d(var(--fa-flip-x, 0), var(--fa-flip-y, 1), var(--fa-flip-z, 0), var(--fa-flip-angle, -180deg));
            transform: rotate3d(var(--fa-flip-x, 0), var(--fa-flip-y, 1), var(--fa-flip-z, 0), var(--fa-flip-angle, -180deg));
  }
}
@-webkit-keyframes fa-shake {
  0% {
    -webkit-transform: rotate(-15deg);
            transform: rotate(-15deg);
  }
  4% {
    -webkit-transform: rotate(15deg);
            transform: rotate(15deg);
  }
  8%, 24% {
    -webkit-transform: rotate(-18deg);
            transform: rotate(-18deg);
  }
  12%, 28% {
    -webkit-transform: rotate(18deg);
            transform: rotate(18deg);
  }
  16% {
    -webkit-transform: rotate(-22deg);
            transform: rotate(-22deg);
  }
  20% {
    -webkit-transform: rotate(22deg);
            transform: rotate(22deg);
  }
  32% {
    -webkit-transform: rotate(-12deg);
            transform: rotate(-12deg);
  }
  36% {
    -webkit-transform: rotate(12deg);
            transform: rotate(12deg);
  }
  40%, 100% {
    -webkit-transform: rotate(0deg);
            transform: rotate(0deg);
  }
}
@keyframes fa-shake {
  0% {
    -webkit-transform: rotate(-15deg);
            transform: rotate(-15deg);
  }
  4% {
    -webkit-transform: rotate(15deg);
            transform: rotate(15deg);
  }
  8%, 24% {
    -webkit-transform: rotate(-18deg);
            transform: rotate(-18deg);
  }
  12%, 28% {
    -webkit-transform: rotate(18deg);
            transform: rotate(18deg);
  }
  16% {
    -webkit-transform: rotate(-22deg);
            transform: rotate(-22deg);
  }
  20% {
    -webkit-transform: rotate(22deg);
            transform: rotate(22deg);
  }
  32% {
    -webkit-transform: rotate(-12deg);
            transform: rotate(-12deg);
  }
  36% {
    -webkit-transform: rotate(12deg);
            transform: rotate(12deg);
  }
  40%, 100% {
    -webkit-transform: rotate(0deg);
            transform: rotate(0deg);
  }
}
@-webkit-keyframes fa-spin {
  0% {
    -webkit-transform: rotate(0deg);
            transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(360deg);
            transform: rotate(360deg);
  }
}
@keyframes fa-spin {
  0% {
    -webkit-transform: rotate(0deg);
            transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(360deg);
            transform: rotate(360deg);
  }
}
.fa-rotate-90 {
  -webkit-transform: rotate(90deg);
          transform: rotate(90deg);
}

.fa-rotate-180 {
  -webkit-transform: rotate(180deg);
          transform: rotate(180deg);
}

.fa-rotate-270 {
  -webkit-transform: rotate(270deg);
          transform: rotate(270deg);
}

.fa-flip-horizontal {
  -webkit-transform: scale(-1, 1);
          transform: scale(-1, 1);
}

.fa-flip-vertical {
  -webkit-transform: scale(1, -1);
          transform: scale(1, -1);
}

.fa-flip-both,
.fa-flip-horizontal.fa-flip-vertical {
  -webkit-transform: scale(-1, -1);
          transform: scale(-1, -1);
}

.fa-rotate-by {
  -webkit-transform: rotate(var(--fa-rotate-angle, none));
          transform: rotate(var(--fa-rotate-angle, none));
}

.fa-stack {
  display: inline-block;
  vertical-align: middle;
  height: 2em;
  position: relative;
  width: 2.5em;
}

.fa-stack-1x,
.fa-stack-2x {
  bottom: 0;
  left: 0;
  margin: auto;
  position: absolute;
  right: 0;
  top: 0;
  z-index: var(--fa-stack-z-index, auto);
}

.svg-inline--fa.fa-stack-1x {
  height: 1em;
  width: 1.25em;
}
.svg-inline--fa.fa-stack-2x {
  height: 2em;
  width: 2.5em;
}

.fa-inverse {
  color: var(--fa-inverse, #fff);
}

.sr-only,
.fa-sr-only {
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip: rect(0, 0, 0, 0);
  white-space: nowrap;
  border-width: 0;
}

.sr-only-focusable:not(:focus),
.fa-sr-only-focusable:not(:focus) {
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip: rect(0, 0, 0, 0);
  white-space: nowrap;
  border-width: 0;
}

.svg-inline--fa .fa-primary {
  fill: var(--fa-primary-color, currentColor);
  opacity: var(--fa-primary-opacity, 1);
}

.svg-inline--fa .fa-secondary {
  fill: var(--fa-secondary-color, currentColor);
  opacity: var(--fa-secondary-opacity, 0.4);
}

.svg-inline--fa.fa-swap-opacity .fa-primary {
  opacity: var(--fa-secondary-opacity, 0.4);
}

.svg-inline--fa.fa-swap-opacity .fa-secondary {
  opacity: var(--fa-primary-opacity, 1);
}

.svg-inline--fa mask .fa-primary,
.svg-inline--fa mask .fa-secondary {
  fill: black;
}

.fad.fa-inverse,
.fa-duotone.fa-inverse {
  color: var(--fa-inverse, #fff);
}`;function ya(){var e=da,t=ma,n=v.cssPrefix,a=v.replacementClass,r=Tr;if(n!==e||a!==t){var i=new RegExp("\\.".concat(e,"\\-"),"g"),s=new RegExp("\\--".concat(e,"\\-"),"g"),o=new RegExp("\\.".concat(t),"g");r=r.replace(i,".".concat(n,"-")).replace(s,"--".concat(n,"-")).replace(o,".".concat(a))}return r}var Pn=!1;function It(){v.autoAddCss&&!Pn&&(Pr(ya()),Pn=!0)}var Lr={mixout:function(){return{dom:{css:ya,insertCss:It}}},hooks:function(){return{beforeDOMElementCreation:function(){It()},beforeI2svg:function(){It()}}}},B=ae||{};B[V]||(B[V]={});B[V].styles||(B[V].styles={});B[V].hooks||(B[V].hooks={});B[V].shims||(B[V].shims=[]);var W=B[V],wa=[],zr=function e(){A.removeEventListener("DOMContentLoaded",e),mt=1,wa.map(function(t){return t()})},mt=!1;X&&(mt=(A.documentElement.doScroll?/^loaded|^c/:/^loaded|^i|^c/).test(A.readyState),mt||A.addEventListener("DOMContentLoaded",zr));function Fr(e){X&&(mt?setTimeout(e,0):wa.push(e))}function Ve(e){var t=e.tag,n=e.attributes,a=n===void 0?{}:n,r=e.children,i=r===void 0?[]:r;return typeof e=="string"?ba(e):"<".concat(t," ").concat(Mr(a),">").concat(i.map(Ve).join(""),"</").concat(t,">")}function On(e,t,n){if(e&&e[t]&&e[t][n])return{prefix:t,iconName:n,icon:e[t][n]}}var jr=function(t,n){return function(a,r,i,s){return t.call(n,a,r,i,s)}},Pt=function(t,n,a,r){var i=Object.keys(t),s=i.length,o=r!==void 0?jr(n,r):n,l,c,f;for(a===void 0?(l=1,f=t[i[0]]):(l=0,f=a);l<s;l++)c=i[l],f=o(f,t[c],c,t);return f};function Dr(e){for(var t=[],n=0,a=e.length;n<a;){var r=e.charCodeAt(n++);if(r>=55296&&r<=56319&&n<a){var i=e.charCodeAt(n++);(i&64512)==56320?t.push(((r&1023)<<10)+(i&1023)+65536):(t.push(r),n--)}else t.push(r)}return t}function Ft(e){var t=Dr(e);return t.length===1?t[0].toString(16):null}function Gr(e,t){var n=e.length,a=e.charCodeAt(t),r;return a>=55296&&a<=56319&&n>t+1&&(r=e.charCodeAt(t+1),r>=56320&&r<=57343)?(a-55296)*1024+r-56320+65536:a}function Mn(e){return Object.keys(e).reduce(function(t,n){var a=e[n],r=!!a.icon;return r?t[a.iconName]=a.icon:t[n]=a,t},{})}function jt(e,t){var n=arguments.length>2&&arguments[2]!==void 0?arguments[2]:{},a=n.skipHooks,r=a===void 0?!1:a,i=Mn(t);typeof W.hooks.addPack=="function"&&!r?W.hooks.addPack(e,Mn(t)):W.styles[e]=m(m({},W.styles[e]||{}),i),e==="fas"&&jt("fa",t)}var Ze,et,tt,pe=W.styles,Ur=W.shims,Hr=(Ze={},O(Ze,C,Object.values(Fe[C])),O(Ze,P,Object.values(Fe[P])),Ze),ln=null,_a={},ka={},xa={},Sa={},Ca={},Wr=(et={},O(et,C,Object.keys(Le[C])),O(et,P,Object.keys(Le[P])),et);function Yr(e){return~Sr.indexOf(e)}function $r(e,t){var n=t.split("-"),a=n[0],r=n.slice(1).join("-");return a===e&&r!==""&&!Yr(r)?r:null}var Aa=function(){var t=function(i){return Pt(pe,function(s,o,l){return s[l]=Pt(o,i,{}),s},{})};_a=t(function(r,i,s){if(i[3]&&(r[i[3]]=s),i[2]){var o=i[2].filter(function(l){return typeof l=="number"});o.forEach(function(l){r[l.toString(16)]=s})}return r}),ka=t(function(r,i,s){if(r[s]=s,i[2]){var o=i[2].filter(function(l){return typeof l=="string"});o.forEach(function(l){r[l]=s})}return r}),Ca=t(function(r,i,s){var o=i[2];return r[s]=s,o.forEach(function(l){r[l]=s}),r});var n="far"in pe||v.autoFetchSvg,a=Pt(Ur,function(r,i){var s=i[0],o=i[1],l=i[2];return o==="far"&&!n&&(o="fas"),typeof s=="string"&&(r.names[s]={prefix:o,iconName:l}),typeof s=="number"&&(r.unicodes[s.toString(16)]={prefix:o,iconName:l}),r},{names:{},unicodes:{}});xa=a.names,Sa=a.unicodes,ln=_t(v.styleDefault,{family:v.familyDefault})};Ir(function(e){ln=_t(e.styleDefault,{family:v.familyDefault})});Aa();function cn(e,t){return(_a[e]||{})[t]}function Vr(e,t){return(ka[e]||{})[t]}function fe(e,t){return(Ca[e]||{})[t]}function Ea(e){return xa[e]||{prefix:null,iconName:null}}function Br(e){var t=Sa[e],n=cn("fas",e);return t||(n?{prefix:"fas",iconName:n}:null)||{prefix:null,iconName:null}}function re(){return ln}var fn=function(){return{prefix:null,iconName:null,rest:[]}};function _t(e){var t=arguments.length>1&&arguments[1]!==void 0?arguments[1]:{},n=t.family,a=n===void 0?C:n,r=Le[a][e],i=ze[a][e]||ze[a][r],s=e in W.styles?e:null;return i||s||null}var Rn=(tt={},O(tt,C,Object.keys(Fe[C])),O(tt,P,Object.keys(Fe[P])),tt);function kt(e){var t,n=arguments.length>1&&arguments[1]!==void 0?arguments[1]:{},a=n.skipLookups,r=a===void 0?!1:a,i=(t={},O(t,C,"".concat(v.cssPrefix,"-").concat(C)),O(t,P,"".concat(v.cssPrefix,"-").concat(P)),t),s=null,o=C;(e.includes(i[C])||e.some(function(c){return Rn[C].includes(c)}))&&(o=C),(e.includes(i[P])||e.some(function(c){return Rn[P].includes(c)}))&&(o=P);var l=e.reduce(function(c,f){var u=$r(v.cssPrefix,f);if(pe[f]?(f=Hr[o].includes(f)?br[o][f]:f,s=f,c.prefix=f):Wr[o].indexOf(f)>-1?(s=f,c.prefix=_t(f,{family:o})):u?c.iconName=u:f!==v.replacementClass&&f!==i[C]&&f!==i[P]&&c.rest.push(f),!r&&c.prefix&&c.iconName){var h=s==="fa"?Ea(c.iconName):{},g=fe(c.prefix,c.iconName);h.prefix&&(s=null),c.iconName=h.iconName||g||c.iconName,c.prefix=h.prefix||c.prefix,c.prefix==="far"&&!pe.far&&pe.fas&&!v.autoFetchSvg&&(c.prefix="fas")}return c},fn());return(e.includes("fa-brands")||e.includes("fab"))&&(l.prefix="fab"),(e.includes("fa-duotone")||e.includes("fad"))&&(l.prefix="fad"),!l.prefix&&o===P&&(pe.fass||v.autoFetchSvg)&&(l.prefix="fass",l.iconName=fe(l.prefix,l.iconName)||l.iconName),(l.prefix==="fa"||s==="fa")&&(l.prefix=re()||"fas"),l}var Kr=function(){function e(){sr(this,e),this.definitions={}}return or(e,[{key:"add",value:function(){for(var n=this,a=arguments.length,r=new Array(a),i=0;i<a;i++)r[i]=arguments[i];var s=r.reduce(this._pullDefinitions,{});Object.keys(s).forEach(function(o){n.definitions[o]=m(m({},n.definitions[o]||{}),s[o]),jt(o,s[o]);var l=Fe[C][o];l&&jt(l,s[o]),Aa()})}},{key:"reset",value:function(){this.definitions={}}},{key:"_pullDefinitions",value:function(n,a){var r=a.prefix&&a.iconName&&a.icon?{0:a}:a;return Object.keys(r).map(function(i){var s=r[i],o=s.prefix,l=s.iconName,c=s.icon,f=c[2];n[o]||(n[o]={}),f.length>0&&f.forEach(function(u){typeof u=="string"&&(n[o][u]=c)}),n[o][l]=c}),n}}]),e}(),Nn=[],ge={},ye={},Xr=Object.keys(ye);function qr(e,t){var n=t.mixoutsTo;return Nn=e,ge={},Object.keys(ye).forEach(function(a){Xr.indexOf(a)===-1&&delete ye[a]}),Nn.forEach(function(a){var r=a.mixout?a.mixout():{};if(Object.keys(r).forEach(function(s){typeof r[s]=="function"&&(n[s]=r[s]),dt(r[s])==="object"&&Object.keys(r[s]).forEach(function(o){n[s]||(n[s]={}),n[s][o]=r[s][o]})}),a.hooks){var i=a.hooks();Object.keys(i).forEach(function(s){ge[s]||(ge[s]=[]),ge[s].push(i[s])})}a.provides&&a.provides(ye)}),n}function Dt(e,t){for(var n=arguments.length,a=new Array(n>2?n-2:0),r=2;r<n;r++)a[r-2]=arguments[r];var i=ge[e]||[];return i.forEach(function(s){t=s.apply(null,[t].concat(a))}),t}function me(e){for(var t=arguments.length,n=new Array(t>1?t-1:0),a=1;a<t;a++)n[a-1]=arguments[a];var r=ge[e]||[];r.forEach(function(i){i.apply(null,n)})}function K(){var e=arguments[0],t=Array.prototype.slice.call(arguments,1);return ye[e]?ye[e].apply(null,t):void 0}function Gt(e){e.prefix==="fa"&&(e.prefix="fas");var t=e.iconName,n=e.prefix||re();if(t)return t=fe(n,t)||t,On(Ia.definitions,n,t)||On(W.styles,n,t)}var Ia=new Kr,Jr=function(){v.autoReplaceSvg=!1,v.observeMutations=!1,me("noAuto")},Qr={i2svg:function(){var t=arguments.length>0&&arguments[0]!==void 0?arguments[0]:{};return X?(me("beforeI2svg",t),K("pseudoElements2svg",t),K("i2svg",t)):Promise.reject("Operation requires a DOM of some kind.")},watch:function(){var t=arguments.length>0&&arguments[0]!==void 0?arguments[0]:{},n=t.autoReplaceSvgRoot;v.autoReplaceSvg===!1&&(v.autoReplaceSvg=!0),v.observeMutations=!0,Fr(function(){ei({autoReplaceSvgRoot:n}),me("watch",t)})}},Zr={icon:function(t){if(t===null)return null;if(dt(t)==="object"&&t.prefix&&t.iconName)return{prefix:t.prefix,iconName:fe(t.prefix,t.iconName)||t.iconName};if(Array.isArray(t)&&t.length===2){var n=t[1].indexOf("fa-")===0?t[1].slice(3):t[1],a=_t(t[0]);return{prefix:a,iconName:fe(a,n)||n}}if(typeof t=="string"&&(t.indexOf("".concat(v.cssPrefix,"-"))>-1||t.match(yr))){var r=kt(t.split(" "),{skipLookups:!0});return{prefix:r.prefix||re(),iconName:fe(r.prefix,r.iconName)||r.iconName}}if(typeof t=="string"){var i=re();return{prefix:i,iconName:fe(i,t)||t}}}},L={noAuto:Jr,config:v,dom:Qr,parse:Zr,library:Ia,findIconDefinition:Gt,toHtml:Ve},ei=function(){var t=arguments.length>0&&arguments[0]!==void 0?arguments[0]:{},n=t.autoReplaceSvgRoot,a=n===void 0?A:n;(Object.keys(W.styles).length>0||v.autoFetchSvg)&&X&&v.autoReplaceSvg&&L.dom.i2svg({node:a})};function xt(e,t){return Object.defineProperty(e,"abstract",{get:t}),Object.defineProperty(e,"html",{get:function(){return e.abstract.map(function(a){return Ve(a)})}}),Object.defineProperty(e,"node",{get:function(){if(X){var a=A.createElement("div");return a.innerHTML=e.html,a.children}}}),e}function ti(e){var t=e.children,n=e.main,a=e.mask,r=e.attributes,i=e.styles,s=e.transform;if(on(s)&&n.found&&!a.found){var o=n.width,l=n.height,c={x:o/l/2,y:.5};r.style=wt(m(m({},i),{},{"transform-origin":"".concat(c.x+s.x/16,"em ").concat(c.y+s.y/16,"em")}))}return[{tag:"svg",attributes:r,children:t}]}function ni(e){var t=e.prefix,n=e.iconName,a=e.children,r=e.attributes,i=e.symbol,s=i===!0?"".concat(t,"-").concat(v.cssPrefix,"-").concat(n):i;return[{tag:"svg",attributes:{style:"display: none;"},children:[{tag:"symbol",attributes:m(m({},r),{},{id:s}),children:a}]}]}function un(e){var t=e.icons,n=t.main,a=t.mask,r=e.prefix,i=e.iconName,s=e.transform,o=e.symbol,l=e.title,c=e.maskId,f=e.titleId,u=e.extra,h=e.watchable,g=h===void 0?!1:h,w=a.found?a:n,x=w.width,I=w.height,d=r==="fak",p=[v.replacementClass,i?"".concat(v.cssPrefix,"-").concat(i):""].filter(function(y){return u.classes.indexOf(y)===-1}).filter(function(y){return y!==""||!!y}).concat(u.classes).join(" "),b={children:[],attributes:m(m({},u.attributes),{},{"data-prefix":r,"data-icon":i,class:p,role:u.attributes.role||"img",xmlns:"http://www.w3.org/2000/svg",viewBox:"0 0 ".concat(x," ").concat(I)})},E=d&&!~u.classes.indexOf("fa-fw")?{width:"".concat(x/I*16*.0625,"em")}:{};g&&(b.attributes[de]=""),l&&(b.children.push({tag:"title",attributes:{id:b.attributes["aria-labelledby"]||"title-".concat(f||De())},children:[l]}),delete b.attributes.title);var _=m(m({},b),{},{prefix:r,iconName:i,main:n,mask:a,maskId:c,transform:s,symbol:o,styles:m(m({},E),u.styles)}),G=a.found&&n.found?K("generateAbstractMask",_)||{children:[],attributes:{}}:K("generateAbstractIcon",_)||{children:[],attributes:{}},M=G.children,S=G.attributes;return _.children=M,_.attributes=S,o?ni(_):ti(_)}function Tn(e){var t=e.content,n=e.width,a=e.height,r=e.transform,i=e.title,s=e.extra,o=e.watchable,l=o===void 0?!1:o,c=m(m(m({},s.attributes),i?{title:i}:{}),{},{class:s.classes.join(" ")});l&&(c[de]="");var f=m({},s.styles);on(r)&&(f.transform=Nr({transform:r,startCentered:!0,width:n,height:a}),f["-webkit-transform"]=f.transform);var u=wt(f);u.length>0&&(c.style=u);var h=[];return h.push({tag:"span",attributes:c,children:[t]}),i&&h.push({tag:"span",attributes:{class:"sr-only"},children:[i]}),h}function ai(e){var t=e.content,n=e.title,a=e.extra,r=m(m(m({},a.attributes),n?{title:n}:{}),{},{class:a.classes.join(" ")}),i=wt(a.styles);i.length>0&&(r.style=i);var s=[];return s.push({tag:"span",attributes:r,children:[t]}),n&&s.push({tag:"span",attributes:{class:"sr-only"},children:[n]}),s}var Ot=W.styles;function Ut(e){var t=e[0],n=e[1],a=e.slice(4),r=en(a,1),i=r[0],s=null;return Array.isArray(i)?s={tag:"g",attributes:{class:"".concat(v.cssPrefix,"-").concat(ce.GROUP)},children:[{tag:"path",attributes:{class:"".concat(v.cssPrefix,"-").concat(ce.SECONDARY),fill:"currentColor",d:i[0]}},{tag:"path",attributes:{class:"".concat(v.cssPrefix,"-").concat(ce.PRIMARY),fill:"currentColor",d:i[1]}}]}:s={tag:"path",attributes:{fill:"currentColor",d:i}},{found:!0,width:t,height:n,icon:s}}var ri={found:!1,width:512,height:512};function ii(e,t){!ha&&!v.showMissingIcons&&e&&console.error('Icon with name "'.concat(e,'" and prefix "').concat(t,'" is missing.'))}function Ht(e,t){var n=t;return t==="fa"&&v.styleDefault!==null&&(t=re()),new Promise(function(a,r){if(K("missingIconAbstract"),n==="fa"){var i=Ea(e)||{};e=i.iconName||e,t=i.prefix||t}if(e&&t&&Ot[t]&&Ot[t][e]){var s=Ot[t][e];return a(Ut(s))}ii(e,t),a(m(m({},ri),{},{icon:v.showMissingIcons&&e?K("missingIconAbstract")||{}:{}}))})}var Ln=function(){},Wt=v.measurePerformance&&Be&&Be.mark&&Be.measure?Be:{mark:Ln,measure:Ln},Ie='FA "6.5.1"',si=function(t){return Wt.mark("".concat(Ie," ").concat(t," begins")),function(){return Pa(t)}},Pa=function(t){Wt.mark("".concat(Ie," ").concat(t," ends")),Wt.measure("".concat(Ie," ").concat(t),"".concat(Ie," ").concat(t," begins"),"".concat(Ie," ").concat(t," ends"))},dn={begin:si,end:Pa},lt=function(){};function zn(e){var t=e.getAttribute?e.getAttribute(de):null;return typeof t=="string"}function oi(e){var t=e.getAttribute?e.getAttribute(nn):null,n=e.getAttribute?e.getAttribute(an):null;return t&&n}function li(e){return e&&e.classList&&e.classList.contains&&e.classList.contains(v.replacementClass)}function ci(){if(v.autoReplaceSvg===!0)return ct.replace;var e=ct[v.autoReplaceSvg];return e||ct.replace}function fi(e){return A.createElementNS("http://www.w3.org/2000/svg",e)}function ui(e){return A.createElement(e)}function Oa(e){var t=arguments.length>1&&arguments[1]!==void 0?arguments[1]:{},n=t.ceFn,a=n===void 0?e.tag==="svg"?fi:ui:n;if(typeof e=="string")return A.createTextNode(e);var r=a(e.tag);Object.keys(e.attributes||[]).forEach(function(s){r.setAttribute(s,e.attributes[s])});var i=e.children||[];return i.forEach(function(s){r.appendChild(Oa(s,{ceFn:a}))}),r}function di(e){var t=" ".concat(e.outerHTML," ");return t="".concat(t,"Font Awesome fontawesome.com "),t}var ct={replace:function(t){var n=t[0];if(n.parentNode)if(t[1].forEach(function(r){n.parentNode.insertBefore(Oa(r),n)}),n.getAttribute(de)===null&&v.keepOriginalSource){var a=A.createComment(di(n));n.parentNode.replaceChild(a,n)}else n.remove()},nest:function(t){var n=t[0],a=t[1];if(~sn(n).indexOf(v.replacementClass))return ct.replace(t);var r=new RegExp("".concat(v.cssPrefix,"-.*"));if(delete a[0].attributes.id,a[0].attributes.class){var i=a[0].attributes.class.split(" ").reduce(function(o,l){return l===v.replacementClass||l.match(r)?o.toSvg.push(l):o.toNode.push(l),o},{toNode:[],toSvg:[]});a[0].attributes.class=i.toSvg.join(" "),i.toNode.length===0?n.removeAttribute("class"):n.setAttribute("class",i.toNode.join(" "))}var s=a.map(function(o){return Ve(o)}).join(`
`);n.setAttribute(de,""),n.innerHTML=s}};function Fn(e){e()}function Ma(e,t){var n=typeof t=="function"?t:lt;if(e.length===0)n();else{var a=Fn;v.mutateApproach===pr&&(a=ae.requestAnimationFrame||Fn),a(function(){var r=ci(),i=dn.begin("mutate");e.map(r),i(),n()})}}var mn=!1;function Ra(){mn=!0}function Yt(){mn=!1}var ht=null;function jn(e){if(En&&v.observeMutations){var t=e.treeCallback,n=t===void 0?lt:t,a=e.nodeCallback,r=a===void 0?lt:a,i=e.pseudoElementsCallback,s=i===void 0?lt:i,o=e.observeMutationsRoot,l=o===void 0?A:o;ht=new En(function(c){if(!mn){var f=re();Se(c).forEach(function(u){if(u.type==="childList"&&u.addedNodes.length>0&&!zn(u.addedNodes[0])&&(v.searchPseudoElements&&s(u.target),n(u.target)),u.type==="attributes"&&u.target.parentNode&&v.searchPseudoElements&&s(u.target.parentNode),u.type==="attributes"&&zn(u.target)&&~xr.indexOf(u.attributeName))if(u.attributeName==="class"&&oi(u.target)){var h=kt(sn(u.target)),g=h.prefix,w=h.iconName;u.target.setAttribute(nn,g||f),w&&u.target.setAttribute(an,w)}else li(u.target)&&r(u.target)})}}),X&&ht.observe(l,{childList:!0,attributes:!0,characterData:!0,subtree:!0})}}function mi(){ht&&ht.disconnect()}function hi(e){var t=e.getAttribute("style"),n=[];return t&&(n=t.split(";").reduce(function(a,r){var i=r.split(":"),s=i[0],o=i.slice(1);return s&&o.length>0&&(a[s]=o.join(":").trim()),a},{})),n}function vi(e){var t=e.getAttribute("data-prefix"),n=e.getAttribute("data-icon"),a=e.innerText!==void 0?e.innerText.trim():"",r=kt(sn(e));return r.prefix||(r.prefix=re()),t&&n&&(r.prefix=t,r.iconName=n),r.iconName&&r.prefix||(r.prefix&&a.length>0&&(r.iconName=Vr(r.prefix,e.innerText)||cn(r.prefix,Ft(e.innerText))),!r.iconName&&v.autoFetchSvg&&e.firstChild&&e.firstChild.nodeType===Node.TEXT_NODE&&(r.iconName=e.firstChild.data)),r}function pi(e){var t=Se(e.attributes).reduce(function(r,i){return r.name!=="class"&&r.name!=="style"&&(r[i.name]=i.value),r},{}),n=e.getAttribute("title"),a=e.getAttribute("data-fa-title-id");return v.autoA11y&&(n?t["aria-labelledby"]="".concat(v.replacementClass,"-title-").concat(a||De()):(t["aria-hidden"]="true",t.focusable="false")),t}function gi(){return{iconName:null,title:null,titleId:null,prefix:null,transform:Y,symbol:!1,mask:{iconName:null,prefix:null,rest:[]},maskId:null,extra:{classes:[],styles:{},attributes:{}}}}function Dn(e){var t=arguments.length>1&&arguments[1]!==void 0?arguments[1]:{styleParser:!0},n=vi(e),a=n.iconName,r=n.prefix,i=n.rest,s=pi(e),o=Dt("parseNodeAttributes",{},e),l=t.styleParser?hi(e):[];return m({iconName:a,title:e.getAttribute("title"),titleId:e.getAttribute("data-fa-title-id"),prefix:r,transform:Y,mask:{iconName:null,prefix:null,rest:[]},maskId:null,symbol:!1,extra:{classes:i,styles:l,attributes:s}},o)}var bi=W.styles;function Na(e){var t=v.autoReplaceSvg==="nest"?Dn(e,{styleParser:!1}):Dn(e);return~t.extra.classes.indexOf(va)?K("generateLayersText",e,t):K("generateSvgReplacementMutation",e,t)}var ie=new Set;rn.map(function(e){ie.add("fa-".concat(e))});Object.keys(Le[C]).map(ie.add.bind(ie));Object.keys(Le[P]).map(ie.add.bind(ie));ie=Ye(ie);function Gn(e){var t=arguments.length>1&&arguments[1]!==void 0?arguments[1]:null;if(!X)return Promise.resolve();var n=A.documentElement.classList,a=function(u){return n.add("".concat(In,"-").concat(u))},r=function(u){return n.remove("".concat(In,"-").concat(u))},i=v.autoFetchSvg?ie:rn.map(function(f){return"fa-".concat(f)}).concat(Object.keys(bi));i.includes("fa")||i.push("fa");var s=[".".concat(va,":not([").concat(de,"])")].concat(i.map(function(f){return".".concat(f,":not([").concat(de,"])")})).join(", ");if(s.length===0)return Promise.resolve();var o=[];try{o=Se(e.querySelectorAll(s))}catch{}if(o.length>0)a("pending"),r("complete");else return Promise.resolve();var l=dn.begin("onTree"),c=o.reduce(function(f,u){try{var h=Na(u);h&&f.push(h)}catch(g){ha||g.name==="MissingIcon"&&console.error(g)}return f},[]);return new Promise(function(f,u){Promise.all(c).then(function(h){Ma(h,function(){a("active"),a("complete"),r("pending"),typeof t=="function"&&t(),l(),f()})}).catch(function(h){l(),u(h)})})}function yi(e){var t=arguments.length>1&&arguments[1]!==void 0?arguments[1]:null;Na(e).then(function(n){n&&Ma([n],t)})}function wi(e){return function(t){var n=arguments.length>1&&arguments[1]!==void 0?arguments[1]:{},a=(t||{}).icon?t:Gt(t||{}),r=n.mask;return r&&(r=(r||{}).icon?r:Gt(r||{})),e(a,m(m({},n),{},{mask:r}))}}var _i=function(t){var n=arguments.length>1&&arguments[1]!==void 0?arguments[1]:{},a=n.transform,r=a===void 0?Y:a,i=n.symbol,s=i===void 0?!1:i,o=n.mask,l=o===void 0?null:o,c=n.maskId,f=c===void 0?null:c,u=n.title,h=u===void 0?null:u,g=n.titleId,w=g===void 0?null:g,x=n.classes,I=x===void 0?[]:x,d=n.attributes,p=d===void 0?{}:d,b=n.styles,E=b===void 0?{}:b;if(t){var _=t.prefix,G=t.iconName,M=t.icon;return xt(m({type:"icon"},t),function(){return me("beforeDOMElementCreation",{iconDefinition:t,params:n}),v.autoA11y&&(h?p["aria-labelledby"]="".concat(v.replacementClass,"-title-").concat(w||De()):(p["aria-hidden"]="true",p.focusable="false")),un({icons:{main:Ut(M),mask:l?Ut(l.icon):{found:!1,width:null,height:null,icon:{}}},prefix:_,iconName:G,transform:m(m({},Y),r),symbol:s,title:h,maskId:f,titleId:w,extra:{attributes:p,styles:E,classes:I}})})}},ki={mixout:function(){return{icon:wi(_i)}},hooks:function(){return{mutationObserverCallbacks:function(n){return n.treeCallback=Gn,n.nodeCallback=yi,n}}},provides:function(t){t.i2svg=function(n){var a=n.node,r=a===void 0?A:a,i=n.callback,s=i===void 0?function(){}:i;return Gn(r,s)},t.generateSvgReplacementMutation=function(n,a){var r=a.iconName,i=a.title,s=a.titleId,o=a.prefix,l=a.transform,c=a.symbol,f=a.mask,u=a.maskId,h=a.extra;return new Promise(function(g,w){Promise.all([Ht(r,o),f.iconName?Ht(f.iconName,f.prefix):Promise.resolve({found:!1,width:512,height:512,icon:{}})]).then(function(x){var I=en(x,2),d=I[0],p=I[1];g([n,un({icons:{main:d,mask:p},prefix:o,iconName:r,transform:l,symbol:c,maskId:u,title:i,titleId:s,extra:h,watchable:!0})])}).catch(w)})},t.generateAbstractIcon=function(n){var a=n.children,r=n.attributes,i=n.main,s=n.transform,o=n.styles,l=wt(o);l.length>0&&(r.style=l);var c;return on(s)&&(c=K("generateAbstractTransformGrouping",{main:i,transform:s,containerWidth:i.width,iconWidth:i.width})),a.push(c||i.icon),{children:a,attributes:r}}}},xi={mixout:function(){return{layer:function(n){var a=arguments.length>1&&arguments[1]!==void 0?arguments[1]:{},r=a.classes,i=r===void 0?[]:r;return xt({type:"layer"},function(){me("beforeDOMElementCreation",{assembler:n,params:a});var s=[];return n(function(o){Array.isArray(o)?o.map(function(l){s=s.concat(l.abstract)}):s=s.concat(o.abstract)}),[{tag:"span",attributes:{class:["".concat(v.cssPrefix,"-layers")].concat(Ye(i)).join(" ")},children:s}]})}}}},Si={mixout:function(){return{counter:function(n){var a=arguments.length>1&&arguments[1]!==void 0?arguments[1]:{},r=a.title,i=r===void 0?null:r,s=a.classes,o=s===void 0?[]:s,l=a.attributes,c=l===void 0?{}:l,f=a.styles,u=f===void 0?{}:f;return xt({type:"counter",content:n},function(){return me("beforeDOMElementCreation",{content:n,params:a}),ai({content:n.toString(),title:i,extra:{attributes:c,styles:u,classes:["".concat(v.cssPrefix,"-layers-counter")].concat(Ye(o))}})})}}}},Ci={mixout:function(){return{text:function(n){var a=arguments.length>1&&arguments[1]!==void 0?arguments[1]:{},r=a.transform,i=r===void 0?Y:r,s=a.title,o=s===void 0?null:s,l=a.classes,c=l===void 0?[]:l,f=a.attributes,u=f===void 0?{}:f,h=a.styles,g=h===void 0?{}:h;return xt({type:"text",content:n},function(){return me("beforeDOMElementCreation",{content:n,params:a}),Tn({content:n,transform:m(m({},Y),i),title:o,extra:{attributes:u,styles:g,classes:["".concat(v.cssPrefix,"-layers-text")].concat(Ye(c))}})})}}},provides:function(t){t.generateLayersText=function(n,a){var r=a.title,i=a.transform,s=a.extra,o=null,l=null;if(ua){var c=parseInt(getComputedStyle(n).fontSize,10),f=n.getBoundingClientRect();o=f.width/c,l=f.height/c}return v.autoA11y&&!r&&(s.attributes["aria-hidden"]="true"),Promise.resolve([n,Tn({content:n.innerHTML,width:o,height:l,transform:i,title:r,extra:s,watchable:!0})])}}},Ai=new RegExp('"',"ug"),Un=[1105920,1112319];function Ei(e){var t=e.replace(Ai,""),n=Gr(t,0),a=n>=Un[0]&&n<=Un[1],r=t.length===2?t[0]===t[1]:!1;return{value:Ft(r?t[0]:t),isSecondary:a||r}}function Hn(e,t){var n="".concat(vr).concat(t.replace(":","-"));return new Promise(function(a,r){if(e.getAttribute(n)!==null)return a();var i=Se(e.children),s=i.filter(function(M){return M.getAttribute(zt)===t})[0],o=ae.getComputedStyle(e,t),l=o.getPropertyValue("font-family").match(wr),c=o.getPropertyValue("font-weight"),f=o.getPropertyValue("content");if(s&&!l)return e.removeChild(s),a();if(l&&f!=="none"&&f!==""){var u=o.getPropertyValue("content"),h=~["Sharp"].indexOf(l[2])?P:C,g=~["Solid","Regular","Light","Thin","Duotone","Brands","Kit"].indexOf(l[2])?ze[h][l[2].toLowerCase()]:_r[h][c],w=Ei(u),x=w.value,I=w.isSecondary,d=l[0].startsWith("FontAwesome"),p=cn(g,x),b=p;if(d){var E=Br(x);E.iconName&&E.prefix&&(p=E.iconName,g=E.prefix)}if(p&&!I&&(!s||s.getAttribute(nn)!==g||s.getAttribute(an)!==b)){e.setAttribute(n,b),s&&e.removeChild(s);var _=gi(),G=_.extra;G.attributes[zt]=t,Ht(p,g).then(function(M){var S=un(m(m({},_),{},{icons:{main:M,mask:fn()},prefix:g,iconName:b,extra:G,watchable:!0})),y=A.createElementNS("http://www.w3.org/2000/svg","svg");t==="::before"?e.insertBefore(y,e.firstChild):e.appendChild(y),y.outerHTML=S.map(function(z){return Ve(z)}).join(`
`),e.removeAttribute(n),a()}).catch(r)}else a()}else a()})}function Ii(e){return Promise.all([Hn(e,"::before"),Hn(e,"::after")])}function Pi(e){return e.parentNode!==document.head&&!~gr.indexOf(e.tagName.toUpperCase())&&!e.getAttribute(zt)&&(!e.parentNode||e.parentNode.tagName!=="svg")}function Wn(e){if(X)return new Promise(function(t,n){var a=Se(e.querySelectorAll("*")).filter(Pi).map(Ii),r=dn.begin("searchPseudoElements");Ra(),Promise.all(a).then(function(){r(),Yt(),t()}).catch(function(){r(),Yt(),n()})})}var Oi={hooks:function(){return{mutationObserverCallbacks:function(n){return n.pseudoElementsCallback=Wn,n}}},provides:function(t){t.pseudoElements2svg=function(n){var a=n.node,r=a===void 0?A:a;v.searchPseudoElements&&Wn(r)}}},Yn=!1,Mi={mixout:function(){return{dom:{unwatch:function(){Ra(),Yn=!0}}}},hooks:function(){return{bootstrap:function(){jn(Dt("mutationObserverCallbacks",{}))},noAuto:function(){mi()},watch:function(n){var a=n.observeMutationsRoot;Yn?Yt():jn(Dt("mutationObserverCallbacks",{observeMutationsRoot:a}))}}}},$n=function(t){var n={size:16,x:0,y:0,flipX:!1,flipY:!1,rotate:0};return t.toLowerCase().split(" ").reduce(function(a,r){var i=r.toLowerCase().split("-"),s=i[0],o=i.slice(1).join("-");if(s&&o==="h")return a.flipX=!0,a;if(s&&o==="v")return a.flipY=!0,a;if(o=parseFloat(o),isNaN(o))return a;switch(s){case"grow":a.size=a.size+o;break;case"shrink":a.size=a.size-o;break;case"left":a.x=a.x-o;break;case"right":a.x=a.x+o;break;case"up":a.y=a.y-o;break;case"down":a.y=a.y+o;break;case"rotate":a.rotate=a.rotate+o;break}return a},n)},Ri={mixout:function(){return{parse:{transform:function(n){return $n(n)}}}},hooks:function(){return{parseNodeAttributes:function(n,a){var r=a.getAttribute("data-fa-transform");return r&&(n.transform=$n(r)),n}}},provides:function(t){t.generateAbstractTransformGrouping=function(n){var a=n.main,r=n.transform,i=n.containerWidth,s=n.iconWidth,o={transform:"translate(".concat(i/2," 256)")},l="translate(".concat(r.x*32,", ").concat(r.y*32,") "),c="scale(".concat(r.size/16*(r.flipX?-1:1),", ").concat(r.size/16*(r.flipY?-1:1),") "),f="rotate(".concat(r.rotate," 0 0)"),u={transform:"".concat(l," ").concat(c," ").concat(f)},h={transform:"translate(".concat(s/2*-1," -256)")},g={outer:o,inner:u,path:h};return{tag:"g",attributes:m({},g.outer),children:[{tag:"g",attributes:m({},g.inner),children:[{tag:a.icon.tag,children:a.icon.children,attributes:m(m({},a.icon.attributes),g.path)}]}]}}}},Mt={x:0,y:0,width:"100%",height:"100%"};function Vn(e){var t=arguments.length>1&&arguments[1]!==void 0?arguments[1]:!0;return e.attributes&&(e.attributes.fill||t)&&(e.attributes.fill="black"),e}function Ni(e){return e.tag==="g"?e.children:[e]}var Ti={hooks:function(){return{parseNodeAttributes:function(n,a){var r=a.getAttribute("data-fa-mask"),i=r?kt(r.split(" ").map(function(s){return s.trim()})):fn();return i.prefix||(i.prefix=re()),n.mask=i,n.maskId=a.getAttribute("data-fa-mask-id"),n}}},provides:function(t){t.generateAbstractMask=function(n){var a=n.children,r=n.attributes,i=n.main,s=n.mask,o=n.maskId,l=n.transform,c=i.width,f=i.icon,u=s.width,h=s.icon,g=Rr({transform:l,containerWidth:u,iconWidth:c}),w={tag:"rect",attributes:m(m({},Mt),{},{fill:"white"})},x=f.children?{children:f.children.map(Vn)}:{},I={tag:"g",attributes:m({},g.inner),children:[Vn(m({tag:f.tag,attributes:m(m({},f.attributes),g.path)},x))]},d={tag:"g",attributes:m({},g.outer),children:[I]},p="mask-".concat(o||De()),b="clip-".concat(o||De()),E={tag:"mask",attributes:m(m({},Mt),{},{id:p,maskUnits:"userSpaceOnUse",maskContentUnits:"userSpaceOnUse"}),children:[w,d]},_={tag:"defs",children:[{tag:"clipPath",attributes:{id:b},children:Ni(h)},E]};return a.push(_,{tag:"rect",attributes:m({fill:"currentColor","clip-path":"url(#".concat(b,")"),mask:"url(#".concat(p,")")},Mt)}),{children:a,attributes:r}}}},Li={provides:function(t){var n=!1;ae.matchMedia&&(n=ae.matchMedia("(prefers-reduced-motion: reduce)").matches),t.missingIconAbstract=function(){var a=[],r={fill:"currentColor"},i={attributeType:"XML",repeatCount:"indefinite",dur:"2s"};a.push({tag:"path",attributes:m(m({},r),{},{d:"M156.5,447.7l-12.6,29.5c-18.7-9.5-35.9-21.2-51.5-34.9l22.7-22.7C127.6,430.5,141.5,440,156.5,447.7z M40.6,272H8.5 c1.4,21.2,5.4,41.7,11.7,61.1L50,321.2C45.1,305.5,41.8,289,40.6,272z M40.6,240c1.4-18.8,5.2-37,11.1-54.1l-29.5-12.6 C14.7,194.3,10,216.7,8.5,240H40.6z M64.3,156.5c7.8-14.9,17.2-28.8,28.1-41.5L69.7,92.3c-13.7,15.6-25.5,32.8-34.9,51.5 L64.3,156.5z M397,419.6c-13.9,12-29.4,22.3-46.1,30.4l11.9,29.8c20.7-9.9,39.8-22.6,56.9-37.6L397,419.6z M115,92.4 c13.9-12,29.4-22.3,46.1-30.4l-11.9-29.8c-20.7,9.9-39.8,22.6-56.8,37.6L115,92.4z M447.7,355.5c-7.8,14.9-17.2,28.8-28.1,41.5 l22.7,22.7c13.7-15.6,25.5-32.9,34.9-51.5L447.7,355.5z M471.4,272c-1.4,18.8-5.2,37-11.1,54.1l29.5,12.6 c7.5-21.1,12.2-43.5,13.6-66.8H471.4z M321.2,462c-15.7,5-32.2,8.2-49.2,9.4v32.1c21.2-1.4,41.7-5.4,61.1-11.7L321.2,462z M240,471.4c-18.8-1.4-37-5.2-54.1-11.1l-12.6,29.5c21.1,7.5,43.5,12.2,66.8,13.6V471.4z M462,190.8c5,15.7,8.2,32.2,9.4,49.2h32.1 c-1.4-21.2-5.4-41.7-11.7-61.1L462,190.8z M92.4,397c-12-13.9-22.3-29.4-30.4-46.1l-29.8,11.9c9.9,20.7,22.6,39.8,37.6,56.9 L92.4,397z M272,40.6c18.8,1.4,36.9,5.2,54.1,11.1l12.6-29.5C317.7,14.7,295.3,10,272,8.5V40.6z M190.8,50 c15.7-5,32.2-8.2,49.2-9.4V8.5c-21.2,1.4-41.7,5.4-61.1,11.7L190.8,50z M442.3,92.3L419.6,115c12,13.9,22.3,29.4,30.5,46.1 l29.8-11.9C470,128.5,457.3,109.4,442.3,92.3z M397,92.4l22.7-22.7c-15.6-13.7-32.8-25.5-51.5-34.9l-12.6,29.5 C370.4,72.1,384.4,81.5,397,92.4z"})});var s=m(m({},i),{},{attributeName:"opacity"}),o={tag:"circle",attributes:m(m({},r),{},{cx:"256",cy:"364",r:"28"}),children:[]};return n||o.children.push({tag:"animate",attributes:m(m({},i),{},{attributeName:"r",values:"28;14;28;28;14;28;"})},{tag:"animate",attributes:m(m({},s),{},{values:"1;0;1;1;0;1;"})}),a.push(o),a.push({tag:"path",attributes:m(m({},r),{},{opacity:"1",d:"M263.7,312h-16c-6.6,0-12-5.4-12-12c0-71,77.4-63.9,77.4-107.8c0-20-17.8-40.2-57.4-40.2c-29.1,0-44.3,9.6-59.2,28.7 c-3.9,5-11.1,6-16.2,2.4l-13.1-9.2c-5.6-3.9-6.9-11.8-2.6-17.2c21.2-27.2,46.4-44.7,91.2-44.7c52.3,0,97.4,29.8,97.4,80.2 c0,67.6-77.4,63.5-77.4,107.8C275.7,306.6,270.3,312,263.7,312z"}),children:n?[]:[{tag:"animate",attributes:m(m({},s),{},{values:"1;0;0;0;0;1;"})}]}),n||a.push({tag:"path",attributes:m(m({},r),{},{opacity:"0",d:"M232.5,134.5l7,168c0.3,6.4,5.6,11.5,12,11.5h9c6.4,0,11.7-5.1,12-11.5l7-168c0.3-6.8-5.2-12.5-12-12.5h-23 C237.7,122,232.2,127.7,232.5,134.5z"}),children:[{tag:"animate",attributes:m(m({},s),{},{values:"0;0;1;1;0;0;"})}]}),{tag:"g",attributes:{class:"missing"},children:a}}}},zi={hooks:function(){return{parseNodeAttributes:function(n,a){var r=a.getAttribute("data-fa-symbol"),i=r===null?!1:r===""?!0:r;return n.symbol=i,n}}}},Fi=[Lr,ki,xi,Si,Ci,Oi,Mi,Ri,Ti,Li,zi];qr(Fi,{mixoutsTo:L});L.noAuto;L.config;var Ta=L.library;L.dom;L.parse;L.findIconDefinition;L.toHtml;L.icon;L.layer;L.text;L.counter;var ji={prefix:"far",iconName:"star",icon:[576,512,[11088,61446],"f005","M287.9 0c9.2 0 17.6 5.2 21.6 13.5l68.6 141.3 153.2 22.6c9 1.3 16.5 7.6 19.3 16.3s.5 18.1-5.9 24.5L433.6 328.4l26.2 155.6c1.5 9-2.2 18.1-9.7 23.5s-17.3 6-25.3 1.7l-137-73.2L151 509.1c-8.1 4.3-17.9 3.7-25.3-1.7s-11.2-14.5-9.7-23.5l26.2-155.6L31.1 218.2c-6.5-6.4-8.7-15.9-5.9-24.5s10.3-14.9 19.3-16.3l153.2-22.6L266.3 13.5C270.4 5.2 278.7 0 287.9 0zm0 79L235.4 187.2c-3.5 7.1-10.2 12.1-18.1 13.3L99 217.9 184.9 303c5.5 5.5 8.1 13.3 6.8 21L171.4 443.7l105.2-56.2c7.1-3.8 15.6-3.8 22.6 0l105.2 56.2L384.2 324.1c-1.3-7.7 1.2-15.5 6.8-21l85.9-85.1L358.6 200.5c-7.8-1.2-14.6-6.1-18.1-13.3L287.9 79z"]},Di={prefix:"far",iconName:"star-half-stroke",icon:[576,512,["star-half-alt"],"f5c0","M309.5 13.5C305.5 5.2 297.1 0 287.9 0s-17.6 5.2-21.6 13.5L197.7 154.8 44.5 177.5c-9 1.3-16.5 7.6-19.3 16.3s-.5 18.1 5.9 24.5L142.2 328.4 116 483.9c-1.5 9 2.2 18.1 9.7 23.5s17.3 6 25.3 1.7l137-73.2 137 73.2c8.1 4.3 17.9 3.7 25.3-1.7s11.2-14.5 9.7-23.5L433.6 328.4 544.8 218.2c6.5-6.4 8.7-15.9 5.9-24.5s-10.3-14.9-19.3-16.3L378.1 154.8 309.5 13.5zM288 384.7V79.1l52.5 108.1c3.5 7.1 10.2 12.1 18.1 13.3l118.3 17.5L391 303c-5.5 5.5-8.1 13.3-6.8 21l20.2 119.6L299.2 387.5c-3.5-1.9-7.4-2.8-11.2-2.8z"]},Gi={prefix:"fas",iconName:"forward-step",icon:[320,512,["step-forward"],"f051","M52.5 440.6c-9.5 7.9-22.8 9.7-34.1 4.4S0 428.4 0 416V96C0 83.6 7.2 72.3 18.4 67s24.5-3.6 34.1 4.4l192 160L256 241V96c0-17.7 14.3-32 32-32s32 14.3 32 32V416c0 17.7-14.3 32-32 32s-32-14.3-32-32V271l-11.5 9.6-192 160z"]},Ui={prefix:"fas",iconName:"flag",icon:[448,512,[127988,61725],"f024","M64 32C64 14.3 49.7 0 32 0S0 14.3 0 32V64 368 480c0 17.7 14.3 32 32 32s32-14.3 32-32V352l64.3-16.1c41.1-10.3 84.6-5.5 122.5 13.4c44.2 22.1 95.5 24.8 141.7 7.4l34.7-13c12.5-4.7 20.8-16.6 20.8-30V66.1c0-23-24.2-38-44.8-27.7l-9.6 4.8c-46.3 23.2-100.8 23.2-147.1 0c-35.1-17.6-75.4-22-113.5-12.5L64 48V32z"]},Hi={prefix:"fas",iconName:"land-mine-on",icon:[640,512,[],"e51b","M344 24V168c0 13.3-10.7 24-24 24s-24-10.7-24-24V24c0-13.3 10.7-24 24-24s24 10.7 24 24zM192 320c0-17.7 14.3-32 32-32H416c17.7 0 32 14.3 32 32v32H192V320zm-77.3 90.5c8.1-16.3 24.8-26.5 42.9-26.5H482.3c18.2 0 34.8 10.3 42.9 26.5l27.6 55.2C563.5 487 548 512 524.2 512H115.8c-23.8 0-39.3-25-28.6-46.3l27.6-55.2zM36.3 138.3c7.5-10.9 22.5-13.6 33.4-6.1l104 72c10.9 7.5 13.6 22.5 6.1 33.4s-22.5 13.6-33.4 6.1l-104-72c-10.9-7.5-13.6-22.5-6.1-33.4zm534.1-6.1c10.9-7.5 25.8-4.8 33.4 6.1s4.8 25.8-6.1 33.4l-104 72c-10.9 7.5-25.8 4.8-33.4-6.1s-4.8-25.8 6.1-33.4l104-72z"]},Wi={prefix:"fas",iconName:"bullseye",icon:[512,512,[],"f140","M448 256A192 192 0 1 0 64 256a192 192 0 1 0 384 0zM0 256a256 256 0 1 1 512 0A256 256 0 1 1 0 256zm256 80a80 80 0 1 0 0-160 80 80 0 1 0 0 160zm0-224a144 144 0 1 1 0 288 144 144 0 1 1 0-288zM224 256a32 32 0 1 1 64 0 32 32 0 1 1 -64 0z"]},Yi={prefix:"fas",iconName:"star",icon:[576,512,[11088,61446],"f005","M316.9 18C311.6 7 300.4 0 288.1 0s-23.4 7-28.8 18L195 150.3 51.4 171.5c-12 1.8-22 10.2-25.7 21.7s-.7 24.2 7.9 32.7L137.8 329 113.2 474.7c-2 12 3 24.2 12.9 31.3s23 8 33.8 2.3l128.3-68.5 128.3 68.5c10.8 5.7 23.9 4.9 33.8-2.3s14.9-19.3 12.9-31.3L438.5 329 542.7 225.9c8.6-8.5 11.7-21.2 7.9-32.7s-13.7-19.9-25.7-21.7L381.2 150.3 316.9 18z"]},$i={prefix:"fas",iconName:"bomb",icon:[512,512,[128163],"f1e2","M459.1 52.4L442.6 6.5C440.7 2.6 436.5 0 432.1 0s-8.5 2.6-10.4 6.5L405.2 52.4l-46 16.8c-4.3 1.6-7.3 5.9-7.2 10.4c0 4.5 3 8.7 7.2 10.2l45.7 16.8 16.8 45.8c1.5 4.4 5.8 7.5 10.4 7.5s8.9-3.1 10.4-7.5l16.5-45.8 45.7-16.8c4.2-1.5 7.2-5.7 7.2-10.2c0-4.6-3-8.9-7.2-10.4L459.1 52.4zm-132.4 53c-12.5-12.5-32.8-12.5-45.3 0l-2.9 2.9C256.5 100.3 232.7 96 208 96C93.1 96 0 189.1 0 304S93.1 512 208 512s208-93.1 208-208c0-24.7-4.3-48.5-12.2-70.5l2.9-2.9c12.5-12.5 12.5-32.8 0-45.3l-80-80zM200 192c-57.4 0-104 46.6-104 104v8c0 8.8-7.2 16-16 16s-16-7.2-16-16v-8c0-75.1 60.9-136 136-136h8c8.8 0 16 7.2 16 16s-7.2 16-16 16h-8z"]},Vi={prefix:"fas",iconName:"arrows-left-right",icon:[512,512,["arrows-h"],"f07e","M406.6 374.6l96-96c12.5-12.5 12.5-32.8 0-45.3l-96-96c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3L402.7 224l-293.5 0 41.4-41.4c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0l-96 96c-12.5 12.5-12.5 32.8 0 45.3l96 96c12.5 12.5 32.8 12.5 45.3 0s12.5-32.8 0-45.3L109.3 288l293.5 0-41.4 41.4c-12.5 12.5-12.5 32.8 0 45.3s32.8 12.5 45.3 0z"]},Bi={prefix:"fas",iconName:"hourglass",icon:[384,512,[9203,62032,"hourglass-empty"],"f254","M0 32C0 14.3 14.3 0 32 0H64 320h32c17.7 0 32 14.3 32 32s-14.3 32-32 32V75c0 42.4-16.9 83.1-46.9 113.1L237.3 256l67.9 67.9c30 30 46.9 70.7 46.9 113.1v11c17.7 0 32 14.3 32 32s-14.3 32-32 32H320 64 32c-17.7 0-32-14.3-32-32s14.3-32 32-32V437c0-42.4 16.9-83.1 46.9-113.1L146.7 256 78.9 188.1C48.9 158.1 32 117.4 32 75V64C14.3 64 0 49.7 0 32zM96 64V75c0 25.5 10.1 49.9 28.1 67.9L192 210.7l67.9-67.9c18-18 28.1-42.4 28.1-67.9V64H96zm0 384H288V437c0-25.5-10.1-49.9-28.1-67.9L192 301.3l-67.9 67.9c-18 18-28.1 42.4-28.1 67.9v11z"]},Ki={prefix:"fas",iconName:"wand-sparkles",icon:[512,512,[],"f72b","M464 6.1c9.5-8.5 24-8.1 33 .9l8 8c9 9 9.4 23.5 .9 33l-85.8 95.9c-2.6 2.9-4.1 6.7-4.1 10.7V176c0 8.8-7.2 16-16 16H384.2c-4.6 0-8.9 1.9-11.9 5.3L100.7 500.9C94.3 508 85.3 512 75.8 512c-8.8 0-17.3-3.5-23.5-9.8L9.7 459.7C3.5 453.4 0 445 0 436.2c0-9.5 4-18.5 11.1-24.8l111.6-99.8c3.4-3 5.3-7.4 5.3-11.9V272c0-8.8 7.2-16 16-16h34.6c3.9 0 7.7-1.5 10.7-4.1L464 6.1zM432 288c3.6 0 6.7 2.4 7.7 5.8l14.8 51.7 51.7 14.8c3.4 1 5.8 4.1 5.8 7.7s-2.4 6.7-5.8 7.7l-51.7 14.8-14.8 51.7c-1 3.4-4.1 5.8-7.7 5.8s-6.7-2.4-7.7-5.8l-14.8-51.7-51.7-14.8c-3.4-1-5.8-4.1-5.8-7.7s2.4-6.7 5.8-7.7l51.7-14.8 14.8-51.7c1-3.4 4.1-5.8 7.7-5.8zM87.7 69.8l14.8 51.7 51.7 14.8c3.4 1 5.8 4.1 5.8 7.7s-2.4 6.7-5.8 7.7l-51.7 14.8L87.7 218.2c-1 3.4-4.1 5.8-7.7 5.8s-6.7-2.4-7.7-5.8L57.5 166.5 5.8 151.7c-3.4-1-5.8-4.1-5.8-7.7s2.4-6.7 5.8-7.7l51.7-14.8L72.3 69.8c1-3.4 4.1-5.8 7.7-5.8s6.7 2.4 7.7 5.8zM208 0c3.7 0 6.9 2.5 7.8 6.1l6.8 27.3 27.3 6.8c3.6 .9 6.1 4.1 6.1 7.8s-2.5 6.9-6.1 7.8l-27.3 6.8-6.8 27.3c-.9 3.6-4.1 6.1-7.8 6.1s-6.9-2.5-7.8-6.1l-6.8-27.3-27.3-6.8c-3.6-.9-6.1-4.1-6.1-7.8s2.5-6.9 6.1-7.8l27.3-6.8 6.8-27.3c.9-3.6 4.1-6.1 7.8-6.1z"]},Xi={prefix:"fas",iconName:"forward",icon:[512,512,[9193],"f04e","M52.5 440.6c-9.5 7.9-22.8 9.7-34.1 4.4S0 428.4 0 416V96C0 83.6 7.2 72.3 18.4 67s24.5-3.6 34.1 4.4L224 214.3V256v41.7L52.5 440.6zM256 352V256 128 96c0-12.4 7.2-23.7 18.4-29s24.5-3.6 34.1 4.4l192 160c7.3 6.1 11.5 15.1 11.5 24.6s-4.2 18.5-11.5 24.6l-192 160c-9.5 7.9-22.8 9.7-34.1 4.4s-18.4-16.6-18.4-29V352z"]},qi={prefix:"fas",iconName:"xmark",icon:[384,512,[128473,10005,10006,10060,215,"close","multiply","remove","times"],"f00d","M342.6 150.6c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L192 210.7 86.6 105.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3L146.7 256 41.4 361.4c-12.5 12.5-12.5 32.8 0 45.3s32.8 12.5 45.3 0L192 301.3 297.4 406.6c12.5 12.5 32.8 12.5 45.3 0s12.5-32.8 0-45.3L237.3 256 342.6 150.6z"]},Ji={prefix:"fas",iconName:"percent",icon:[384,512,[62101,62785,"percentage"],"25","M374.6 118.6c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0l-320 320c-12.5 12.5-12.5 32.8 0 45.3s32.8 12.5 45.3 0l320-320zM128 128A64 64 0 1 0 0 128a64 64 0 1 0 128 0zM384 384a64 64 0 1 0 -128 0 64 64 0 1 0 128 0z"]},Bn={prefix:"fas",iconName:"robot",icon:[640,512,[129302],"f544","M320 0c17.7 0 32 14.3 32 32V96H472c39.8 0 72 32.2 72 72V440c0 39.8-32.2 72-72 72H168c-39.8 0-72-32.2-72-72V168c0-39.8 32.2-72 72-72H288V32c0-17.7 14.3-32 32-32zM208 384c-8.8 0-16 7.2-16 16s7.2 16 16 16h32c8.8 0 16-7.2 16-16s-7.2-16-16-16H208zm96 0c-8.8 0-16 7.2-16 16s7.2 16 16 16h32c8.8 0 16-7.2 16-16s-7.2-16-16-16H304zm96 0c-8.8 0-16 7.2-16 16s7.2 16 16 16h32c8.8 0 16-7.2 16-16s-7.2-16-16-16H400zM264 256a40 40 0 1 0 -80 0 40 40 0 1 0 80 0zm152 40a40 40 0 1 0 0-80 40 40 0 1 0 0 80zM48 224H64V416H48c-26.5 0-48-21.5-48-48V272c0-26.5 21.5-48 48-48zm544 0c26.5 0 48 21.5 48 48v96c0 26.5-21.5 48-48 48H576V224h16z"]},Qi={prefix:"fas",iconName:"arrows-up-down",icon:[320,512,["arrows-v"],"f07d","M182.6 9.4c-12.5-12.5-32.8-12.5-45.3 0l-96 96c-12.5 12.5-12.5 32.8 0 45.3s32.8 12.5 45.3 0L128 109.3V402.7L86.6 361.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3l96 96c12.5 12.5 32.8 12.5 45.3 0l96-96c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L192 402.7V109.3l41.4 41.4c12.5 12.5 32.8 12.5 45.3 0s12.5-32.8 0-45.3l-96-96z"]},Zi={prefix:"fas",iconName:"dice",icon:[640,512,[127922],"f522","M274.9 34.3c-28.1-28.1-73.7-28.1-101.8 0L34.3 173.1c-28.1 28.1-28.1 73.7 0 101.8L173.1 413.7c28.1 28.1 73.7 28.1 101.8 0L413.7 274.9c28.1-28.1 28.1-73.7 0-101.8L274.9 34.3zM200 224a24 24 0 1 1 48 0 24 24 0 1 1 -48 0zM96 200a24 24 0 1 1 0 48 24 24 0 1 1 0-48zM224 376a24 24 0 1 1 0-48 24 24 0 1 1 0 48zM352 200a24 24 0 1 1 0 48 24 24 0 1 1 0-48zM224 120a24 24 0 1 1 0-48 24 24 0 1 1 0 48zm96 328c0 35.3 28.7 64 64 64H576c35.3 0 64-28.7 64-64V256c0-35.3-28.7-64-64-64H461.7c11.6 36 3.1 77-25.4 105.5L320 413.8V448zM480 328a24 24 0 1 1 0 48 24 24 0 1 1 0-48z"]};function es(e,t){const n=Object.create(null),a=e.split(",");for(let r=0;r<a.length;r++)n[a[r]]=!0;return t?r=>!!n[r.toLowerCase()]:r=>!!n[r]}const ts={},hn=()=>{},ns=(e,t)=>{const n=e.indexOf(t);n>-1&&e.splice(n,1)},as=Object.prototype.hasOwnProperty,vt=(e,t)=>as.call(e,t),T=Array.isArray,Ne=e=>Ct(e)==="[object Map]",rs=e=>Ct(e)==="[object Set]",ee=e=>typeof e=="function",is=e=>typeof e=="string",St=e=>typeof e=="symbol",Ce=e=>e!==null&&typeof e=="object",ss=e=>(Ce(e)||ee(e))&&ee(e.then)&&ee(e.catch),os=Object.prototype.toString,Ct=e=>os.call(e),ls=e=>Ct(e).slice(8,-1),cs=e=>Ct(e)==="[object Object]",vn=e=>is(e)&&e!=="NaN"&&e[0]!=="-"&&""+parseInt(e,10)===e,he=(e,t)=>!Object.is(e,t),fs=(e,t,n)=>{Object.defineProperty(e,t,{configurable:!0,enumerable:!1,value:n})};let Kn;const Xn=()=>Kn||(Kn=typeof globalThis<"u"?globalThis:typeof self<"u"?self:typeof window<"u"?window:typeof global<"u"?global:{});let N;class us{constructor(t=!1){this.detached=t,this._active=!0,this.effects=[],this.cleanups=[],this.parent=N,!t&&N&&(this.index=(N.scopes||(N.scopes=[])).push(this)-1)}get active(){return this._active}run(t){if(this._active){const n=N;try{return N=this,t()}finally{N=n}}}on(){N=this}off(){N=this.parent}stop(t){if(this._active){let n,a;for(n=0,a=this.effects.length;n<a;n++)this.effects[n].stop();for(n=0,a=this.cleanups.length;n<a;n++)this.cleanups[n]();if(this.scopes)for(n=0,a=this.scopes.length;n<a;n++)this.scopes[n].stop(!0);if(!this.detached&&this.parent&&!t){const r=this.parent.scopes.pop();r&&r!==this&&(this.parent.scopes[this.index]=r,r.index=this.index)}this.parent=void 0,this._active=!1}}}function ds(e){return new us(e)}function ms(e,t=N){t&&t.active&&t.effects.push(e)}function La(){return N}function hs(e){N&&N.cleanups.push(e)}const pn=e=>{const t=new Set(e);return t.w=0,t.n=0,t},za=e=>(e.w&se)>0,Fa=e=>(e.n&se)>0,vs=({deps:e})=>{if(e.length)for(let t=0;t<e.length;t++)e[t].w|=se},ps=e=>{const{deps:t}=e;if(t.length){let n=0;for(let a=0;a<t.length;a++){const r=t[a];za(r)&&!Fa(r)?r.delete(e):t[n++]=r,r.w&=~se,r.n&=~se}t.length=n}},pt=new WeakMap;let Pe=0,se=1;const $t=30;let U;const ue=Symbol(""),Vt=Symbol("");class ja{constructor(t,n=null,a){this.fn=t,this.scheduler=n,this.active=!0,this.deps=[],this.parent=void 0,ms(this,a)}run(){if(!this.active)return this.fn();let t=U,n=te;for(;t;){if(t===this)return;t=t.parent}try{return this.parent=U,U=this,te=!0,se=1<<++Pe,Pe<=$t?vs(this):qn(this),this.fn()}finally{Pe<=$t&&ps(this),se=1<<--Pe,U=this.parent,te=n,this.parent=void 0,this.deferStop&&this.stop()}}stop(){U===this?this.deferStop=!0:this.active&&(qn(this),this.onStop&&this.onStop(),this.active=!1)}}function qn(e){const{deps:t}=e;if(t.length){for(let n=0;n<t.length;n++)t[n].delete(e);t.length=0}}let te=!0;const Da=[];function gs(){Da.push(te),te=!1}function bs(){const e=Da.pop();te=e===void 0?!0:e}function D(e,t,n){if(te&&U){let a=pt.get(e);a||pt.set(e,a=new Map);let r=a.get(n);r||a.set(n,r=pn()),Ga(r)}}function Ga(e,t){let n=!1;Pe<=$t?Fa(e)||(e.n|=se,n=!za(e)):n=!e.has(U),n&&(e.add(U),U.deps.push(e))}function ne(e,t,n,a,r,i){const s=pt.get(e);if(!s)return;let o=[];if(t==="clear")o=[...s.values()];else if(n==="length"&&T(e)){const l=Number(a);s.forEach((c,f)=>{(f==="length"||!St(f)&&f>=l)&&o.push(c)})}else switch(n!==void 0&&o.push(s.get(n)),t){case"add":T(e)?vn(n)&&o.push(s.get("length")):(o.push(s.get(ue)),Ne(e)&&o.push(s.get(Vt)));break;case"delete":T(e)||(o.push(s.get(ue)),Ne(e)&&o.push(s.get(Vt)));break;case"set":Ne(e)&&o.push(s.get(ue));break}if(o.length===1)o[0]&&Bt(o[0]);else{const l=[];for(const c of o)c&&l.push(...c);Bt(pn(l))}}function Bt(e,t){const n=T(e)?e:[...e];for(const a of n)a.computed&&Jn(a);for(const a of n)a.computed||Jn(a)}function Jn(e,t){(e!==U||e.allowRecurse)&&(e.scheduler?e.scheduler():e.run())}function ys(e,t){var n;return(n=pt.get(e))==null?void 0:n.get(t)}const ws=es("__proto__,__v_isRef,__isVue"),Ua=new Set(Object.getOwnPropertyNames(Symbol).filter(e=>e!=="arguments"&&e!=="caller").map(e=>Symbol[e]).filter(St)),Qn=_s();function _s(){const e={};return["includes","indexOf","lastIndexOf"].forEach(t=>{e[t]=function(...n){const a=k(this);for(let i=0,s=this.length;i<s;i++)D(a,"get",i+"");const r=a[t](...n);return r===-1||r===!1?a[t](...n.map(k)):r}}),["push","pop","shift","unshift","splice"].forEach(t=>{e[t]=function(...n){gs();const a=k(this)[t].apply(this,n);return bs(),a}}),e}function ks(e){const t=k(this);return D(t,"has",e),t.hasOwnProperty(e)}class Ha{constructor(t=!1,n=!1){this._isReadonly=t,this._shallow=n}get(t,n,a){const r=this._isReadonly,i=this._shallow;if(n==="__v_isReactive")return!r;if(n==="__v_isReadonly")return r;if(n==="__v_isShallow")return i;if(n==="__v_raw")return a===(r?i?Ls:$a:i?Ts:Ya).get(t)||Object.getPrototypeOf(t)===Object.getPrototypeOf(a)?t:void 0;const s=T(t);if(!r){if(s&&vt(Qn,n))return Reflect.get(Qn,n,a);if(n==="hasOwnProperty")return ks}const o=Reflect.get(t,n,a);return(St(n)?Ua.has(n):ws(n))||(r||D(t,"get",n),i)?o:R(o)?s&&vn(n)?o:o.value:Ce(o)?r?Va(o):bn(o):o}}class xs extends Ha{constructor(t=!1){super(!1,t)}set(t,n,a,r){let i=t[n];if(Ge(i)&&R(i)&&!R(a))return!1;if(!this._shallow&&(!gt(a)&&!Ge(a)&&(i=k(i),a=k(a)),!T(t)&&R(i)&&!R(a)))return i.value=a,!0;const s=T(t)&&vn(n)?Number(n)<t.length:vt(t,n),o=Reflect.set(t,n,a,r);return t===k(r)&&(s?he(a,i)&&ne(t,"set",n,a):ne(t,"add",n,a)),o}deleteProperty(t,n){const a=vt(t,n);t[n];const r=Reflect.deleteProperty(t,n);return r&&a&&ne(t,"delete",n,void 0),r}has(t,n){const a=Reflect.has(t,n);return(!St(n)||!Ua.has(n))&&D(t,"has",n),a}ownKeys(t){return D(t,"iterate",T(t)?"length":ue),Reflect.ownKeys(t)}}class Ss extends Ha{constructor(t=!1){super(!0,t)}set(t,n){return!0}deleteProperty(t,n){return!0}}const Cs=new xs,As=new Ss,gn=e=>e,At=e=>Reflect.getPrototypeOf(e);function nt(e,t,n=!1,a=!1){e=e.__v_raw;const r=k(e),i=k(t);n||(he(t,i)&&D(r,"get",t),D(r,"get",i));const{has:s}=At(r),o=a?gn:n?yn:Ue;if(s.call(r,t))return o(e.get(t));if(s.call(r,i))return o(e.get(i));e!==r&&e.get(t)}function at(e,t=!1){const n=this.__v_raw,a=k(n),r=k(e);return t||(he(e,r)&&D(a,"has",e),D(a,"has",r)),e===r?n.has(e):n.has(e)||n.has(r)}function rt(e,t=!1){return e=e.__v_raw,!t&&D(k(e),"iterate",ue),Reflect.get(e,"size",e)}function Zn(e){e=k(e);const t=k(this);return At(t).has.call(t,e)||(t.add(e),ne(t,"add",e,e)),this}function ea(e,t){t=k(t);const n=k(this),{has:a,get:r}=At(n);let i=a.call(n,e);i||(e=k(e),i=a.call(n,e));const s=r.call(n,e);return n.set(e,t),i?he(t,s)&&ne(n,"set",e,t):ne(n,"add",e,t),this}function ta(e){const t=k(this),{has:n,get:a}=At(t);let r=n.call(t,e);r||(e=k(e),r=n.call(t,e)),a&&a.call(t,e);const i=t.delete(e);return r&&ne(t,"delete",e,void 0),i}function na(){const e=k(this),t=e.size!==0,n=e.clear();return t&&ne(e,"clear",void 0,void 0),n}function it(e,t){return function(a,r){const i=this,s=i.__v_raw,o=k(s),l=t?gn:e?yn:Ue;return!e&&D(o,"iterate",ue),s.forEach((c,f)=>a.call(r,l(c),l(f),i))}}function st(e,t,n){return function(...a){const r=this.__v_raw,i=k(r),s=Ne(i),o=e==="entries"||e===Symbol.iterator&&s,l=e==="keys"&&s,c=r[e](...a),f=n?gn:t?yn:Ue;return!t&&D(i,"iterate",l?Vt:ue),{next(){const{value:u,done:h}=c.next();return h?{value:u,done:h}:{value:o?[f(u[0]),f(u[1])]:f(u),done:h}},[Symbol.iterator](){return this}}}}function J(e){return function(...t){return e==="delete"?!1:e==="clear"?void 0:this}}function Es(){const e={get(i){return nt(this,i)},get size(){return rt(this)},has:at,add:Zn,set:ea,delete:ta,clear:na,forEach:it(!1,!1)},t={get(i){return nt(this,i,!1,!0)},get size(){return rt(this)},has:at,add:Zn,set:ea,delete:ta,clear:na,forEach:it(!1,!0)},n={get(i){return nt(this,i,!0)},get size(){return rt(this,!0)},has(i){return at.call(this,i,!0)},add:J("add"),set:J("set"),delete:J("delete"),clear:J("clear"),forEach:it(!0,!1)},a={get(i){return nt(this,i,!0,!0)},get size(){return rt(this,!0)},has(i){return at.call(this,i,!0)},add:J("add"),set:J("set"),delete:J("delete"),clear:J("clear"),forEach:it(!0,!0)};return["keys","values","entries",Symbol.iterator].forEach(i=>{e[i]=st(i,!1,!1),n[i]=st(i,!0,!1),t[i]=st(i,!1,!0),a[i]=st(i,!0,!0)}),[e,n,t,a]}const[Is,Ps,Os,Ms]=Es();function Wa(e,t){const n=t?e?Ms:Os:e?Ps:Is;return(a,r,i)=>r==="__v_isReactive"?!e:r==="__v_isReadonly"?e:r==="__v_raw"?a:Reflect.get(vt(n,r)&&r in a?n:a,r,i)}const Rs={get:Wa(!1,!1)},Ns={get:Wa(!0,!1)},Ya=new WeakMap,Ts=new WeakMap,$a=new WeakMap,Ls=new WeakMap;function zs(e){switch(e){case"Object":case"Array":return 1;case"Map":case"Set":case"WeakMap":case"WeakSet":return 2;default:return 0}}function Fs(e){return e.__v_skip||!Object.isExtensible(e)?0:zs(ls(e))}function bn(e){return Ge(e)?e:Ba(e,!1,Cs,Rs,Ya)}function Va(e){return Ba(e,!0,As,Ns,$a)}function Ba(e,t,n,a,r){if(!Ce(e)||e.__v_raw&&!(t&&e.__v_isReactive))return e;const i=r.get(e);if(i)return i;const s=Fs(e);if(s===0)return e;const o=new Proxy(e,s===2?a:n);return r.set(e,o),o}function we(e){return Ge(e)?we(e.__v_raw):!!(e&&e.__v_isReactive)}function Ge(e){return!!(e&&e.__v_isReadonly)}function gt(e){return!!(e&&e.__v_isShallow)}function k(e){const t=e&&e.__v_raw;return t?k(t):e}function js(e){return fs(e,"__v_skip",!0),e}const Ue=e=>Ce(e)?bn(e):e,yn=e=>Ce(e)?Va(e):e;function Ka(e){te&&U&&(e=k(e),Ga(e.dep||(e.dep=pn())))}function Xa(e,t){e=k(e);const n=e.dep;n&&Bt(n)}function R(e){return!!(e&&e.__v_isRef===!0)}function Ds(e){return Gs(e,!1)}function Gs(e,t){return R(e)?e:new Us(e,t)}class Us{constructor(t,n){this.__v_isShallow=n,this.dep=void 0,this.__v_isRef=!0,this._rawValue=n?t:k(t),this._value=n?t:Ue(t)}get value(){return Ka(this),this._value}set value(t){const n=this.__v_isShallow||gt(t)||Ge(t);t=n?t:k(t),he(t,this._rawValue)&&(this._rawValue=t,this._value=n?t:Ue(t),Xa(this))}}function Hs(e){const t=T(e)?new Array(e.length):{};for(const n in e)t[n]=Ys(e,n);return t}class Ws{constructor(t,n,a){this._object=t,this._key=n,this._defaultValue=a,this.__v_isRef=!0}get value(){const t=this._object[this._key];return t===void 0?this._defaultValue:t}set value(t){this._object[this._key]=t}get dep(){return ys(k(this._object),this._key)}}function Ys(e,t,n){const a=e[t];return R(a)?a:new Ws(e,t,n)}class $s{constructor(t,n,a,r){this._setter=n,this.dep=void 0,this.__v_isRef=!0,this.__v_isReadonly=!1,this._dirty=!0,this.effect=new ja(t,()=>{this._dirty||(this._dirty=!0,Xa(this))}),this.effect.computed=this,this.effect.active=this._cacheable=!r,this.__v_isReadonly=a}get value(){const t=k(this);return Ka(t),(t._dirty||!t._cacheable)&&(t._dirty=!1,t._value=t.effect.run()),t._value}set value(t){this._setter(t)}}function Vs(e,t,n=!1){let a,r;const i=ee(e);return i?(a=e,r=hn):(a=e.get,r=e.set),new $s(a,r,i||!r,n)}function _e(e,t,n,a){let r;try{r=a?e(...a):e()}catch(i){qa(i,t,n)}return r}function Kt(e,t,n,a){if(ee(e)){const i=_e(e,t,n,a);return i&&ss(i)&&i.catch(s=>{qa(s,t,n)}),i}const r=[];for(let i=0;i<e.length;i++)r.push(Kt(e[i],t,n,a));return r}function qa(e,t,n,a=!0){const r=t?t.vnode:null;if(t){let i=t.parent;const s=t.proxy,o=n;for(;i;){const c=i.ec;if(c){for(let f=0;f<c.length;f++)if(c[f](e,s,o)===!1)return}i=i.parent}const l=t.appContext.config.errorHandler;if(l){_e(l,null,10,[e,s,o]);return}}Bs(e,n,r,a)}function Bs(e,t,n,a=!0){console.error(e)}let bt=!1,Xt=!1;const H=[];let Z=0;const ke=[];let $=null,le=0;const Ja=Promise.resolve();let wn=null;function Ks(e){const t=wn||Ja;return e?t.then(this?e.bind(this):e):t}function Xs(e){let t=Z+1,n=H.length;for(;t<n;){const a=t+n>>>1,r=H[a],i=He(r);i<e||i===e&&r.pre?t=a+1:n=a}return t}function qs(e){(!H.length||!H.includes(e,bt&&e.allowRecurse?Z+1:Z))&&(e.id==null?H.push(e):H.splice(Xs(e.id),0,e),Qa())}function Qa(){!bt&&!Xt&&(Xt=!0,wn=Ja.then(Za))}function Js(e){T(e)?ke.push(...e):(!$||!$.includes(e,e.allowRecurse?le+1:le))&&ke.push(e),Qa()}function Qs(e){if(ke.length){const t=[...new Set(ke)];if(ke.length=0,$){$.push(...t);return}for($=t,$.sort((n,a)=>He(n)-He(a)),le=0;le<$.length;le++)$[le]();$=null,le=0}}const He=e=>e.id==null?1/0:e.id,Zs=(e,t)=>{const n=He(e)-He(t);if(n===0){if(e.pre&&!t.pre)return-1;if(t.pre&&!e.pre)return 1}return n};function Za(e){Xt=!1,bt=!0,H.sort(Zs);const t=hn;try{for(Z=0;Z<H.length;Z++){const n=H[Z];n&&n.active!==!1&&_e(n,null,14)}}finally{Z=0,H.length=0,Qs(),bt=!1,wn=null,(H.length||ke.length)&&Za()}}let er=null;function eo(e,t){t&&t.pendingBranch?T(e)?t.effects.push(...e):t.effects.push(e):Js(e)}const ot={};function to(e,t,n){return no(e,t,n)}function no(e,t,{immediate:n,deep:a,flush:r,onTrack:i,onTrigger:s}=ts){var o;const l=La()===((o=We)==null?void 0:o.scope)?We:null;let c,f=!1,u=!1;if(R(e)?(c=()=>e.value,f=gt(e)):we(e)?(c=()=>e,a=!0):T(e)?(u=!0,f=e.some(b=>we(b)||gt(b)),c=()=>e.map(b=>{if(R(b))return b.value;if(we(b))return be(b);if(ee(b))return _e(b,l,2)})):ee(e)?t?c=()=>_e(e,l,2):c=()=>{if(!(l&&l.isUnmounted))return h&&h(),Kt(e,l,3,[g])}:c=hn,t&&a){const b=c;c=()=>be(b())}let h,g=b=>{h=d.onStop=()=>{_e(b,l,4),h=d.onStop=void 0}},w=u?new Array(e.length).fill(ot):ot;const x=()=>{if(d.active)if(t){const b=d.run();(a||f||(u?b.some((E,_)=>he(E,w[_])):he(b,w)))&&(h&&h(),Kt(t,l,3,[b,w===ot?void 0:u&&w[0]===ot?[]:w,g]),w=b)}else d.run()};x.allowRecurse=!!t;let I;r==="sync"?I=x:r==="post"?I=()=>aa(x,l&&l.suspense):(x.pre=!0,l&&(x.id=l.uid),I=()=>qs(x));const d=new ja(c,I);return t?n?x():w=d.run():r==="post"?aa(d.run.bind(d),l&&l.suspense):d.run(),()=>{d.stop(),l&&l.scope&&ns(l.scope.effects,d)}}function be(e,t){if(!Ce(e)||e.__v_skip||(t=t||new Set,t.has(e)))return e;if(t.add(e),R(e))be(e.value,t);else if(T(e))for(let n=0;n<e.length;n++)be(e[n],t);else if(rs(e)||Ne(e))e.forEach(n=>{be(n,t)});else if(cs(e))for(const n in e)be(e[n],t);return e}let qt=null;function ao(e,t,n=!1){const a=We||er;if(a||qt){const r=a?a.parent==null?a.vnode.appContext&&a.vnode.appContext.provides:a.parent.provides:qt._context.provides;if(r&&e in r)return r[e];if(arguments.length>1)return n&&ee(t)?t.call(a&&a.proxy):t}}function ro(){return!!(We||er||qt)}const aa=eo;let We=null,Rt,ra="__VUE_INSTANCE_SETTERS__";(Rt=Xn()[ra])||(Rt=Xn()[ra]=[]),Rt.push(e=>We=e);let io=!1;const so=(e,t)=>Vs(e,t,io);var oo=typeof globalThis<"u"?globalThis:typeof window<"u"?window:typeof global<"u"?global:typeof self<"u"?self:{},lo={exports:{}};(function(e){(function(t){var n=function(d,p,b){if(!c(p)||u(p)||h(p)||g(p)||l(p))return p;var E,_=0,G=0;if(f(p))for(E=[],G=p.length;_<G;_++)E.push(n(d,p[_],b));else{E={};for(var M in p)Object.prototype.hasOwnProperty.call(p,M)&&(E[d(M,b)]=n(d,p[M],b))}return E},a=function(d,p){p=p||{};var b=p.separator||"_",E=p.split||/(?=[A-Z])/;return d.split(E).join(b)},r=function(d){return w(d)?d:(d=d.replace(/[\-_\s]+(.)?/g,function(p,b){return b?b.toUpperCase():""}),d.substr(0,1).toLowerCase()+d.substr(1))},i=function(d){var p=r(d);return p.substr(0,1).toUpperCase()+p.substr(1)},s=function(d,p){return a(d,p).toLowerCase()},o=Object.prototype.toString,l=function(d){return typeof d=="function"},c=function(d){return d===Object(d)},f=function(d){return o.call(d)=="[object Array]"},u=function(d){return o.call(d)=="[object Date]"},h=function(d){return o.call(d)=="[object RegExp]"},g=function(d){return o.call(d)=="[object Boolean]"},w=function(d){return d=d-0,d===d},x=function(d,p){var b=p&&"process"in p?p.process:p;return typeof b!="function"?d:function(E,_){return b(E,d,_)}},I={camelize:r,decamelize:s,pascalize:i,depascalize:s,camelizeKeys:function(d,p){return n(x(r,p),d)},decamelizeKeys:function(d,p){return n(x(s,p),d,p)},pascalizeKeys:function(d,p){return n(x(i,p),d)},depascalizeKeys:function(){return this.decamelizeKeys.apply(this,arguments)}};e.exports?e.exports=I:t.humps=I})(oo)})(lo);var co=!1;try{co=!0}catch{}/*!
 * pinia v2.1.7
 * (c) 2023 Eduardo San Martin Morote
 * @license MIT
 */let tr;const _n=e=>tr=e,fo=Symbol();function Jt(e){return e&&typeof e=="object"&&Object.prototype.toString.call(e)==="[object Object]"&&typeof e.toJSON!="function"}var Te;(function(e){e.direct="direct",e.patchObject="patch object",e.patchFunction="patch function"})(Te||(Te={}));const nr=()=>{};function ia(e,t,n,a=nr){e.push(t);const r=()=>{const i=e.indexOf(t);i>-1&&(e.splice(i,1),a())};return!n&&La()&&hs(r),r}function ve(e,...t){e.slice().forEach(n=>{n(...t)})}const uo=e=>e();function Qt(e,t){e instanceof Map&&t instanceof Map&&t.forEach((n,a)=>e.set(a,n)),e instanceof Set&&t instanceof Set&&t.forEach(e.add,e);for(const n in t){if(!t.hasOwnProperty(n))continue;const a=t[n],r=e[n];Jt(r)&&Jt(a)&&e.hasOwnProperty(n)&&!R(a)&&!we(a)?e[n]=Qt(r,a):e[n]=a}return e}const mo=Symbol();function ho(e){return!Jt(e)||!e.hasOwnProperty(mo)}const{assign:Q}=Object;function vo(e){return!!(R(e)&&e.effect)}function po(e,t,n,a){const{state:r,actions:i,getters:s}=t,o=n.state.value[e];let l;function c(){o||(n.state.value[e]=r?r():{});const f=Hs(n.state.value[e]);return Q(f,i,Object.keys(s||{}).reduce((u,h)=>(u[h]=js(so(()=>{_n(n);const g=n._s.get(e);return s[h].call(g,g)})),u),{}))}return l=ar(e,c,t,n,a,!0),l}function ar(e,t,n={},a,r,i){let s;const o=Q({actions:{}},n),l={deep:!0};let c,f,u=[],h=[],g;const w=a.state.value[e];!i&&!w&&(a.state.value[e]={}),Ds({});let x;function I(S){let y;c=f=!1,typeof S=="function"?(S(a.state.value[e]),y={type:Te.patchFunction,storeId:e,events:g}):(Qt(a.state.value[e],S),y={type:Te.patchObject,payload:S,storeId:e,events:g});const z=x=Symbol();Ks().then(()=>{x===z&&(c=!0)}),f=!0,ve(u,y,a.state.value[e])}const d=i?function(){const{state:y}=n,z=y?y():{};this.$patch(oe=>{Q(oe,z)})}:nr;function p(){s.stop(),u=[],h=[],a._s.delete(e)}function b(S,y){return function(){_n(a);const z=Array.from(arguments),oe=[],Ae=[];function rr(F){oe.push(F)}function ir(F){Ae.push(F)}ve(h,{args:z,name:S,store:_,after:rr,onError:ir});let Ee;try{Ee=y.apply(this&&this.$id===e?this:_,z)}catch(F){throw ve(Ae,F),F}return Ee instanceof Promise?Ee.then(F=>(ve(oe,F),F)).catch(F=>(ve(Ae,F),Promise.reject(F))):(ve(oe,Ee),Ee)}}const E={_p:a,$id:e,$onAction:ia.bind(null,h),$patch:I,$reset:d,$subscribe(S,y={}){const z=ia(u,S,y.detached,()=>oe()),oe=s.run(()=>to(()=>a.state.value[e],Ae=>{(y.flush==="sync"?f:c)&&S({storeId:e,type:Te.direct,events:g},Ae)},Q({},l,y)));return z},$dispose:p},_=bn(E);a._s.set(e,_);const M=(a._a&&a._a.runWithContext||uo)(()=>a._e.run(()=>(s=ds()).run(t)));for(const S in M){const y=M[S];if(R(y)&&!vo(y)||we(y))i||(w&&ho(y)&&(R(y)?y.value=w[S]:Qt(y,w[S])),a.state.value[e][S]=y);else if(typeof y=="function"){const z=b(S,y);M[S]=z,o.actions[S]=y}}return Q(_,M),Q(k(_),M),Object.defineProperty(_,"$state",{get:()=>a.state.value[e],set:S=>{I(y=>{Q(y,S)})}}),a._p.forEach(S=>{Q(_,s.run(()=>S({store:_,app:a._a,pinia:a,options:o})))}),w&&i&&n.hydrate&&n.hydrate(_.$state,w),c=!0,f=!0,_}function go(e,t,n){let a,r;const i=typeof t=="function";typeof e=="string"?(a=e,r=i?n:t):(r=e,a=e.id);function s(o,l){const c=ro();return o=o||(c?ao(fo,null):null),o&&_n(o),o=tr,o._s.has(a)||(i?ar(a,t,r,o):po(a,r,o)),o._s.get(a)}return s.$id=a,s}var Oe=(e=>(e[e.HINT=0]="HINT",e[e.FORWARD_STEP=1]="FORWARD_STEP",e[e.PLAY=2]="PLAY",e[e.GUESS=3]="GUESS",e))(Oe||{});const ft={Beginner:{height:9,width:9,mines:10},Intermediate:{height:16,width:16,mines:40},Expert:{height:16,width:30,mines:99}};var ut=(e=>(e[e.NONE=0]="NONE",e[e.LEFT=1]="LEFT",e[e.RIGHT=2]="RIGHT",e[e.BOTH=3]="BOTH",e))(ut||{});class bo{_id;mine;minesCount;revealed;_beingPressed;_flagged;_aiMarkedMine;_aiMarkedSafe;_aiGuessed;constructor(t){this.mine=!1,this.revealed=!1,this.minesCount=0,this._aiMarkedMine=!1,this._aiMarkedSafe=!1,this._flagged=!1,this._aiGuessed=!1,this._beingPressed=!1,this._id=t}get id(){return this._id}get beingPressed(){return this._beingPressed}set beingPressed(t){this._beingPressed=t}get flagged(){return this._flagged}set flagged(t){this._flagged=t}get aiGuessed(){return this._aiGuessed}set aiGuessed(t){this._aiGuessed=t}get hasMine(){return this.mine}set hasMine(t){this.mine=t}get minesAround(){return this.minesCount}set minesAround(t){this.minesCount=t}get aiMarkedMine(){return this._aiMarkedMine}set aiMarkedMine(t){this._aiMarkedMine=t}get aiMarkedSafe(){return this._aiMarkedSafe}set aiMarkedSafe(t){this._aiMarkedSafe=t}isRevealed(){return this.revealed}isNotRevealed(){return!this.revealed}reveal(){this.revealed=!0}}class Zt{properties;cells;totalCells;initialized;constructor(t){this.initialized=!1,this.properties=t,this.totalCells=this.properties.height*this.properties.width,this.cells=Array.from(Array(this.totalCells)).map((n,a)=>new bo(a))}isInitialized(){return this.initialized}getCellById(t){return this.cells.find(n=>n.id===t)}getCellByLocation(t,n){return this.cells[this.properties.width*n+t]}initializeMinesAroundCell(t){const n=this.getAdjacentCells(t).concat(t),a=this.properties.height*this.properties.width;return Array.from(Array(a).keys()).filter(i=>!n.find(s=>s.id===i)).sort(()=>Math.random()-.5).filter((i,s)=>s<this.properties.mines).sort((i,s)=>i-s).map(i=>this.cells[i]).forEach((i,s)=>i.hasMine=!0),this.cells.forEach(i=>i.minesAround=this.getMinesSurrounding(i)),this.initialized=!0,this.revealCell(t)}getNotRevealedCells(){return this.cells.filter(t=>t.isNotRevealed())}getRevealedCells(){return this.cells.filter(t=>t.isRevealed())}isGameLost(){return this.cells.some(t=>t.hasMine&&t.isRevealed())}isGameWon(){const t=this.cells.filter(n=>n.isNotRevealed());return t.every(n=>n.hasMine)&&t.length===this.properties.mines}isGameFinished(){return this.isGameLost()||this.isGameWon()}revealCell(t){if(t.isNotRevealed()){const n=[t];if(t.reveal(),t.hasMine){const a=this.cells.filter(r=>r.hasMine);return a.filter(r=>!r.flagged).forEach(r=>r.reveal()),a}else{if(t.minesAround===0){const a=this.getAdjacentCells(t).filter(r=>r.isNotRevealed()&&!r.flagged).map(r=>this.revealCell(r)).flat();n.push(...a)}return n}}return[]}getAdjacentCells(t){const n={x:t.id%this.properties.width,y:Math.floor(t.id/this.properties.width)},a=[];for(let r of[-1,0,1])for(let i of[-1,0,1]){const s=n.x+i,o=n.y+r;s<0||s>this.properties.width-1||o<0||o>this.properties.height-1||i===0&&r===0||a.push(this.getCellByLocation(s,o))}return a}getMinesSurrounding(t){return this.getAdjacentCells(t).filter(a=>a.hasMine).length}}const yo="modulepreload",wo=function(e){return"/minesweeper-ai/"+e},sa={},_o=function(t,n,a){if(!n||n.length===0)return t();const r=document.getElementsByTagName("link");return Promise.all(n.map(i=>{if(i=wo(i),i in sa)return;sa[i]=!0;const s=i.endsWith(".css"),o=s?'[rel="stylesheet"]':"";if(!!a)for(let f=r.length-1;f>=0;f--){const u=r[f];if(u.href===i&&(!s||u.rel==="stylesheet"))return}else if(document.querySelector(`link[href="${i}"]${o}`))return;const c=document.createElement("link");if(c.rel=s?"stylesheet":yo,s||(c.as="script",c.crossOrigin=""),c.href=i,document.head.appendChild(c),s)return new Promise((f,u)=>{c.addEventListener("load",f),c.addEventListener("error",()=>u(new Error(`Unable to preload CSS for ${i}`)))})})).then(()=>t()).catch(i=>{const s=new Event("vite:preloadError",{cancelable:!0});if(s.payload=i,window.dispatchEvent(s),!s.defaultPrevented)throw i})};async function ko(e,t={}){const n={env:Object.assign(Object.create(globalThis),t.env||{},{abort(c,f,u,h){c=s(c>>>0),f=s(f>>>0),u=u>>>0,h=h>>>0,(()=>{throw Error(`${c} in ${f}:${u}:${h}`)})()},seed(){return(()=>Date.now()*Math.random())()},"console.log"(c){c=s(c>>>0),console.log(c)}})},{exports:a}=await WebAssembly.instantiate(e,n),r=a.memory||t.env.memory,i=Object.setPrototypeOf({update(c){return c=o(c)||l(),s(a.update(c)>>>0)},guess(c){return c=o(c)||l(),s(a.guess(c)>>>0)}},a);function s(c){if(!c)return null;const f=c+new Uint32Array(r.buffer)[c-4>>>2]>>>1,u=new Uint16Array(r.buffer);let h=c>>>1,g="";for(;f-h>1024;)g+=String.fromCharCode(...u.subarray(h,h+=1024));return g+String.fromCharCode(...u.subarray(h,f))}function o(c){if(c==null)return 0;const f=c.length,u=a.__new(f<<1,2)>>>0,h=new Uint16Array(r.buffer);for(let g=0;g<f;++g)h[(u>>>1)+g]=c.charCodeAt(g);return u}function l(){throw TypeError("value must not be null")}return i}const{memory:Io,update:xo,guess:So,tests:Po}=await(async e=>ko(await(async()=>{try{return await globalThis.WebAssembly.compileStreaming(globalThis.fetch(e))}catch{return globalThis.WebAssembly.compile(await(await _o(()=>import("./__vite-browser-external-b25bb000.js"),[])).readFile(e))}})(),{}))(new URL("/minesweeper-ai/assembly-82ab268a.wasm",self.location));var yt=(e=>(e[e.UPDATE=0]="UPDATE",e[e.GUESS=1]="GUESS",e))(yt||{});postMessage({ready:!0});self.onmessage=e=>{const t=e.data;try{switch(t.action){case 0:const n=JSON.parse(xo(t.board)),a={messageId:t.messageId,update:n};self.postMessage(a);break;case 1:const r=JSON.parse(So(t.board)),i={messageId:t.messageId,guess:r};self.postMessage(i);break}}catch(n){console.log(`WW ${t} got exception: `+yt[t.action]),console.error(n),self.postMessage(n)}};function Co(){return new Worker("/minesweeper-ai/WebWorker-479a9628.js",{type:"module"})}class Et{static solversCounter=0;solverId=Et.solversCounter++;worker;board;promisesResolves;readyPromiseResolve;_knownSafeCellsIds;_knownMineCellsIds;_guesses;_AiUpdates;constructor(t){this.worker=new Co,this.readyPromiseResolve=new Promise(n=>{this.worker.onmessage=a=>{this.createWorkerHooks(),n()}}),this.board=t,this._AiUpdates=0,this._knownSafeCellsIds=[],this._knownMineCellsIds=[],this._guesses=[],this.promisesResolves=[]}async waitUntilItsReady(){return this.readyPromiseResolve}get aiUpdates(){return this._AiUpdates}terminate(){this.worker.terminate()}async process(){return new Promise(t=>{++this._AiUpdates;const n=this.createModel(),a={webworkerId:this.solverId,action:yt.UPDATE,board:JSON.stringify(n),messageId:this.promisesResolves.length};this.promisesResolves.push(t),this.worker.postMessage(a)})}makeGuess(){return new Promise(t=>{const n=this.createModel(),a={webworkerId:this.solverId,action:yt.GUESS,board:JSON.stringify(n),messageId:this.promisesResolves.length};this.promisesResolves.push(t),this.worker.postMessage(a)})}createWorkerHooks(){this.worker.onerror=async t=>console.error(t),this.worker.onmessage=async t=>{t.data.update?(this._knownMineCellsIds=t.data.update.knownMineCellsIds,this._knownSafeCellsIds=t.data.update.knownSafeCellsIds,this.promisesResolves[t.data.messageId](t.data.update)):t.data.guess&&(this._guesses.push(t.data.guess),this.promisesResolves[t.data.messageId](t.data.guess))}}createModel(){return{properties:this.board.properties,cells:this.board.cells.map(t=>({_id:t.id,minesCount:t.isRevealed()?t.minesAround:void 0,revealed:t.isRevealed()}))}}get knownSafeCellsIds(){return this._knownSafeCellsIds}get knownMineCellsIds(){return this._knownMineCellsIds}get guesses(){return this._guesses}}let j;const Ao="mineSweeper";go(Ao,{state:()=>{const e=ft.Expert,t=new Zt(e);return{timer:0,timerInterval:void 0,boardProperties:e,board:t,aiIsThinking:!1,explodedBombId:void 0,gameOver:!1,victory:void 0,gameIsRunning:!1}},actions:{async createNewBoard(e){this.boardProperties=e;const t=new Zt(e);this.board=t,j?.terminate(),j=new Et(t),this.gameIsRunning=!1,this.gameOver=!1,this.explodedBombId=void 0,this.victory=void 0,this.timer=0,clearInterval(this.timerInterval),await j.waitUntilItsReady()},unflagCell(e){const t=this.board.getCellById(e);t.aiMarkedMine||(t.aiMarkedMine=!1,t.flagged=!1)},flagCell(e){const t=this.board.getCellById(e);t.flagged=!0},checkGameOver(){return this.board.isGameLost()||this.board.isGameWon()},pressedMouseEnterEvent(e,t){if(t===ut.NONE||t===ut.RIGHT||e.flagged||this.gameOver)return;const n=[e];(t===ut.BOTH||e.isRevealed())&&n.push(...this.board.getAdjacentCells(e).concat(e)),this.board.cells.filter(a=>a.isNotRevealed()&&!a.flagged).forEach(a=>{n.find(r=>r.id===a.id)&&a.isNotRevealed()?a.beingPressed=!0:a.beingPressed=!1})},pressedMouseLeaveEvent(e,t){this.board.cells.forEach(n=>n.beingPressed=!1)},cellClick(e){this.gameIsRunning||(clearInterval(this.timerInterval),this.timerInterval=setInterval(()=>{this.gameOver||(this.timer+=1)},100)),this.gameIsRunning=!0,this.board.isInitialized()?this.board.revealCell(e):this.board.initializeMinesAroundCell(e),this.checkGameOver()&&(this.board.isGameLost()&&(this.explodedBombId=e.id),this.finishGame())},cellChorded(e){const t=this.board.getAdjacentCells(e);t.filter(a=>a.flagged).length===e.minesAround&&t.filter(a=>a.isNotRevealed()&&!a.flagged).forEach(a=>this.cellClick(a))},finishGame(){j?.terminate(),this.gameIsRunning=!1,this.gameOver=!0,this.victory=this.board.isGameWon(),clearInterval(this.timerInterval)},async aiAction(e){switch(e){case Oe.HINT:await j?.process(),await this.putAiStamp();break;case Oe.FORWARD_STEP:await this.aiPlayOneStep();break;case Oe.PLAY:await this.aiPlay();break;case Oe.GUESS:this.gameIsRunning||await this.createNewBoard(this.boardProperties);const t=await j?.makeGuess(),n=this.board.getCellById(t.id);n.aiGuessed=!0,this.cellClick(n);break}},async aiPlay(){console.log("thinking"),this.aiIsThinking=!0;do await j?.process();while(await this.updateCellStates());this.aiIsThinking=!1,console.log("done thinking"),this.checkGameOver()&&this.finishGame()},async aiPlayOneStep(){console.log("thinking"),this.aiIsThinking=!0,await j?.process(),await this.updateCellStates(),this.aiIsThinking=!1,console.log("done thinking"),this.checkGameOver()&&this.finishGame()},async updateCellStates(){return this.putAiStamp(),j.knownSafeCellsIds.filter(t=>this.board.cells[t].isNotRevealed()).map(t=>this.board.getCellById(t)).filter(t=>!t.flagged).map(t=>this.board.revealCell(t)).length>0},async putAiStamp(){return j.knownMineCellsIds.concat(j.knownSafeCellsIds).map(e=>this.board.getCellById(e)).filter(e=>e.isNotRevealed()).filter(e=>!e.flagged).forEach(e=>{j?.knownMineCellsIds.includes(e?.id)?(e.flagged=!0,e.aiMarkedMine=!0):e.aiMarkedSafe=!0})}}});class Nt{boardConfiguration;workers;numberOfGames;filename;constructor(t,n){this.boardConfiguration=t,this.workers=n?.workers||20,this.numberOfGames=n?.numberOfGames||1e3,this.filename=n?.filename}async run(){const t=[],n=this.numberOfGames/this.workers;for(let r=0;r<n;++r){const i=[];for(let s=0;s<this.workers;++s)i.push(this.playOneGame());t.push(...await Promise.all(i)),console.log(`Generating report ${this.filename}: ${Math.trunc(1e4*t.length/this.numberOfGames)/100}%`)}const a=this.generateReport(t);return this.save(a),Math.trunc(1e4*a.victoryRatio)/100}async playOneGame(){const t=this.boardConfiguration.height*this.boardConfiguration.width,n=new Zt(this.boardConfiguration),a=new Et(n);await a.waitUntilItsReady();const r=await a.makeGuess();for(n.initializeMinesAroundCell(n.getCellById(r.id));!n.isGameFinished();){await a.process();const o=a.knownSafeCellsIds.filter(l=>n.cells[l].isNotRevealed());if(o.length>0)o.forEach(l=>n.revealCell(n.getCellById(l)));else{const l=await a.makeGuess();n.revealCell(n.getCellById(l.id))}}const i=a.guesses.filter((o,l)=>l>0&&o.mines>0);return a.terminate(),{victory:n.isGameWon(),mineCellsFoundRatio:a.knownMineCellsIds.length/this.boardConfiguration.mines,safeCellsFoundRatio:a.knownSafeCellsIds.length/t,aiUpdates:a.aiUpdates,guesses:i,guessFactor:i.reduce((o,l)=>o*(l.mines/l.cells),1)}}generateReport(t){const n=t.filter(r=>r.victory),a=t.filter(r=>!r.victory);return{timestamp:Date.now(),boardProperties:this.boardConfiguration,victoryRatio:t.filter(r=>r.victory).length/t.length,totalGames:t.length,victoryGuessesAvg:n.reduce((r,i)=>i.guesses.length+r,0)/n.length,victoryGuessFactorAverage:n.reduce((r,i)=>i.guessFactor+r,0)/n.length,lossGuessesAvg:a.reduce((r,i)=>i.guesses.length+r,0)/a.length,lossesMinesCellsFoundRatioAverage:a.reduce((r,i)=>i.mineCellsFoundRatio+r,0)/a.length,lossesSafeCellsFoundRatioAverage:a.reduce((r,i)=>i.safeCellsFoundRatio+r,0)/a.length,lossesAiUpdatesAverage:a.reduce((r,i)=>i.aiUpdates+r,0)/a.length,games:t}}save(t){const n=document.createElement("a"),a=new Blob([JSON.stringify(t)],{type:"text/json"});n.href=URL.createObjectURL(a),t.url=window.location.href,n.download=`${this.filename}-${t.timestamp}.json`,document.body.appendChild(n),n.click(),URL.revokeObjectURL(n.href),document.body.removeChild(n)}}Ta.add($i,Ui,qi,Zi,Ki,Xi,Bn,Hi,Vi,Qi,Ji,Bi,Bn,Yi,Wi,Gi);Ta.add(ji,Di);const Eo=async e=>{await new Nt(ft.Beginner,{numberOfGames:2e3,workers:20,filename:e+"-beginner"}).run(),await new Nt(ft.Intermediate,{numberOfGames:2e3,workers:20,filename:e+"-intermediate"}).run(),await new Nt(ft.Expert,{numberOfGames:2e3,workers:20,filename:e+"-expert"}).run()};Eo("corner-edge");
