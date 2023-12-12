(function(){const e=document.createElement("link").relList;if(e&&e.supports&&e.supports("modulepreload"))return;for(const r of document.querySelectorAll('link[rel="modulepreload"]'))a(r);new MutationObserver(r=>{for(const i of r)if(i.type==="childList")for(const o of i.addedNodes)o.tagName==="LINK"&&o.rel==="modulepreload"&&a(o)}).observe(document,{childList:!0,subtree:!0});function n(r){const i={};return r.integrity&&(i.integrity=r.integrity),r.referrerPolicy&&(i.referrerPolicy=r.referrerPolicy),r.crossOrigin==="use-credentials"?i.credentials="include":r.crossOrigin==="anonymous"?i.credentials="omit":i.credentials="same-origin",i}function a(r){if(r.ep)return;r.ep=!0;const i=n(r);fetch(r.href,i)}})();class an{_id;mine;minesCount;revealed;_flagged;_aiMarkedMine;_aiMarkedSafe;constructor(e){this.mine=!1,this.revealed=!1,this.minesCount=0,this._aiMarkedMine=!1,this._aiMarkedSafe=!1,this._flagged=!1,this._id=e}get id(){return this._id}get flagged(){return this._flagged}set flagged(e){this._flagged=e}get hasMine(){return this.mine}set hasMine(e){this.mine=e}get minesAround(){return this.minesCount}set minesAround(e){this.minesCount=e}get aiMarkedMine(){return this._aiMarkedMine}set aiMarkedMine(e){this._aiMarkedMine=e}get aiMarkedSafe(){return this._aiMarkedSafe}set aiMarkedSafe(e){this._aiMarkedSafe=e}isRevealed(){return this.revealed}isNotRevealed(){return!this.revealed}reveal(){this.revealed=!0}}class rn{properties;cells;totalCells;initialized;constructor(e){this.initialized=!1,this.properties=e,this.totalCells=this.properties.height*this.properties.width,this.cells=Array.from(Array(this.totalCells)).map((n,a)=>new an(a))}isInitialized(){return this.initialized}getCellById(e){return this.cells.find(n=>n.id===e)}getCellByLocation(e,n){return this.cells[this.properties.width*n+e]}initializeMinesAroundCell(e){const n=this.getAdjacentCells(e).concat(e),a=this.properties.height*this.properties.width,r=Array.from(Array(a).keys()).filter(i=>!n.find(o=>o.id===i)).sort(()=>Math.random()-.5).filter((i,o)=>o<this.properties.mines).sort((i,o)=>i-o).map(i=>this.cells[i]);return r.forEach((i,o)=>i.hasMine=!0),console.log("mines position",r.map(i=>i.id)),this.cells.forEach(i=>i.minesAround=this.getMinesSurrounding(i)),this.initialized=!0,this.revealCell(e)}getNotRevealedCells(){return this.cells.filter(e=>e.isNotRevealed())}getRevealedCells(){return this.cells.filter(e=>e.isRevealed())}isGameLost(){return this.cells.some(e=>e.hasMine&&e.isRevealed())}isGameWon(){const e=this.cells.filter(n=>n.isNotRevealed());return e.every(n=>n.hasMine)&&e.length===this.properties.mines}isGameFinished(){return this.isGameLost()||this.isGameWon()}revealCell(e){if(e.isNotRevealed()){const n=[e];if(e.reveal(),e.hasMine){const a=this.cells.filter(r=>r.hasMine);return a.filter(r=>!r.flagged).forEach(r=>r.reveal()),a}else{if(e.minesAround===0){const a=this.getAdjacentCells(e).filter(r=>r.isNotRevealed()).map(r=>this.revealCell(r)).flat();n.push(...a)}return n}}return[]}getAdjacentCells(e){const n={x:e.id%this.properties.width,y:Math.floor(e.id/this.properties.width)},a=[];for(let r of[-1,0,1])for(let i of[-1,0,1]){const o=n.x+i,s=n.y+r;o<0||o>this.properties.width-1||s<0||s>this.properties.height-1||i===0&&r===0||a.push(this.getCellByLocation(o,s))}return a}getMinesSurrounding(e){return this.getAdjacentCells(e).filter(a=>a.hasMine).length}}const on={Beginner:{height:9,width:9,mines:10},Intermediate:{height:16,width:16,mines:40},Expert:{height:16,width:30,mines:99}};function sn(){return new Worker("/minesweeper-ai/WebWorker-b3129ff0.js",{type:"module"})}const ln="modulepreload",fn=function(t){return"/minesweeper-ai/"+t},at={},cn=function(e,n,a){if(!n||n.length===0)return e();const r=document.getElementsByTagName("link");return Promise.all(n.map(i=>{if(i=fn(i),i in at)return;at[i]=!0;const o=i.endsWith(".css"),s=o?'[rel="stylesheet"]':"";if(!!a)for(let c=r.length-1;c>=0;c--){const u=r[c];if(u.href===i&&(!o||u.rel==="stylesheet"))return}else if(document.querySelector(`link[href="${i}"]${s}`))return;const f=document.createElement("link");if(f.rel=o?"stylesheet":ln,o||(f.as="script",f.crossOrigin=""),f.href=i,document.head.appendChild(f),o)return new Promise((c,u)=>{f.addEventListener("load",c),f.addEventListener("error",()=>u(new Error(`Unable to preload CSS for ${i}`)))})})).then(()=>e()).catch(i=>{const o=new Event("vite:preloadError",{cancelable:!0});if(o.payload=i,window.dispatchEvent(o),!o.defaultPrevented)throw i})};async function un(t,e={}){const n={env:Object.assign(Object.create(globalThis),e.env||{},{abort(f,c,u,g){f=o(f>>>0),c=o(c>>>0),u=u>>>0,g=g>>>0,(()=>{throw Error(`${f} in ${c}:${u}:${g}`)})()},"console.log"(f){f=o(f>>>0),console.log(f)},seed(){return(()=>Date.now()*Math.random())()}})},{exports:a}=await WebAssembly.instantiate(t,n),r=a.memory||e.env.memory,i=Object.setPrototypeOf({update(f){return f=s(f)||l(),o(a.update(f)>>>0)},guess(f){return f=s(f)||l(),o(a.guess(f)>>>0)}},a);function o(f){if(!f)return null;const c=f+new Uint32Array(r.buffer)[f-4>>>2]>>>1,u=new Uint16Array(r.buffer);let g=f>>>1,h="";for(;c-g>1024;)h+=String.fromCharCode(...u.subarray(g,g+=1024));return h+String.fromCharCode(...u.subarray(g,c))}function s(f){if(f==null)return 0;const c=f.length,u=a.__new(c<<1,2)>>>0,g=new Uint16Array(r.buffer);for(let h=0;h<c;++h)g[(u>>>1)+h]=f.charCodeAt(h);return u}function l(){throw TypeError("value must not be null")}return i}const{memory:tr,update:mn,guess:dn,tests:nr}=await(async t=>un(await(async()=>{try{return await globalThis.WebAssembly.compileStreaming(globalThis.fetch(t))}catch{return globalThis.WebAssembly.compile(await(await cn(()=>import("./__vite-browser-external-b25bb000.js"),[])).readFile(t))}})(),{}))(new URL("/minesweeper-ai/assembly-b52583c2.wasm",self.location));var ye=(t=>(t[t.UPDATE=0]="UPDATE",t[t.GUESS=1]="GUESS",t))(ye||{});self.onmessage=t=>{const e=t.data;try{switch(e.action){case 0:const n=JSON.parse(mn(e.board)),a={messageId:e.messageId,update:n};self.postMessage(a);break;case 1:const r=JSON.parse(dn(e.board)),i={messageId:e.messageId,guess:r};self.postMessage(i);break}}catch(n){console.log(`WW ${e} got exception: `+ye[e.action]),console.error(n),self.postMessage(n)}};class We{static solversCounter=0;solverId=We.solversCounter++;worker;board;promisesResolves;_knownSafeCellsIds;_knownMineCellsIds;_guesses;constructor(e){this.worker=new sn,console.log("new solver "+this.solverId),this.board=e,this._knownSafeCellsIds=[],this._knownMineCellsIds=[],this._guesses=[],this.promisesResolves=[],this.createWorkerHooks()}terminate(){this.worker.terminate()}async update(){return new Promise(e=>{const n=this.createModel(),a={webworkerId:this.solverId,action:ye.UPDATE,board:JSON.stringify(n),messageId:this.promisesResolves.length};this.promisesResolves.push(e),this.worker.postMessage(a)})}makeGuess(){return new Promise(e=>{const n=this.createModel(),a={webworkerId:this.solverId,action:ye.GUESS,board:JSON.stringify(n),messageId:this.promisesResolves.length};this.promisesResolves.push(e),this.worker.postMessage(a)})}createWorkerHooks(){this.worker.onerror=async e=>console.error(e),this.worker.onmessage=async e=>{e.data.update?(this._knownMineCellsIds=e.data.update.knownMineCellsIds,this._knownSafeCellsIds=e.data.update.knownSafeCellsIds,this.promisesResolves[e.data.messageId](e.data.update)):e.data.guess&&(this._guesses.push(e.data.guess),this.promisesResolves[e.data.messageId](e.data.guess))}}createModel(){return{properties:this.board.properties,cells:this.board.cells.map(e=>({_id:e.id,minesCount:e.isRevealed()?e.minesAround:void 0,revealed:e.isRevealed()}))}}get knownSafeCellsIds(){return this._knownSafeCellsIds}get knownMineCellsIds(){return this._knownMineCellsIds}get guesses(){return this._guesses}}function rt(t,e){var n=Object.keys(t);if(Object.getOwnPropertySymbols){var a=Object.getOwnPropertySymbols(t);e&&(a=a.filter(function(r){return Object.getOwnPropertyDescriptor(t,r).enumerable})),n.push.apply(n,a)}return n}function m(t){for(var e=1;e<arguments.length;e++){var n=arguments[e]!=null?arguments[e]:{};e%2?rt(Object(n),!0).forEach(function(a){C(t,a,n[a])}):Object.getOwnPropertyDescriptors?Object.defineProperties(t,Object.getOwnPropertyDescriptors(n)):rt(Object(n)).forEach(function(a){Object.defineProperty(t,a,Object.getOwnPropertyDescriptor(n,a))})}return t}function we(t){"@babel/helpers - typeof";return we=typeof Symbol=="function"&&typeof Symbol.iterator=="symbol"?function(e){return typeof e}:function(e){return e&&typeof Symbol=="function"&&e.constructor===Symbol&&e!==Symbol.prototype?"symbol":typeof e},we(t)}function vn(t,e){if(!(t instanceof e))throw new TypeError("Cannot call a class as a function")}function it(t,e){for(var n=0;n<e.length;n++){var a=e[n];a.enumerable=a.enumerable||!1,a.configurable=!0,"value"in a&&(a.writable=!0),Object.defineProperty(t,a.key,a)}}function pn(t,e,n){return e&&it(t.prototype,e),n&&it(t,n),Object.defineProperty(t,"prototype",{writable:!1}),t}function C(t,e,n){return e in t?Object.defineProperty(t,e,{value:n,enumerable:!0,configurable:!0,writable:!0}):t[e]=n,t}function Ge(t,e){return hn(t)||yn(t,e)||It(t,e)||kn()}function ie(t){return gn(t)||bn(t)||It(t)||wn()}function gn(t){if(Array.isArray(t))return Ne(t)}function hn(t){if(Array.isArray(t))return t}function bn(t){if(typeof Symbol<"u"&&t[Symbol.iterator]!=null||t["@@iterator"]!=null)return Array.from(t)}function yn(t,e){var n=t==null?null:typeof Symbol<"u"&&t[Symbol.iterator]||t["@@iterator"];if(n!=null){var a=[],r=!0,i=!1,o,s;try{for(n=n.call(t);!(r=(o=n.next()).done)&&(a.push(o.value),!(e&&a.length===e));r=!0);}catch(l){i=!0,s=l}finally{try{!r&&n.return!=null&&n.return()}finally{if(i)throw s}}return a}}function It(t,e){if(t){if(typeof t=="string")return Ne(t,e);var n=Object.prototype.toString.call(t).slice(8,-1);if(n==="Object"&&t.constructor&&(n=t.constructor.name),n==="Map"||n==="Set")return Array.from(t);if(n==="Arguments"||/^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(n))return Ne(t,e)}}function Ne(t,e){(e==null||e>t.length)&&(e=t.length);for(var n=0,a=new Array(e);n<e;n++)a[n]=t[n];return a}function wn(){throw new TypeError(`Invalid attempt to spread non-iterable instance.
In order to be iterable, non-array objects must have a [Symbol.iterator]() method.`)}function kn(){throw new TypeError(`Invalid attempt to destructure non-iterable instance.
In order to be iterable, non-array objects must have a [Symbol.iterator]() method.`)}var ot=function(){},He={},Pt={},Mt=null,Nt={mark:ot,measure:ot};try{typeof window<"u"&&(He=window),typeof document<"u"&&(Pt=document),typeof MutationObserver<"u"&&(Mt=MutationObserver),typeof performance<"u"&&(Nt=performance)}catch{}var xn=He.navigator||{},st=xn.userAgent,lt=st===void 0?"":st,j=He,w=Pt,ft=Mt,le=Nt;j.document;var z=!!w.documentElement&&!!w.head&&typeof w.addEventListener=="function"&&typeof w.createElement=="function",Tt=~lt.indexOf("MSIE")||~lt.indexOf("Trident/"),fe,ce,ue,me,de,T="___FONT_AWESOME___",Te=16,Lt="fa",Rt="svg-inline--fa",G="data-fa-i2svg",Le="data-fa-pseudo-element",An="data-fa-pseudo-element-pending",Be="data-prefix",Xe="data-icon",ct="fontawesome-i2svg",Cn="async",Sn=["HTML","HEAD","STYLE","SCRIPT"],zt=function(){try{return!0}catch{return!1}}(),y="classic",k="sharp",Ve=[y,k];function oe(t){return new Proxy(t,{get:function(n,a){return a in n?n[a]:n[y]}})}var ee=oe((fe={},C(fe,y,{fa:"solid",fas:"solid","fa-solid":"solid",far:"regular","fa-regular":"regular",fal:"light","fa-light":"light",fat:"thin","fa-thin":"thin",fad:"duotone","fa-duotone":"duotone",fab:"brands","fa-brands":"brands",fak:"kit","fa-kit":"kit"}),C(fe,k,{fa:"solid",fass:"solid","fa-solid":"solid",fasr:"regular","fa-regular":"regular",fasl:"light","fa-light":"light"}),fe)),te=oe((ce={},C(ce,y,{solid:"fas",regular:"far",light:"fal",thin:"fat",duotone:"fad",brands:"fab",kit:"fak"}),C(ce,k,{solid:"fass",regular:"fasr",light:"fasl"}),ce)),ne=oe((ue={},C(ue,y,{fab:"fa-brands",fad:"fa-duotone",fak:"fa-kit",fal:"fa-light",far:"fa-regular",fas:"fa-solid",fat:"fa-thin"}),C(ue,k,{fass:"fa-solid",fasr:"fa-regular",fasl:"fa-light"}),ue)),_n=oe((me={},C(me,y,{"fa-brands":"fab","fa-duotone":"fad","fa-kit":"fak","fa-light":"fal","fa-regular":"far","fa-solid":"fas","fa-thin":"fat"}),C(me,k,{"fa-solid":"fass","fa-regular":"fasr","fa-light":"fasl"}),me)),En=/fa(s|r|l|t|d|b|k|ss|sr|sl)?[\-\ ]/,Ft="fa-layers-text",On=/Font ?Awesome ?([56 ]*)(Solid|Regular|Light|Thin|Duotone|Brands|Free|Pro|Sharp|Kit)?.*/i,In=oe((de={},C(de,y,{900:"fas",400:"far",normal:"far",300:"fal",100:"fat"}),C(de,k,{900:"fass",400:"fasr",300:"fasl"}),de)),Dt=[1,2,3,4,5,6,7,8,9,10],Pn=Dt.concat([11,12,13,14,15,16,17,18,19,20]),Mn=["class","data-prefix","data-icon","data-fa-transform","data-fa-mask"],$={GROUP:"duotone-group",SWAP_OPACITY:"swap-opacity",PRIMARY:"primary",SECONDARY:"secondary"},ae=new Set;Object.keys(te[y]).map(ae.add.bind(ae));Object.keys(te[k]).map(ae.add.bind(ae));var Nn=[].concat(Ve,ie(ae),["2xs","xs","sm","lg","xl","2xl","beat","border","fade","beat-fade","bounce","flip-both","flip-horizontal","flip-vertical","flip","fw","inverse","layers-counter","layers-text","layers","li","pull-left","pull-right","pulse","rotate-180","rotate-270","rotate-90","rotate-by","shake","spin-pulse","spin-reverse","spin","stack-1x","stack-2x","stack","ul",$.GROUP,$.SWAP_OPACITY,$.PRIMARY,$.SECONDARY]).concat(Dt.map(function(t){return"".concat(t,"x")})).concat(Pn.map(function(t){return"w-".concat(t)})),Q=j.FontAwesomeConfig||{};function Tn(t){var e=w.querySelector("script["+t+"]");if(e)return e.getAttribute(t)}function Ln(t){return t===""?!0:t==="false"?!1:t==="true"?!0:t}if(w&&typeof w.querySelector=="function"){var Rn=[["data-family-prefix","familyPrefix"],["data-css-prefix","cssPrefix"],["data-family-default","familyDefault"],["data-style-default","styleDefault"],["data-replacement-class","replacementClass"],["data-auto-replace-svg","autoReplaceSvg"],["data-auto-add-css","autoAddCss"],["data-auto-a11y","autoA11y"],["data-search-pseudo-elements","searchPseudoElements"],["data-observe-mutations","observeMutations"],["data-mutate-approach","mutateApproach"],["data-keep-original-source","keepOriginalSource"],["data-measure-performance","measurePerformance"],["data-show-missing-icons","showMissingIcons"]];Rn.forEach(function(t){var e=Ge(t,2),n=e[0],a=e[1],r=Ln(Tn(n));r!=null&&(Q[a]=r)})}var jt={styleDefault:"solid",familyDefault:"classic",cssPrefix:Lt,replacementClass:Rt,autoReplaceSvg:!0,autoAddCss:!0,autoA11y:!0,searchPseudoElements:!1,observeMutations:!0,mutateApproach:"async",keepOriginalSource:!0,measurePerformance:!1,showMissingIcons:!0};Q.familyPrefix&&(Q.cssPrefix=Q.familyPrefix);var K=m(m({},jt),Q);K.autoReplaceSvg||(K.observeMutations=!1);var d={};Object.keys(jt).forEach(function(t){Object.defineProperty(d,t,{enumerable:!0,set:function(n){K[t]=n,Z.forEach(function(a){return a(d)})},get:function(){return K[t]}})});Object.defineProperty(d,"familyPrefix",{enumerable:!0,set:function(e){K.cssPrefix=e,Z.forEach(function(n){return n(d)})},get:function(){return K.cssPrefix}});j.FontAwesomeConfig=d;var Z=[];function zn(t){return Z.push(t),function(){Z.splice(Z.indexOf(t),1)}}var D=Te,N={size:16,x:0,y:0,rotate:0,flipX:!1,flipY:!1};function Fn(t){if(!(!t||!z)){var e=w.createElement("style");e.setAttribute("type","text/css"),e.innerHTML=t;for(var n=w.head.childNodes,a=null,r=n.length-1;r>-1;r--){var i=n[r],o=(i.tagName||"").toUpperCase();["STYLE","LINK"].indexOf(o)>-1&&(a=i)}return w.head.insertBefore(e,a),t}}var Dn="0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";function re(){for(var t=12,e="";t-- >0;)e+=Dn[Math.random()*62|0];return e}function q(t){for(var e=[],n=(t||[]).length>>>0;n--;)e[n]=t[n];return e}function Ke(t){return t.classList?q(t.classList):(t.getAttribute("class")||"").split(" ").filter(function(e){return e})}function Yt(t){return"".concat(t).replace(/&/g,"&amp;").replace(/"/g,"&quot;").replace(/'/g,"&#39;").replace(/</g,"&lt;").replace(/>/g,"&gt;")}function jn(t){return Object.keys(t||{}).reduce(function(e,n){return e+"".concat(n,'="').concat(Yt(t[n]),'" ')},"").trim()}function Ae(t){return Object.keys(t||{}).reduce(function(e,n){return e+"".concat(n,": ").concat(t[n].trim(),";")},"")}function qe(t){return t.size!==N.size||t.x!==N.x||t.y!==N.y||t.rotate!==N.rotate||t.flipX||t.flipY}function Yn(t){var e=t.transform,n=t.containerWidth,a=t.iconWidth,r={transform:"translate(".concat(n/2," 256)")},i="translate(".concat(e.x*32,", ").concat(e.y*32,") "),o="scale(".concat(e.size/16*(e.flipX?-1:1),", ").concat(e.size/16*(e.flipY?-1:1),") "),s="rotate(".concat(e.rotate," 0 0)"),l={transform:"".concat(i," ").concat(o," ").concat(s)},f={transform:"translate(".concat(a/2*-1," -256)")};return{outer:r,inner:l,path:f}}function Un(t){var e=t.transform,n=t.width,a=n===void 0?Te:n,r=t.height,i=r===void 0?Te:r,o=t.startCentered,s=o===void 0?!1:o,l="";return s&&Tt?l+="translate(".concat(e.x/D-a/2,"em, ").concat(e.y/D-i/2,"em) "):s?l+="translate(calc(-50% + ".concat(e.x/D,"em), calc(-50% + ").concat(e.y/D,"em)) "):l+="translate(".concat(e.x/D,"em, ").concat(e.y/D,"em) "),l+="scale(".concat(e.size/D*(e.flipX?-1:1),", ").concat(e.size/D*(e.flipY?-1:1),") "),l+="rotate(".concat(e.rotate,"deg) "),l}var $n=`:root, :host {
  --fa-font-solid: normal 900 1em/1 "Font Awesome 6 Solid";
  --fa-font-regular: normal 400 1em/1 "Font Awesome 6 Regular";
  --fa-font-light: normal 300 1em/1 "Font Awesome 6 Light";
  --fa-font-thin: normal 100 1em/1 "Font Awesome 6 Thin";
  --fa-font-duotone: normal 900 1em/1 "Font Awesome 6 Duotone";
  --fa-font-sharp-solid: normal 900 1em/1 "Font Awesome 6 Sharp";
  --fa-font-sharp-regular: normal 400 1em/1 "Font Awesome 6 Sharp";
  --fa-font-sharp-light: normal 300 1em/1 "Font Awesome 6 Sharp";
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
}`;function Ut(){var t=Lt,e=Rt,n=d.cssPrefix,a=d.replacementClass,r=$n;if(n!==t||a!==e){var i=new RegExp("\\.".concat(t,"\\-"),"g"),o=new RegExp("\\--".concat(t,"\\-"),"g"),s=new RegExp("\\.".concat(e),"g");r=r.replace(i,".".concat(n,"-")).replace(o,"--".concat(n,"-")).replace(s,".".concat(a))}return r}var ut=!1;function Oe(){d.autoAddCss&&!ut&&(Fn(Ut()),ut=!0)}var Wn={mixout:function(){return{dom:{css:Ut,insertCss:Oe}}},hooks:function(){return{beforeDOMElementCreation:function(){Oe()},beforeI2svg:function(){Oe()}}}},L=j||{};L[T]||(L[T]={});L[T].styles||(L[T].styles={});L[T].hooks||(L[T].hooks={});L[T].shims||(L[T].shims=[]);var P=L[T],$t=[],Gn=function t(){w.removeEventListener("DOMContentLoaded",t),ke=1,$t.map(function(e){return e()})},ke=!1;z&&(ke=(w.documentElement.doScroll?/^loaded|^c/:/^loaded|^i|^c/).test(w.readyState),ke||w.addEventListener("DOMContentLoaded",Gn));function Hn(t){z&&(ke?setTimeout(t,0):$t.push(t))}function se(t){var e=t.tag,n=t.attributes,a=n===void 0?{}:n,r=t.children,i=r===void 0?[]:r;return typeof t=="string"?Yt(t):"<".concat(e," ").concat(jn(a),">").concat(i.map(se).join(""),"</").concat(e,">")}function mt(t,e,n){if(t&&t[e]&&t[e][n])return{prefix:e,iconName:n,icon:t[e][n]}}var Bn=function(e,n){return function(a,r,i,o){return e.call(n,a,r,i,o)}},Ie=function(e,n,a,r){var i=Object.keys(e),o=i.length,s=r!==void 0?Bn(n,r):n,l,f,c;for(a===void 0?(l=1,c=e[i[0]]):(l=0,c=a);l<o;l++)f=i[l],c=s(c,e[f],f,e);return c};function Xn(t){for(var e=[],n=0,a=t.length;n<a;){var r=t.charCodeAt(n++);if(r>=55296&&r<=56319&&n<a){var i=t.charCodeAt(n++);(i&64512)==56320?e.push(((r&1023)<<10)+(i&1023)+65536):(e.push(r),n--)}else e.push(r)}return e}function Re(t){var e=Xn(t);return e.length===1?e[0].toString(16):null}function Vn(t,e){var n=t.length,a=t.charCodeAt(e),r;return a>=55296&&a<=56319&&n>e+1&&(r=t.charCodeAt(e+1),r>=56320&&r<=57343)?(a-55296)*1024+r-56320+65536:a}function dt(t){return Object.keys(t).reduce(function(e,n){var a=t[n],r=!!a.icon;return r?e[a.iconName]=a.icon:e[n]=a,e},{})}function ze(t,e){var n=arguments.length>2&&arguments[2]!==void 0?arguments[2]:{},a=n.skipHooks,r=a===void 0?!1:a,i=dt(e);typeof P.hooks.addPack=="function"&&!r?P.hooks.addPack(t,dt(e)):P.styles[t]=m(m({},P.styles[t]||{}),i),t==="fas"&&ze("fa",e)}var ve,pe,ge,B=P.styles,Kn=P.shims,qn=(ve={},C(ve,y,Object.values(ne[y])),C(ve,k,Object.values(ne[k])),ve),Je=null,Wt={},Gt={},Ht={},Bt={},Xt={},Jn=(pe={},C(pe,y,Object.keys(ee[y])),C(pe,k,Object.keys(ee[k])),pe);function Qn(t){return~Nn.indexOf(t)}function Zn(t,e){var n=e.split("-"),a=n[0],r=n.slice(1).join("-");return a===t&&r!==""&&!Qn(r)?r:null}var Vt=function(){var e=function(i){return Ie(B,function(o,s,l){return o[l]=Ie(s,i,{}),o},{})};Wt=e(function(r,i,o){if(i[3]&&(r[i[3]]=o),i[2]){var s=i[2].filter(function(l){return typeof l=="number"});s.forEach(function(l){r[l.toString(16)]=o})}return r}),Gt=e(function(r,i,o){if(r[o]=o,i[2]){var s=i[2].filter(function(l){return typeof l=="string"});s.forEach(function(l){r[l]=o})}return r}),Xt=e(function(r,i,o){var s=i[2];return r[o]=o,s.forEach(function(l){r[l]=o}),r});var n="far"in B||d.autoFetchSvg,a=Ie(Kn,function(r,i){var o=i[0],s=i[1],l=i[2];return s==="far"&&!n&&(s="fas"),typeof o=="string"&&(r.names[o]={prefix:s,iconName:l}),typeof o=="number"&&(r.unicodes[o.toString(16)]={prefix:s,iconName:l}),r},{names:{},unicodes:{}});Ht=a.names,Bt=a.unicodes,Je=Ce(d.styleDefault,{family:d.familyDefault})};zn(function(t){Je=Ce(t.styleDefault,{family:d.familyDefault})});Vt();function Qe(t,e){return(Wt[t]||{})[e]}function ea(t,e){return(Gt[t]||{})[e]}function W(t,e){return(Xt[t]||{})[e]}function Kt(t){return Ht[t]||{prefix:null,iconName:null}}function ta(t){var e=Bt[t],n=Qe("fas",t);return e||(n?{prefix:"fas",iconName:n}:null)||{prefix:null,iconName:null}}function Y(){return Je}var Ze=function(){return{prefix:null,iconName:null,rest:[]}};function Ce(t){var e=arguments.length>1&&arguments[1]!==void 0?arguments[1]:{},n=e.family,a=n===void 0?y:n,r=ee[a][t],i=te[a][t]||te[a][r],o=t in P.styles?t:null;return i||o||null}var vt=(ge={},C(ge,y,Object.keys(ne[y])),C(ge,k,Object.keys(ne[k])),ge);function Se(t){var e,n=arguments.length>1&&arguments[1]!==void 0?arguments[1]:{},a=n.skipLookups,r=a===void 0?!1:a,i=(e={},C(e,y,"".concat(d.cssPrefix,"-").concat(y)),C(e,k,"".concat(d.cssPrefix,"-").concat(k)),e),o=null,s=y;(t.includes(i[y])||t.some(function(f){return vt[y].includes(f)}))&&(s=y),(t.includes(i[k])||t.some(function(f){return vt[k].includes(f)}))&&(s=k);var l=t.reduce(function(f,c){var u=Zn(d.cssPrefix,c);if(B[c]?(c=qn[s].includes(c)?_n[s][c]:c,o=c,f.prefix=c):Jn[s].indexOf(c)>-1?(o=c,f.prefix=Ce(c,{family:s})):u?f.iconName=u:c!==d.replacementClass&&c!==i[y]&&c!==i[k]&&f.rest.push(c),!r&&f.prefix&&f.iconName){var g=o==="fa"?Kt(f.iconName):{},h=W(f.prefix,f.iconName);g.prefix&&(o=null),f.iconName=g.iconName||h||f.iconName,f.prefix=g.prefix||f.prefix,f.prefix==="far"&&!B.far&&B.fas&&!d.autoFetchSvg&&(f.prefix="fas")}return f},Ze());return(t.includes("fa-brands")||t.includes("fab"))&&(l.prefix="fab"),(t.includes("fa-duotone")||t.includes("fad"))&&(l.prefix="fad"),!l.prefix&&s===k&&(B.fass||d.autoFetchSvg)&&(l.prefix="fass",l.iconName=W(l.prefix,l.iconName)||l.iconName),(l.prefix==="fa"||o==="fa")&&(l.prefix=Y()||"fas"),l}var na=function(){function t(){vn(this,t),this.definitions={}}return pn(t,[{key:"add",value:function(){for(var n=this,a=arguments.length,r=new Array(a),i=0;i<a;i++)r[i]=arguments[i];var o=r.reduce(this._pullDefinitions,{});Object.keys(o).forEach(function(s){n.definitions[s]=m(m({},n.definitions[s]||{}),o[s]),ze(s,o[s]);var l=ne[y][s];l&&ze(l,o[s]),Vt()})}},{key:"reset",value:function(){this.definitions={}}},{key:"_pullDefinitions",value:function(n,a){var r=a.prefix&&a.iconName&&a.icon?{0:a}:a;return Object.keys(r).map(function(i){var o=r[i],s=o.prefix,l=o.iconName,f=o.icon,c=f[2];n[s]||(n[s]={}),c.length>0&&c.forEach(function(u){typeof u=="string"&&(n[s][u]=f)}),n[s][l]=f}),n}}]),t}(),pt=[],X={},V={},aa=Object.keys(V);function ra(t,e){var n=e.mixoutsTo;return pt=t,X={},Object.keys(V).forEach(function(a){aa.indexOf(a)===-1&&delete V[a]}),pt.forEach(function(a){var r=a.mixout?a.mixout():{};if(Object.keys(r).forEach(function(o){typeof r[o]=="function"&&(n[o]=r[o]),we(r[o])==="object"&&Object.keys(r[o]).forEach(function(s){n[o]||(n[o]={}),n[o][s]=r[o][s]})}),a.hooks){var i=a.hooks();Object.keys(i).forEach(function(o){X[o]||(X[o]=[]),X[o].push(i[o])})}a.provides&&a.provides(V)}),n}function Fe(t,e){for(var n=arguments.length,a=new Array(n>2?n-2:0),r=2;r<n;r++)a[r-2]=arguments[r];var i=X[t]||[];return i.forEach(function(o){e=o.apply(null,[e].concat(a))}),e}function H(t){for(var e=arguments.length,n=new Array(e>1?e-1:0),a=1;a<e;a++)n[a-1]=arguments[a];var r=X[t]||[];r.forEach(function(i){i.apply(null,n)})}function R(){var t=arguments[0],e=Array.prototype.slice.call(arguments,1);return V[t]?V[t].apply(null,e):void 0}function De(t){t.prefix==="fa"&&(t.prefix="fas");var e=t.iconName,n=t.prefix||Y();if(e)return e=W(n,e)||e,mt(qt.definitions,n,e)||mt(P.styles,n,e)}var qt=new na,ia=function(){d.autoReplaceSvg=!1,d.observeMutations=!1,H("noAuto")},oa={i2svg:function(){var e=arguments.length>0&&arguments[0]!==void 0?arguments[0]:{};return z?(H("beforeI2svg",e),R("pseudoElements2svg",e),R("i2svg",e)):Promise.reject("Operation requires a DOM of some kind.")},watch:function(){var e=arguments.length>0&&arguments[0]!==void 0?arguments[0]:{},n=e.autoReplaceSvgRoot;d.autoReplaceSvg===!1&&(d.autoReplaceSvg=!0),d.observeMutations=!0,Hn(function(){la({autoReplaceSvgRoot:n}),H("watch",e)})}},sa={icon:function(e){if(e===null)return null;if(we(e)==="object"&&e.prefix&&e.iconName)return{prefix:e.prefix,iconName:W(e.prefix,e.iconName)||e.iconName};if(Array.isArray(e)&&e.length===2){var n=e[1].indexOf("fa-")===0?e[1].slice(3):e[1],a=Ce(e[0]);return{prefix:a,iconName:W(a,n)||n}}if(typeof e=="string"&&(e.indexOf("".concat(d.cssPrefix,"-"))>-1||e.match(En))){var r=Se(e.split(" "),{skipLookups:!0});return{prefix:r.prefix||Y(),iconName:W(r.prefix,r.iconName)||r.iconName}}if(typeof e=="string"){var i=Y();return{prefix:i,iconName:W(i,e)||e}}}},O={noAuto:ia,config:d,dom:oa,parse:sa,library:qt,findIconDefinition:De,toHtml:se},la=function(){var e=arguments.length>0&&arguments[0]!==void 0?arguments[0]:{},n=e.autoReplaceSvgRoot,a=n===void 0?w:n;(Object.keys(P.styles).length>0||d.autoFetchSvg)&&z&&d.autoReplaceSvg&&O.dom.i2svg({node:a})};function _e(t,e){return Object.defineProperty(t,"abstract",{get:e}),Object.defineProperty(t,"html",{get:function(){return t.abstract.map(function(a){return se(a)})}}),Object.defineProperty(t,"node",{get:function(){if(z){var a=w.createElement("div");return a.innerHTML=t.html,a.children}}}),t}function fa(t){var e=t.children,n=t.main,a=t.mask,r=t.attributes,i=t.styles,o=t.transform;if(qe(o)&&n.found&&!a.found){var s=n.width,l=n.height,f={x:s/l/2,y:.5};r.style=Ae(m(m({},i),{},{"transform-origin":"".concat(f.x+o.x/16,"em ").concat(f.y+o.y/16,"em")}))}return[{tag:"svg",attributes:r,children:e}]}function ca(t){var e=t.prefix,n=t.iconName,a=t.children,r=t.attributes,i=t.symbol,o=i===!0?"".concat(e,"-").concat(d.cssPrefix,"-").concat(n):i;return[{tag:"svg",attributes:{style:"display: none;"},children:[{tag:"symbol",attributes:m(m({},r),{},{id:o}),children:a}]}]}function et(t){var e=t.icons,n=e.main,a=e.mask,r=t.prefix,i=t.iconName,o=t.transform,s=t.symbol,l=t.title,f=t.maskId,c=t.titleId,u=t.extra,g=t.watchable,h=g===void 0?!1:g,S=a.found?a:n,_=S.width,E=S.height,v=r==="fak",p=[d.replacementClass,i?"".concat(d.cssPrefix,"-").concat(i):""].filter(function(F){return u.classes.indexOf(F)===-1}).filter(function(F){return F!==""||!!F}).concat(u.classes).join(" "),b={children:[],attributes:m(m({},u.attributes),{},{"data-prefix":r,"data-icon":i,class:p,role:u.attributes.role||"img",xmlns:"http://www.w3.org/2000/svg",viewBox:"0 0 ".concat(_," ").concat(E)})},x=v&&!~u.classes.indexOf("fa-fw")?{width:"".concat(_/E*16*.0625,"em")}:{};h&&(b.attributes[G]=""),l&&(b.children.push({tag:"title",attributes:{id:b.attributes["aria-labelledby"]||"title-".concat(c||re())},children:[l]}),delete b.attributes.title);var A=m(m({},b),{},{prefix:r,iconName:i,main:n,mask:a,maskId:f,transform:o,symbol:s,styles:m(m({},x),u.styles)}),M=a.found&&n.found?R("generateAbstractMask",A)||{children:[],attributes:{}}:R("generateAbstractIcon",A)||{children:[],attributes:{}},I=M.children,Ee=M.attributes;return A.children=I,A.attributes=Ee,s?ca(A):fa(A)}function gt(t){var e=t.content,n=t.width,a=t.height,r=t.transform,i=t.title,o=t.extra,s=t.watchable,l=s===void 0?!1:s,f=m(m(m({},o.attributes),i?{title:i}:{}),{},{class:o.classes.join(" ")});l&&(f[G]="");var c=m({},o.styles);qe(r)&&(c.transform=Un({transform:r,startCentered:!0,width:n,height:a}),c["-webkit-transform"]=c.transform);var u=Ae(c);u.length>0&&(f.style=u);var g=[];return g.push({tag:"span",attributes:f,children:[e]}),i&&g.push({tag:"span",attributes:{class:"sr-only"},children:[i]}),g}function ua(t){var e=t.content,n=t.title,a=t.extra,r=m(m(m({},a.attributes),n?{title:n}:{}),{},{class:a.classes.join(" ")}),i=Ae(a.styles);i.length>0&&(r.style=i);var o=[];return o.push({tag:"span",attributes:r,children:[e]}),n&&o.push({tag:"span",attributes:{class:"sr-only"},children:[n]}),o}var Pe=P.styles;function je(t){var e=t[0],n=t[1],a=t.slice(4),r=Ge(a,1),i=r[0],o=null;return Array.isArray(i)?o={tag:"g",attributes:{class:"".concat(d.cssPrefix,"-").concat($.GROUP)},children:[{tag:"path",attributes:{class:"".concat(d.cssPrefix,"-").concat($.SECONDARY),fill:"currentColor",d:i[0]}},{tag:"path",attributes:{class:"".concat(d.cssPrefix,"-").concat($.PRIMARY),fill:"currentColor",d:i[1]}}]}:o={tag:"path",attributes:{fill:"currentColor",d:i}},{found:!0,width:e,height:n,icon:o}}var ma={found:!1,width:512,height:512};function da(t,e){!zt&&!d.showMissingIcons&&t&&console.error('Icon with name "'.concat(t,'" and prefix "').concat(e,'" is missing.'))}function Ye(t,e){var n=e;return e==="fa"&&d.styleDefault!==null&&(e=Y()),new Promise(function(a,r){if(R("missingIconAbstract"),n==="fa"){var i=Kt(t)||{};t=i.iconName||t,e=i.prefix||e}if(t&&e&&Pe[e]&&Pe[e][t]){var o=Pe[e][t];return a(je(o))}da(t,e),a(m(m({},ma),{},{icon:d.showMissingIcons&&t?R("missingIconAbstract")||{}:{}}))})}var ht=function(){},Ue=d.measurePerformance&&le&&le.mark&&le.measure?le:{mark:ht,measure:ht},J='FA "6.4.2"',va=function(e){return Ue.mark("".concat(J," ").concat(e," begins")),function(){return Jt(e)}},Jt=function(e){Ue.mark("".concat(J," ").concat(e," ends")),Ue.measure("".concat(J," ").concat(e),"".concat(J," ").concat(e," begins"),"".concat(J," ").concat(e," ends"))},tt={begin:va,end:Jt},he=function(){};function bt(t){var e=t.getAttribute?t.getAttribute(G):null;return typeof e=="string"}function pa(t){var e=t.getAttribute?t.getAttribute(Be):null,n=t.getAttribute?t.getAttribute(Xe):null;return e&&n}function ga(t){return t&&t.classList&&t.classList.contains&&t.classList.contains(d.replacementClass)}function ha(){if(d.autoReplaceSvg===!0)return be.replace;var t=be[d.autoReplaceSvg];return t||be.replace}function ba(t){return w.createElementNS("http://www.w3.org/2000/svg",t)}function ya(t){return w.createElement(t)}function Qt(t){var e=arguments.length>1&&arguments[1]!==void 0?arguments[1]:{},n=e.ceFn,a=n===void 0?t.tag==="svg"?ba:ya:n;if(typeof t=="string")return w.createTextNode(t);var r=a(t.tag);Object.keys(t.attributes||[]).forEach(function(o){r.setAttribute(o,t.attributes[o])});var i=t.children||[];return i.forEach(function(o){r.appendChild(Qt(o,{ceFn:a}))}),r}function wa(t){var e=" ".concat(t.outerHTML," ");return e="".concat(e,"Font Awesome fontawesome.com "),e}var be={replace:function(e){var n=e[0];if(n.parentNode)if(e[1].forEach(function(r){n.parentNode.insertBefore(Qt(r),n)}),n.getAttribute(G)===null&&d.keepOriginalSource){var a=w.createComment(wa(n));n.parentNode.replaceChild(a,n)}else n.remove()},nest:function(e){var n=e[0],a=e[1];if(~Ke(n).indexOf(d.replacementClass))return be.replace(e);var r=new RegExp("".concat(d.cssPrefix,"-.*"));if(delete a[0].attributes.id,a[0].attributes.class){var i=a[0].attributes.class.split(" ").reduce(function(s,l){return l===d.replacementClass||l.match(r)?s.toSvg.push(l):s.toNode.push(l),s},{toNode:[],toSvg:[]});a[0].attributes.class=i.toSvg.join(" "),i.toNode.length===0?n.removeAttribute("class"):n.setAttribute("class",i.toNode.join(" "))}var o=a.map(function(s){return se(s)}).join(`
`);n.setAttribute(G,""),n.innerHTML=o}};function yt(t){t()}function Zt(t,e){var n=typeof e=="function"?e:he;if(t.length===0)n();else{var a=yt;d.mutateApproach===Cn&&(a=j.requestAnimationFrame||yt),a(function(){var r=ha(),i=tt.begin("mutate");t.map(r),i(),n()})}}var nt=!1;function en(){nt=!0}function $e(){nt=!1}var xe=null;function wt(t){if(ft&&d.observeMutations){var e=t.treeCallback,n=e===void 0?he:e,a=t.nodeCallback,r=a===void 0?he:a,i=t.pseudoElementsCallback,o=i===void 0?he:i,s=t.observeMutationsRoot,l=s===void 0?w:s;xe=new ft(function(f){if(!nt){var c=Y();q(f).forEach(function(u){if(u.type==="childList"&&u.addedNodes.length>0&&!bt(u.addedNodes[0])&&(d.searchPseudoElements&&o(u.target),n(u.target)),u.type==="attributes"&&u.target.parentNode&&d.searchPseudoElements&&o(u.target.parentNode),u.type==="attributes"&&bt(u.target)&&~Mn.indexOf(u.attributeName))if(u.attributeName==="class"&&pa(u.target)){var g=Se(Ke(u.target)),h=g.prefix,S=g.iconName;u.target.setAttribute(Be,h||c),S&&u.target.setAttribute(Xe,S)}else ga(u.target)&&r(u.target)})}}),z&&xe.observe(l,{childList:!0,attributes:!0,characterData:!0,subtree:!0})}}function ka(){xe&&xe.disconnect()}function xa(t){var e=t.getAttribute("style"),n=[];return e&&(n=e.split(";").reduce(function(a,r){var i=r.split(":"),o=i[0],s=i.slice(1);return o&&s.length>0&&(a[o]=s.join(":").trim()),a},{})),n}function Aa(t){var e=t.getAttribute("data-prefix"),n=t.getAttribute("data-icon"),a=t.innerText!==void 0?t.innerText.trim():"",r=Se(Ke(t));return r.prefix||(r.prefix=Y()),e&&n&&(r.prefix=e,r.iconName=n),r.iconName&&r.prefix||(r.prefix&&a.length>0&&(r.iconName=ea(r.prefix,t.innerText)||Qe(r.prefix,Re(t.innerText))),!r.iconName&&d.autoFetchSvg&&t.firstChild&&t.firstChild.nodeType===Node.TEXT_NODE&&(r.iconName=t.firstChild.data)),r}function Ca(t){var e=q(t.attributes).reduce(function(r,i){return r.name!=="class"&&r.name!=="style"&&(r[i.name]=i.value),r},{}),n=t.getAttribute("title"),a=t.getAttribute("data-fa-title-id");return d.autoA11y&&(n?e["aria-labelledby"]="".concat(d.replacementClass,"-title-").concat(a||re()):(e["aria-hidden"]="true",e.focusable="false")),e}function Sa(){return{iconName:null,title:null,titleId:null,prefix:null,transform:N,symbol:!1,mask:{iconName:null,prefix:null,rest:[]},maskId:null,extra:{classes:[],styles:{},attributes:{}}}}function kt(t){var e=arguments.length>1&&arguments[1]!==void 0?arguments[1]:{styleParser:!0},n=Aa(t),a=n.iconName,r=n.prefix,i=n.rest,o=Ca(t),s=Fe("parseNodeAttributes",{},t),l=e.styleParser?xa(t):[];return m({iconName:a,title:t.getAttribute("title"),titleId:t.getAttribute("data-fa-title-id"),prefix:r,transform:N,mask:{iconName:null,prefix:null,rest:[]},maskId:null,symbol:!1,extra:{classes:i,styles:l,attributes:o}},s)}var _a=P.styles;function tn(t){var e=d.autoReplaceSvg==="nest"?kt(t,{styleParser:!1}):kt(t);return~e.extra.classes.indexOf(Ft)?R("generateLayersText",t,e):R("generateSvgReplacementMutation",t,e)}var U=new Set;Ve.map(function(t){U.add("fa-".concat(t))});Object.keys(ee[y]).map(U.add.bind(U));Object.keys(ee[k]).map(U.add.bind(U));U=ie(U);function xt(t){var e=arguments.length>1&&arguments[1]!==void 0?arguments[1]:null;if(!z)return Promise.resolve();var n=w.documentElement.classList,a=function(u){return n.add("".concat(ct,"-").concat(u))},r=function(u){return n.remove("".concat(ct,"-").concat(u))},i=d.autoFetchSvg?U:Ve.map(function(c){return"fa-".concat(c)}).concat(Object.keys(_a));i.includes("fa")||i.push("fa");var o=[".".concat(Ft,":not([").concat(G,"])")].concat(i.map(function(c){return".".concat(c,":not([").concat(G,"])")})).join(", ");if(o.length===0)return Promise.resolve();var s=[];try{s=q(t.querySelectorAll(o))}catch{}if(s.length>0)a("pending"),r("complete");else return Promise.resolve();var l=tt.begin("onTree"),f=s.reduce(function(c,u){try{var g=tn(u);g&&c.push(g)}catch(h){zt||h.name==="MissingIcon"&&console.error(h)}return c},[]);return new Promise(function(c,u){Promise.all(f).then(function(g){Zt(g,function(){a("active"),a("complete"),r("pending"),typeof e=="function"&&e(),l(),c()})}).catch(function(g){l(),u(g)})})}function Ea(t){var e=arguments.length>1&&arguments[1]!==void 0?arguments[1]:null;tn(t).then(function(n){n&&Zt([n],e)})}function Oa(t){return function(e){var n=arguments.length>1&&arguments[1]!==void 0?arguments[1]:{},a=(e||{}).icon?e:De(e||{}),r=n.mask;return r&&(r=(r||{}).icon?r:De(r||{})),t(a,m(m({},n),{},{mask:r}))}}var Ia=function(e){var n=arguments.length>1&&arguments[1]!==void 0?arguments[1]:{},a=n.transform,r=a===void 0?N:a,i=n.symbol,o=i===void 0?!1:i,s=n.mask,l=s===void 0?null:s,f=n.maskId,c=f===void 0?null:f,u=n.title,g=u===void 0?null:u,h=n.titleId,S=h===void 0?null:h,_=n.classes,E=_===void 0?[]:_,v=n.attributes,p=v===void 0?{}:v,b=n.styles,x=b===void 0?{}:b;if(e){var A=e.prefix,M=e.iconName,I=e.icon;return _e(m({type:"icon"},e),function(){return H("beforeDOMElementCreation",{iconDefinition:e,params:n}),d.autoA11y&&(g?p["aria-labelledby"]="".concat(d.replacementClass,"-title-").concat(S||re()):(p["aria-hidden"]="true",p.focusable="false")),et({icons:{main:je(I),mask:l?je(l.icon):{found:!1,width:null,height:null,icon:{}}},prefix:A,iconName:M,transform:m(m({},N),r),symbol:o,title:g,maskId:c,titleId:S,extra:{attributes:p,styles:x,classes:E}})})}},Pa={mixout:function(){return{icon:Oa(Ia)}},hooks:function(){return{mutationObserverCallbacks:function(n){return n.treeCallback=xt,n.nodeCallback=Ea,n}}},provides:function(e){e.i2svg=function(n){var a=n.node,r=a===void 0?w:a,i=n.callback,o=i===void 0?function(){}:i;return xt(r,o)},e.generateSvgReplacementMutation=function(n,a){var r=a.iconName,i=a.title,o=a.titleId,s=a.prefix,l=a.transform,f=a.symbol,c=a.mask,u=a.maskId,g=a.extra;return new Promise(function(h,S){Promise.all([Ye(r,s),c.iconName?Ye(c.iconName,c.prefix):Promise.resolve({found:!1,width:512,height:512,icon:{}})]).then(function(_){var E=Ge(_,2),v=E[0],p=E[1];h([n,et({icons:{main:v,mask:p},prefix:s,iconName:r,transform:l,symbol:f,maskId:u,title:i,titleId:o,extra:g,watchable:!0})])}).catch(S)})},e.generateAbstractIcon=function(n){var a=n.children,r=n.attributes,i=n.main,o=n.transform,s=n.styles,l=Ae(s);l.length>0&&(r.style=l);var f;return qe(o)&&(f=R("generateAbstractTransformGrouping",{main:i,transform:o,containerWidth:i.width,iconWidth:i.width})),a.push(f||i.icon),{children:a,attributes:r}}}},Ma={mixout:function(){return{layer:function(n){var a=arguments.length>1&&arguments[1]!==void 0?arguments[1]:{},r=a.classes,i=r===void 0?[]:r;return _e({type:"layer"},function(){H("beforeDOMElementCreation",{assembler:n,params:a});var o=[];return n(function(s){Array.isArray(s)?s.map(function(l){o=o.concat(l.abstract)}):o=o.concat(s.abstract)}),[{tag:"span",attributes:{class:["".concat(d.cssPrefix,"-layers")].concat(ie(i)).join(" ")},children:o}]})}}}},Na={mixout:function(){return{counter:function(n){var a=arguments.length>1&&arguments[1]!==void 0?arguments[1]:{},r=a.title,i=r===void 0?null:r,o=a.classes,s=o===void 0?[]:o,l=a.attributes,f=l===void 0?{}:l,c=a.styles,u=c===void 0?{}:c;return _e({type:"counter",content:n},function(){return H("beforeDOMElementCreation",{content:n,params:a}),ua({content:n.toString(),title:i,extra:{attributes:f,styles:u,classes:["".concat(d.cssPrefix,"-layers-counter")].concat(ie(s))}})})}}}},Ta={mixout:function(){return{text:function(n){var a=arguments.length>1&&arguments[1]!==void 0?arguments[1]:{},r=a.transform,i=r===void 0?N:r,o=a.title,s=o===void 0?null:o,l=a.classes,f=l===void 0?[]:l,c=a.attributes,u=c===void 0?{}:c,g=a.styles,h=g===void 0?{}:g;return _e({type:"text",content:n},function(){return H("beforeDOMElementCreation",{content:n,params:a}),gt({content:n,transform:m(m({},N),i),title:s,extra:{attributes:u,styles:h,classes:["".concat(d.cssPrefix,"-layers-text")].concat(ie(f))}})})}}},provides:function(e){e.generateLayersText=function(n,a){var r=a.title,i=a.transform,o=a.extra,s=null,l=null;if(Tt){var f=parseInt(getComputedStyle(n).fontSize,10),c=n.getBoundingClientRect();s=c.width/f,l=c.height/f}return d.autoA11y&&!r&&(o.attributes["aria-hidden"]="true"),Promise.resolve([n,gt({content:n.innerHTML,width:s,height:l,transform:i,title:r,extra:o,watchable:!0})])}}},La=new RegExp('"',"ug"),At=[1105920,1112319];function Ra(t){var e=t.replace(La,""),n=Vn(e,0),a=n>=At[0]&&n<=At[1],r=e.length===2?e[0]===e[1]:!1;return{value:Re(r?e[0]:e),isSecondary:a||r}}function Ct(t,e){var n="".concat(An).concat(e.replace(":","-"));return new Promise(function(a,r){if(t.getAttribute(n)!==null)return a();var i=q(t.children),o=i.filter(function(I){return I.getAttribute(Le)===e})[0],s=j.getComputedStyle(t,e),l=s.getPropertyValue("font-family").match(On),f=s.getPropertyValue("font-weight"),c=s.getPropertyValue("content");if(o&&!l)return t.removeChild(o),a();if(l&&c!=="none"&&c!==""){var u=s.getPropertyValue("content"),g=~["Sharp"].indexOf(l[2])?k:y,h=~["Solid","Regular","Light","Thin","Duotone","Brands","Kit"].indexOf(l[2])?te[g][l[2].toLowerCase()]:In[g][f],S=Ra(u),_=S.value,E=S.isSecondary,v=l[0].startsWith("FontAwesome"),p=Qe(h,_),b=p;if(v){var x=ta(_);x.iconName&&x.prefix&&(p=x.iconName,h=x.prefix)}if(p&&!E&&(!o||o.getAttribute(Be)!==h||o.getAttribute(Xe)!==b)){t.setAttribute(n,b),o&&t.removeChild(o);var A=Sa(),M=A.extra;M.attributes[Le]=e,Ye(p,h).then(function(I){var Ee=et(m(m({},A),{},{icons:{main:I,mask:Ze()},prefix:h,iconName:b,extra:M,watchable:!0})),F=w.createElementNS("http://www.w3.org/2000/svg","svg");e==="::before"?t.insertBefore(F,t.firstChild):t.appendChild(F),F.outerHTML=Ee.map(function(nn){return se(nn)}).join(`
`),t.removeAttribute(n),a()}).catch(r)}else a()}else a()})}function za(t){return Promise.all([Ct(t,"::before"),Ct(t,"::after")])}function Fa(t){return t.parentNode!==document.head&&!~Sn.indexOf(t.tagName.toUpperCase())&&!t.getAttribute(Le)&&(!t.parentNode||t.parentNode.tagName!=="svg")}function St(t){if(z)return new Promise(function(e,n){var a=q(t.querySelectorAll("*")).filter(Fa).map(za),r=tt.begin("searchPseudoElements");en(),Promise.all(a).then(function(){r(),$e(),e()}).catch(function(){r(),$e(),n()})})}var Da={hooks:function(){return{mutationObserverCallbacks:function(n){return n.pseudoElementsCallback=St,n}}},provides:function(e){e.pseudoElements2svg=function(n){var a=n.node,r=a===void 0?w:a;d.searchPseudoElements&&St(r)}}},_t=!1,ja={mixout:function(){return{dom:{unwatch:function(){en(),_t=!0}}}},hooks:function(){return{bootstrap:function(){wt(Fe("mutationObserverCallbacks",{}))},noAuto:function(){ka()},watch:function(n){var a=n.observeMutationsRoot;_t?$e():wt(Fe("mutationObserverCallbacks",{observeMutationsRoot:a}))}}}},Et=function(e){var n={size:16,x:0,y:0,flipX:!1,flipY:!1,rotate:0};return e.toLowerCase().split(" ").reduce(function(a,r){var i=r.toLowerCase().split("-"),o=i[0],s=i.slice(1).join("-");if(o&&s==="h")return a.flipX=!0,a;if(o&&s==="v")return a.flipY=!0,a;if(s=parseFloat(s),isNaN(s))return a;switch(o){case"grow":a.size=a.size+s;break;case"shrink":a.size=a.size-s;break;case"left":a.x=a.x-s;break;case"right":a.x=a.x+s;break;case"up":a.y=a.y-s;break;case"down":a.y=a.y+s;break;case"rotate":a.rotate=a.rotate+s;break}return a},n)},Ya={mixout:function(){return{parse:{transform:function(n){return Et(n)}}}},hooks:function(){return{parseNodeAttributes:function(n,a){var r=a.getAttribute("data-fa-transform");return r&&(n.transform=Et(r)),n}}},provides:function(e){e.generateAbstractTransformGrouping=function(n){var a=n.main,r=n.transform,i=n.containerWidth,o=n.iconWidth,s={transform:"translate(".concat(i/2," 256)")},l="translate(".concat(r.x*32,", ").concat(r.y*32,") "),f="scale(".concat(r.size/16*(r.flipX?-1:1),", ").concat(r.size/16*(r.flipY?-1:1),") "),c="rotate(".concat(r.rotate," 0 0)"),u={transform:"".concat(l," ").concat(f," ").concat(c)},g={transform:"translate(".concat(o/2*-1," -256)")},h={outer:s,inner:u,path:g};return{tag:"g",attributes:m({},h.outer),children:[{tag:"g",attributes:m({},h.inner),children:[{tag:a.icon.tag,children:a.icon.children,attributes:m(m({},a.icon.attributes),h.path)}]}]}}}},Me={x:0,y:0,width:"100%",height:"100%"};function Ot(t){var e=arguments.length>1&&arguments[1]!==void 0?arguments[1]:!0;return t.attributes&&(t.attributes.fill||e)&&(t.attributes.fill="black"),t}function Ua(t){return t.tag==="g"?t.children:[t]}var $a={hooks:function(){return{parseNodeAttributes:function(n,a){var r=a.getAttribute("data-fa-mask"),i=r?Se(r.split(" ").map(function(o){return o.trim()})):Ze();return i.prefix||(i.prefix=Y()),n.mask=i,n.maskId=a.getAttribute("data-fa-mask-id"),n}}},provides:function(e){e.generateAbstractMask=function(n){var a=n.children,r=n.attributes,i=n.main,o=n.mask,s=n.maskId,l=n.transform,f=i.width,c=i.icon,u=o.width,g=o.icon,h=Yn({transform:l,containerWidth:u,iconWidth:f}),S={tag:"rect",attributes:m(m({},Me),{},{fill:"white"})},_=c.children?{children:c.children.map(Ot)}:{},E={tag:"g",attributes:m({},h.inner),children:[Ot(m({tag:c.tag,attributes:m(m({},c.attributes),h.path)},_))]},v={tag:"g",attributes:m({},h.outer),children:[E]},p="mask-".concat(s||re()),b="clip-".concat(s||re()),x={tag:"mask",attributes:m(m({},Me),{},{id:p,maskUnits:"userSpaceOnUse",maskContentUnits:"userSpaceOnUse"}),children:[S,v]},A={tag:"defs",children:[{tag:"clipPath",attributes:{id:b},children:Ua(g)},x]};return a.push(A,{tag:"rect",attributes:m({fill:"currentColor","clip-path":"url(#".concat(b,")"),mask:"url(#".concat(p,")")},Me)}),{children:a,attributes:r}}}},Wa={provides:function(e){var n=!1;j.matchMedia&&(n=j.matchMedia("(prefers-reduced-motion: reduce)").matches),e.missingIconAbstract=function(){var a=[],r={fill:"currentColor"},i={attributeType:"XML",repeatCount:"indefinite",dur:"2s"};a.push({tag:"path",attributes:m(m({},r),{},{d:"M156.5,447.7l-12.6,29.5c-18.7-9.5-35.9-21.2-51.5-34.9l22.7-22.7C127.6,430.5,141.5,440,156.5,447.7z M40.6,272H8.5 c1.4,21.2,5.4,41.7,11.7,61.1L50,321.2C45.1,305.5,41.8,289,40.6,272z M40.6,240c1.4-18.8,5.2-37,11.1-54.1l-29.5-12.6 C14.7,194.3,10,216.7,8.5,240H40.6z M64.3,156.5c7.8-14.9,17.2-28.8,28.1-41.5L69.7,92.3c-13.7,15.6-25.5,32.8-34.9,51.5 L64.3,156.5z M397,419.6c-13.9,12-29.4,22.3-46.1,30.4l11.9,29.8c20.7-9.9,39.8-22.6,56.9-37.6L397,419.6z M115,92.4 c13.9-12,29.4-22.3,46.1-30.4l-11.9-29.8c-20.7,9.9-39.8,22.6-56.8,37.6L115,92.4z M447.7,355.5c-7.8,14.9-17.2,28.8-28.1,41.5 l22.7,22.7c13.7-15.6,25.5-32.9,34.9-51.5L447.7,355.5z M471.4,272c-1.4,18.8-5.2,37-11.1,54.1l29.5,12.6 c7.5-21.1,12.2-43.5,13.6-66.8H471.4z M321.2,462c-15.7,5-32.2,8.2-49.2,9.4v32.1c21.2-1.4,41.7-5.4,61.1-11.7L321.2,462z M240,471.4c-18.8-1.4-37-5.2-54.1-11.1l-12.6,29.5c21.1,7.5,43.5,12.2,66.8,13.6V471.4z M462,190.8c5,15.7,8.2,32.2,9.4,49.2h32.1 c-1.4-21.2-5.4-41.7-11.7-61.1L462,190.8z M92.4,397c-12-13.9-22.3-29.4-30.4-46.1l-29.8,11.9c9.9,20.7,22.6,39.8,37.6,56.9 L92.4,397z M272,40.6c18.8,1.4,36.9,5.2,54.1,11.1l12.6-29.5C317.7,14.7,295.3,10,272,8.5V40.6z M190.8,50 c15.7-5,32.2-8.2,49.2-9.4V8.5c-21.2,1.4-41.7,5.4-61.1,11.7L190.8,50z M442.3,92.3L419.6,115c12,13.9,22.3,29.4,30.5,46.1 l29.8-11.9C470,128.5,457.3,109.4,442.3,92.3z M397,92.4l22.7-22.7c-15.6-13.7-32.8-25.5-51.5-34.9l-12.6,29.5 C370.4,72.1,384.4,81.5,397,92.4z"})});var o=m(m({},i),{},{attributeName:"opacity"}),s={tag:"circle",attributes:m(m({},r),{},{cx:"256",cy:"364",r:"28"}),children:[]};return n||s.children.push({tag:"animate",attributes:m(m({},i),{},{attributeName:"r",values:"28;14;28;28;14;28;"})},{tag:"animate",attributes:m(m({},o),{},{values:"1;0;1;1;0;1;"})}),a.push(s),a.push({tag:"path",attributes:m(m({},r),{},{opacity:"1",d:"M263.7,312h-16c-6.6,0-12-5.4-12-12c0-71,77.4-63.9,77.4-107.8c0-20-17.8-40.2-57.4-40.2c-29.1,0-44.3,9.6-59.2,28.7 c-3.9,5-11.1,6-16.2,2.4l-13.1-9.2c-5.6-3.9-6.9-11.8-2.6-17.2c21.2-27.2,46.4-44.7,91.2-44.7c52.3,0,97.4,29.8,97.4,80.2 c0,67.6-77.4,63.5-77.4,107.8C275.7,306.6,270.3,312,263.7,312z"}),children:n?[]:[{tag:"animate",attributes:m(m({},o),{},{values:"1;0;0;0;0;1;"})}]}),n||a.push({tag:"path",attributes:m(m({},r),{},{opacity:"0",d:"M232.5,134.5l7,168c0.3,6.4,5.6,11.5,12,11.5h9c6.4,0,11.7-5.1,12-11.5l7-168c0.3-6.8-5.2-12.5-12-12.5h-23 C237.7,122,232.2,127.7,232.5,134.5z"}),children:[{tag:"animate",attributes:m(m({},o),{},{values:"0;0;1;1;0;0;"})}]}),{tag:"g",attributes:{class:"missing"},children:a}}}},Ga={hooks:function(){return{parseNodeAttributes:function(n,a){var r=a.getAttribute("data-fa-symbol"),i=r===null?!1:r===""?!0:r;return n.symbol=i,n}}}},Ha=[Wn,Pa,Ma,Na,Ta,Da,ja,Ya,$a,Wa,Ga];ra(Ha,{mixoutsTo:O});O.noAuto;O.config;var Ba=O.library;O.dom;O.parse;O.findIconDefinition;O.toHtml;O.icon;O.layer;O.text;O.counter;var Xa=typeof globalThis<"u"?globalThis:typeof window<"u"?window:typeof global<"u"?global:typeof self<"u"?self:{},Va={exports:{}};(function(t){(function(e){var n=function(v,p,b){if(!f(p)||u(p)||g(p)||h(p)||l(p))return p;var x,A=0,M=0;if(c(p))for(x=[],M=p.length;A<M;A++)x.push(n(v,p[A],b));else{x={};for(var I in p)Object.prototype.hasOwnProperty.call(p,I)&&(x[v(I,b)]=n(v,p[I],b))}return x},a=function(v,p){p=p||{};var b=p.separator||"_",x=p.split||/(?=[A-Z])/;return v.split(x).join(b)},r=function(v){return S(v)?v:(v=v.replace(/[\-_\s]+(.)?/g,function(p,b){return b?b.toUpperCase():""}),v.substr(0,1).toLowerCase()+v.substr(1))},i=function(v){var p=r(v);return p.substr(0,1).toUpperCase()+p.substr(1)},o=function(v,p){return a(v,p).toLowerCase()},s=Object.prototype.toString,l=function(v){return typeof v=="function"},f=function(v){return v===Object(v)},c=function(v){return s.call(v)=="[object Array]"},u=function(v){return s.call(v)=="[object Date]"},g=function(v){return s.call(v)=="[object RegExp]"},h=function(v){return s.call(v)=="[object Boolean]"},S=function(v){return v=v-0,v===v},_=function(v,p){var b=p&&"process"in p?p.process:p;return typeof b!="function"?v:function(x,A){return b(x,v,A)}},E={camelize:r,decamelize:o,pascalize:i,depascalize:o,camelizeKeys:function(v,p){return n(_(r,p),v)},decamelizeKeys:function(v,p){return n(_(o,p),v,p)},pascalizeKeys:function(v,p){return n(_(i,p),v)},depascalizeKeys:function(){return this.decamelizeKeys.apply(this,arguments)}};t.exports?t.exports=E:e.humps=E})(Xa)})(Va);var Ka=!1;try{Ka=!0}catch{}var qa={prefix:"fas",iconName:"flag",icon:[448,512,[127988,61725],"f024","M64 32C64 14.3 49.7 0 32 0S0 14.3 0 32V64 368 480c0 17.7 14.3 32 32 32s32-14.3 32-32V352l64.3-16.1c41.1-10.3 84.6-5.5 122.5 13.4c44.2 22.1 95.5 24.8 141.7 7.4l34.7-13c12.5-4.7 20.8-16.6 20.8-30V66.1c0-23-24.2-38-44.8-27.7l-9.6 4.8c-46.3 23.2-100.8 23.2-147.1 0c-35.1-17.6-75.4-22-113.5-12.5L64 48V32z"]},Ja={prefix:"fas",iconName:"bomb",icon:[512,512,[128163],"f1e2","M459.1 52.4L442.6 6.5C440.7 2.6 436.5 0 432.1 0s-8.5 2.6-10.4 6.5L405.2 52.4l-46 16.8c-4.3 1.6-7.3 5.9-7.2 10.4c0 4.5 3 8.7 7.2 10.2l45.7 16.8 16.8 45.8c1.5 4.4 5.8 7.5 10.4 7.5s8.9-3.1 10.4-7.5l16.5-45.8 45.7-16.8c4.2-1.5 7.2-5.7 7.2-10.2c0-4.6-3-8.9-7.2-10.4L459.1 52.4zm-132.4 53c-12.5-12.5-32.8-12.5-45.3 0l-2.9 2.9C256.5 100.3 232.7 96 208 96C93.1 96 0 189.1 0 304S93.1 512 208 512s208-93.1 208-208c0-24.7-4.3-48.5-12.2-70.5l2.9-2.9c12.5-12.5 12.5-32.8 0-45.3l-80-80zM200 192c-57.4 0-104 46.6-104 104v8c0 8.8-7.2 16-16 16s-16-7.2-16-16v-8c0-75.1 60.9-136 136-136h8c8.8 0 16 7.2 16 16s-7.2 16-16 16h-8z"]},Qa={prefix:"fas",iconName:"xmark",icon:[384,512,[128473,10005,10006,10060,215,"close","multiply","remove","times"],"f00d","M342.6 150.6c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L192 210.7 86.6 105.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3L146.7 256 41.4 361.4c-12.5 12.5-12.5 32.8 0 45.3s32.8 12.5 45.3 0L192 301.3 297.4 406.6c12.5 12.5 32.8 12.5 45.3 0s12.5-32.8 0-45.3L237.3 256 342.6 150.6z"]};Ba.add(Ja,qa,Qa);async function Za(t){const e=new rn(t),n=new We(e),a=await n.makeGuess();for(e.initializeMinesAroundCell(e.getCellById(a.id));!e.isGameFinished();){await n.update();const r=n.knownSafeCellsIds.filter(i=>e.cells[i].isNotRevealed());if(r.length>0)r.forEach(i=>e.revealCell(e.getCellById(i)));else{if(e.isGameLost()||e.isGameWon()){console.log("game over");break}const i=await n.makeGuess();e.revealCell(e.getCellById(i.id))}}n.terminate(),console.log("won?",e.isGameWon(),"lost?",e.isGameLost(),"guesses",n.guesses)}let er=1;(async function(){for(let e=0;e<er;++e)Za(on.Intermediate)})();
