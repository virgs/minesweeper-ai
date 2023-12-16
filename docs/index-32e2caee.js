(function(){const t=document.createElement("link").relList;if(t&&t.supports&&t.supports("modulepreload"))return;for(const r of document.querySelectorAll('link[rel="modulepreload"]'))a(r);new MutationObserver(r=>{for(const i of r)if(i.type==="childList")for(const s of i.addedNodes)s.tagName==="LINK"&&s.rel==="modulepreload"&&a(s)}).observe(document,{childList:!0,subtree:!0});function n(r){const i={};return r.integrity&&(i.integrity=r.integrity),r.referrerPolicy&&(i.referrerPolicy=r.referrerPolicy),r.crossOrigin==="use-credentials"?i.credentials="include":r.crossOrigin==="anonymous"?i.credentials="omit":i.credentials="same-origin",i}function a(r){if(r.ep)return;r.ep=!0;const i=n(r);fetch(r.href,i)}})();function ir(e,t){const n=Object.create(null),a=e.split(",");for(let r=0;r<a.length;r++)n[a[r]]=!0;return t?r=>!!n[r.toLowerCase()]:r=>!!n[r]}const sr={},Qt=()=>{},or=(e,t)=>{const n=e.indexOf(t);n>-1&&e.splice(n,1)},lr=Object.prototype.hasOwnProperty,ft=(e,t)=>lr.call(e,t),L=Array.isArray,Oe=e=>yt(e)==="[object Map]",cr=e=>yt(e)==="[object Set]",ee=e=>typeof e=="function",fr=e=>typeof e=="string",bt=e=>typeof e=="symbol",Se=e=>e!==null&&typeof e=="object",ur=e=>(Se(e)||ee(e))&&ee(e.then)&&ee(e.catch),dr=Object.prototype.toString,yt=e=>dr.call(e),mr=e=>yt(e).slice(8,-1),hr=e=>yt(e)==="[object Object]",Zt=e=>fr(e)&&e!=="NaN"&&e[0]!=="-"&&""+parseInt(e,10)===e,de=(e,t)=>!Object.is(e,t),pr=(e,t,n)=>{Object.defineProperty(e,t,{configurable:!0,enumerable:!1,value:n})};let _n;const kn=()=>_n||(_n=typeof globalThis<"u"?globalThis:typeof self<"u"?self:typeof window<"u"?window:typeof global<"u"?global:{});let N;class vr{constructor(t=!1){this.detached=t,this._active=!0,this.effects=[],this.cleanups=[],this.parent=N,!t&&N&&(this.index=(N.scopes||(N.scopes=[])).push(this)-1)}get active(){return this._active}run(t){if(this._active){const n=N;try{return N=this,t()}finally{N=n}}}on(){N=this}off(){N=this.parent}stop(t){if(this._active){let n,a;for(n=0,a=this.effects.length;n<a;n++)this.effects[n].stop();for(n=0,a=this.cleanups.length;n<a;n++)this.cleanups[n]();if(this.scopes)for(n=0,a=this.scopes.length;n<a;n++)this.scopes[n].stop(!0);if(!this.detached&&this.parent&&!t){const r=this.parent.scopes.pop();r&&r!==this&&(this.parent.scopes[this.index]=r,r.index=this.index)}this.parent=void 0,this._active=!1}}}function gr(e){return new vr(e)}function br(e,t=N){t&&t.active&&t.effects.push(e)}function sa(){return N}function yr(e){N&&N.cleanups.push(e)}const en=e=>{const t=new Set(e);return t.w=0,t.n=0,t},oa=e=>(e.w&ae)>0,la=e=>(e.n&ae)>0,wr=({deps:e})=>{if(e.length)for(let t=0;t<e.length;t++)e[t].w|=ae},_r=e=>{const{deps:t}=e;if(t.length){let n=0;for(let a=0;a<t.length;a++){const r=t[a];oa(r)&&!la(r)?r.delete(e):t[n++]=r,r.w&=~ae,r.n&=~ae}t.length=n}},ut=new WeakMap;let Ee=0,ae=1;const Rt=30;let U;const ue=Symbol(""),Nt=Symbol("");class ca{constructor(t,n=null,a){this.fn=t,this.scheduler=n,this.active=!0,this.deps=[],this.parent=void 0,br(this,a)}run(){if(!this.active)return this.fn();let t=U,n=te;for(;t;){if(t===this)return;t=t.parent}try{return this.parent=U,U=this,te=!0,ae=1<<++Ee,Ee<=Rt?wr(this):xn(this),this.fn()}finally{Ee<=Rt&&_r(this),ae=1<<--Ee,U=this.parent,te=n,this.parent=void 0,this.deferStop&&this.stop()}}stop(){U===this?this.deferStop=!0:this.active&&(xn(this),this.onStop&&this.onStop(),this.active=!1)}}function xn(e){const{deps:t}=e;if(t.length){for(let n=0;n<t.length;n++)t[n].delete(e);t.length=0}}let te=!0;const fa=[];function kr(){fa.push(te),te=!1}function xr(){const e=fa.pop();te=e===void 0?!0:e}function D(e,t,n){if(te&&U){let a=ut.get(e);a||ut.set(e,a=new Map);let r=a.get(n);r||a.set(n,r=en()),ua(r)}}function ua(e,t){let n=!1;Ee<=Rt?la(e)||(e.n|=ae,n=!oa(e)):n=!e.has(U),n&&(e.add(U),U.deps.push(e))}function ne(e,t,n,a,r,i){const s=ut.get(e);if(!s)return;let o=[];if(t==="clear")o=[...s.values()];else if(n==="length"&&L(e)){const l=Number(a);s.forEach((c,f)=>{(f==="length"||!bt(f)&&f>=l)&&o.push(c)})}else switch(n!==void 0&&o.push(s.get(n)),t){case"add":L(e)?Zt(n)&&o.push(s.get("length")):(o.push(s.get(ue)),Oe(e)&&o.push(s.get(Nt)));break;case"delete":L(e)||(o.push(s.get(ue)),Oe(e)&&o.push(s.get(Nt)));break;case"set":Oe(e)&&o.push(s.get(ue));break}if(o.length===1)o[0]&&Lt(o[0]);else{const l=[];for(const c of o)c&&l.push(...c);Lt(en(l))}}function Lt(e,t){const n=L(e)?e:[...e];for(const a of n)a.computed&&Sn(a);for(const a of n)a.computed||Sn(a)}function Sn(e,t){(e!==U||e.allowRecurse)&&(e.scheduler?e.scheduler():e.run())}function Sr(e,t){var n;return(n=ut.get(e))==null?void 0:n.get(t)}const Cr=ir("__proto__,__v_isRef,__isVue"),da=new Set(Object.getOwnPropertyNames(Symbol).filter(e=>e!=="arguments"&&e!=="caller").map(e=>Symbol[e]).filter(bt)),Cn=Ar();function Ar(){const e={};return["includes","indexOf","lastIndexOf"].forEach(t=>{e[t]=function(...n){const a=k(this);for(let i=0,s=this.length;i<s;i++)D(a,"get",i+"");const r=a[t](...n);return r===-1||r===!1?a[t](...n.map(k)):r}}),["push","pop","shift","unshift","splice"].forEach(t=>{e[t]=function(...n){kr();const a=k(this)[t].apply(this,n);return xr(),a}}),e}function Ir(e){const t=k(this);return D(t,"has",e),t.hasOwnProperty(e)}class ma{constructor(t=!1,n=!1){this._isReadonly=t,this._shallow=n}get(t,n,a){const r=this._isReadonly,i=this._shallow;if(n==="__v_isReactive")return!r;if(n==="__v_isReadonly")return r;if(n==="__v_isShallow")return i;if(n==="__v_raw")return a===(r?i?Gr:va:i?Dr:pa).get(t)||Object.getPrototypeOf(t)===Object.getPrototypeOf(a)?t:void 0;const s=L(t);if(!r){if(s&&ft(Cn,n))return Reflect.get(Cn,n,a);if(n==="hasOwnProperty")return Ir}const o=Reflect.get(t,n,a);return(bt(n)?da.has(n):Cr(n))||(r||D(t,"get",n),i)?o:R(o)?s&&Zt(n)?o:o.value:Se(o)?r?ga(o):nn(o):o}}class Er extends ma{constructor(t=!1){super(!1,t)}set(t,n,a,r){let i=t[n];if(Te(i)&&R(i)&&!R(a))return!1;if(!this._shallow&&(!dt(a)&&!Te(a)&&(i=k(i),a=k(a)),!L(t)&&R(i)&&!R(a)))return i.value=a,!0;const s=L(t)&&Zt(n)?Number(n)<t.length:ft(t,n),o=Reflect.set(t,n,a,r);return t===k(r)&&(s?de(a,i)&&ne(t,"set",n,a):ne(t,"add",n,a)),o}deleteProperty(t,n){const a=ft(t,n);t[n];const r=Reflect.deleteProperty(t,n);return r&&a&&ne(t,"delete",n,void 0),r}has(t,n){const a=Reflect.has(t,n);return(!bt(n)||!da.has(n))&&D(t,"has",n),a}ownKeys(t){return D(t,"iterate",L(t)?"length":ue),Reflect.ownKeys(t)}}class Mr extends ma{constructor(t=!1){super(!0,t)}set(t,n){return!0}deleteProperty(t,n){return!0}}const Pr=new Er,Or=new Mr,tn=e=>e,wt=e=>Reflect.getPrototypeOf(e);function Be(e,t,n=!1,a=!1){e=e.__v_raw;const r=k(e),i=k(t);n||(de(t,i)&&D(r,"get",t),D(r,"get",i));const{has:s}=wt(r),o=a?tn:n?an:ze;if(s.call(r,t))return o(e.get(t));if(s.call(r,i))return o(e.get(i));e!==r&&e.get(t)}function Ke(e,t=!1){const n=this.__v_raw,a=k(n),r=k(e);return t||(de(e,r)&&D(a,"has",e),D(a,"has",r)),e===r?n.has(e):n.has(e)||n.has(r)}function Xe(e,t=!1){return e=e.__v_raw,!t&&D(k(e),"iterate",ue),Reflect.get(e,"size",e)}function An(e){e=k(e);const t=k(this);return wt(t).has.call(t,e)||(t.add(e),ne(t,"add",e,e)),this}function In(e,t){t=k(t);const n=k(this),{has:a,get:r}=wt(n);let i=a.call(n,e);i||(e=k(e),i=a.call(n,e));const s=r.call(n,e);return n.set(e,t),i?de(t,s)&&ne(n,"set",e,t):ne(n,"add",e,t),this}function En(e){const t=k(this),{has:n,get:a}=wt(t);let r=n.call(t,e);r||(e=k(e),r=n.call(t,e)),a&&a.call(t,e);const i=t.delete(e);return r&&ne(t,"delete",e,void 0),i}function Mn(){const e=k(this),t=e.size!==0,n=e.clear();return t&&ne(e,"clear",void 0,void 0),n}function qe(e,t){return function(a,r){const i=this,s=i.__v_raw,o=k(s),l=t?tn:e?an:ze;return!e&&D(o,"iterate",ue),s.forEach((c,f)=>a.call(r,l(c),l(f),i))}}function Je(e,t,n){return function(...a){const r=this.__v_raw,i=k(r),s=Oe(i),o=e==="entries"||e===Symbol.iterator&&s,l=e==="keys"&&s,c=r[e](...a),f=n?tn:t?an:ze;return!t&&D(i,"iterate",l?Nt:ue),{next(){const{value:u,done:h}=c.next();return h?{value:u,done:h}:{value:o?[f(u[0]),f(u[1])]:f(u),done:h}},[Symbol.iterator](){return this}}}}function q(e){return function(...t){return e==="delete"?!1:e==="clear"?void 0:this}}function Rr(){const e={get(i){return Be(this,i)},get size(){return Xe(this)},has:Ke,add:An,set:In,delete:En,clear:Mn,forEach:qe(!1,!1)},t={get(i){return Be(this,i,!1,!0)},get size(){return Xe(this)},has:Ke,add:An,set:In,delete:En,clear:Mn,forEach:qe(!1,!0)},n={get(i){return Be(this,i,!0)},get size(){return Xe(this,!0)},has(i){return Ke.call(this,i,!0)},add:q("add"),set:q("set"),delete:q("delete"),clear:q("clear"),forEach:qe(!0,!1)},a={get(i){return Be(this,i,!0,!0)},get size(){return Xe(this,!0)},has(i){return Ke.call(this,i,!0)},add:q("add"),set:q("set"),delete:q("delete"),clear:q("clear"),forEach:qe(!0,!0)};return["keys","values","entries",Symbol.iterator].forEach(i=>{e[i]=Je(i,!1,!1),n[i]=Je(i,!0,!1),t[i]=Je(i,!1,!0),a[i]=Je(i,!0,!0)}),[e,n,t,a]}const[Nr,Lr,Tr,zr]=Rr();function ha(e,t){const n=t?e?zr:Tr:e?Lr:Nr;return(a,r,i)=>r==="__v_isReactive"?!e:r==="__v_isReadonly"?e:r==="__v_raw"?a:Reflect.get(ft(n,r)&&r in a?n:a,r,i)}const Fr={get:ha(!1,!1)},jr={get:ha(!0,!1)},pa=new WeakMap,Dr=new WeakMap,va=new WeakMap,Gr=new WeakMap;function Ur(e){switch(e){case"Object":case"Array":return 1;case"Map":case"Set":case"WeakMap":case"WeakSet":return 2;default:return 0}}function Wr(e){return e.__v_skip||!Object.isExtensible(e)?0:Ur(mr(e))}function nn(e){return Te(e)?e:ba(e,!1,Pr,Fr,pa)}function ga(e){return ba(e,!0,Or,jr,va)}function ba(e,t,n,a,r){if(!Se(e)||e.__v_raw&&!(t&&e.__v_isReactive))return e;const i=r.get(e);if(i)return i;const s=Wr(e);if(s===0)return e;const o=new Proxy(e,s===2?a:n);return r.set(e,o),o}function ye(e){return Te(e)?ye(e.__v_raw):!!(e&&e.__v_isReactive)}function Te(e){return!!(e&&e.__v_isReadonly)}function dt(e){return!!(e&&e.__v_isShallow)}function k(e){const t=e&&e.__v_raw;return t?k(t):e}function Yr(e){return pr(e,"__v_skip",!0),e}const ze=e=>Se(e)?nn(e):e,an=e=>Se(e)?ga(e):e;function ya(e){te&&U&&(e=k(e),ua(e.dep||(e.dep=en())))}function wa(e,t){e=k(e);const n=e.dep;n&&Lt(n)}function R(e){return!!(e&&e.__v_isRef===!0)}function Hr(e){return $r(e,!1)}function $r(e,t){return R(e)?e:new Vr(e,t)}class Vr{constructor(t,n){this.__v_isShallow=n,this.dep=void 0,this.__v_isRef=!0,this._rawValue=n?t:k(t),this._value=n?t:ze(t)}get value(){return ya(this),this._value}set value(t){const n=this.__v_isShallow||dt(t)||Te(t);t=n?t:k(t),de(t,this._rawValue)&&(this._rawValue=t,this._value=n?t:ze(t),wa(this))}}function Br(e){const t=L(e)?new Array(e.length):{};for(const n in e)t[n]=Xr(e,n);return t}class Kr{constructor(t,n,a){this._object=t,this._key=n,this._defaultValue=a,this.__v_isRef=!0}get value(){const t=this._object[this._key];return t===void 0?this._defaultValue:t}set value(t){this._object[this._key]=t}get dep(){return Sr(k(this._object),this._key)}}function Xr(e,t,n){const a=e[t];return R(a)?a:new Kr(e,t,n)}class qr{constructor(t,n,a,r){this._setter=n,this.dep=void 0,this.__v_isRef=!0,this.__v_isReadonly=!1,this._dirty=!0,this.effect=new ca(t,()=>{this._dirty||(this._dirty=!0,wa(this))}),this.effect.computed=this,this.effect.active=this._cacheable=!r,this.__v_isReadonly=a}get value(){const t=k(this);return ya(t),(t._dirty||!t._cacheable)&&(t._dirty=!1,t._value=t.effect.run()),t._value}set value(t){this._setter(t)}}function Jr(e,t,n=!1){let a,r;const i=ee(e);return i?(a=e,r=Qt):(a=e.get,r=e.set),new qr(a,r,i||!r,n)}function we(e,t,n,a){let r;try{r=a?e(...a):e()}catch(i){_a(i,t,n)}return r}function Tt(e,t,n,a){if(ee(e)){const i=we(e,t,n,a);return i&&ur(i)&&i.catch(s=>{_a(s,t,n)}),i}const r=[];for(let i=0;i<e.length;i++)r.push(Tt(e[i],t,n,a));return r}function _a(e,t,n,a=!0){const r=t?t.vnode:null;if(t){let i=t.parent;const s=t.proxy,o=n;for(;i;){const c=i.ec;if(c){for(let f=0;f<c.length;f++)if(c[f](e,s,o)===!1)return}i=i.parent}const l=t.appContext.config.errorHandler;if(l){we(l,null,10,[e,s,o]);return}}Qr(e,n,r,a)}function Qr(e,t,n,a=!0){console.error(e)}let mt=!1,zt=!1;const W=[];let Z=0;const _e=[];let $=null,le=0;const ka=Promise.resolve();let rn=null;function Zr(e){const t=rn||ka;return e?t.then(this?e.bind(this):e):t}function ei(e){let t=Z+1,n=W.length;for(;t<n;){const a=t+n>>>1,r=W[a],i=Fe(r);i<e||i===e&&r.pre?t=a+1:n=a}return t}function ti(e){(!W.length||!W.includes(e,mt&&e.allowRecurse?Z+1:Z))&&(e.id==null?W.push(e):W.splice(ei(e.id),0,e),xa())}function xa(){!mt&&!zt&&(zt=!0,rn=ka.then(Sa))}function ni(e){L(e)?_e.push(...e):(!$||!$.includes(e,e.allowRecurse?le+1:le))&&_e.push(e),xa()}function ai(e){if(_e.length){const t=[...new Set(_e)];if(_e.length=0,$){$.push(...t);return}for($=t,$.sort((n,a)=>Fe(n)-Fe(a)),le=0;le<$.length;le++)$[le]();$=null,le=0}}const Fe=e=>e.id==null?1/0:e.id,ri=(e,t)=>{const n=Fe(e)-Fe(t);if(n===0){if(e.pre&&!t.pre)return-1;if(t.pre&&!e.pre)return 1}return n};function Sa(e){zt=!1,mt=!0,W.sort(ri);const t=Qt;try{for(Z=0;Z<W.length;Z++){const n=W[Z];n&&n.active!==!1&&we(n,null,14)}}finally{Z=0,W.length=0,ai(),mt=!1,rn=null,(W.length||_e.length)&&Sa()}}let Ca=null;function ii(e,t){t&&t.pendingBranch?L(e)?t.effects.push(...e):t.effects.push(e):ni(e)}const Qe={};function si(e,t,n){return oi(e,t,n)}function oi(e,t,{immediate:n,deep:a,flush:r,onTrack:i,onTrigger:s}=sr){var o;const l=sa()===((o=je)==null?void 0:o.scope)?je:null;let c,f=!1,u=!1;if(R(e)?(c=()=>e.value,f=dt(e)):ye(e)?(c=()=>e,a=!0):L(e)?(u=!0,f=e.some(b=>ye(b)||dt(b)),c=()=>e.map(b=>{if(R(b))return b.value;if(ye(b))return ve(b);if(ee(b))return we(b,l,2)})):ee(e)?t?c=()=>we(e,l,2):c=()=>{if(!(l&&l.isUnmounted))return h&&h(),Tt(e,l,3,[g])}:c=Qt,t&&a){const b=c;c=()=>ve(b())}let h,g=b=>{h=d.onStop=()=>{we(b,l,4),h=d.onStop=void 0}},w=u?new Array(e.length).fill(Qe):Qe;const x=()=>{if(d.active)if(t){const b=d.run();(a||f||(u?b.some((I,_)=>de(I,w[_])):de(b,w)))&&(h&&h(),Tt(t,l,3,[b,w===Qe?void 0:u&&w[0]===Qe?[]:w,g]),w=b)}else d.run()};x.allowRecurse=!!t;let E;r==="sync"?E=x:r==="post"?E=()=>Pn(x,l&&l.suspense):(x.pre=!0,l&&(x.id=l.uid),E=()=>ti(x));const d=new ca(c,E);return t?n?x():w=d.run():r==="post"?Pn(d.run.bind(d),l&&l.suspense):d.run(),()=>{d.stop(),l&&l.scope&&or(l.scope.effects,d)}}function ve(e,t){if(!Se(e)||e.__v_skip||(t=t||new Set,t.has(e)))return e;if(t.add(e),R(e))ve(e.value,t);else if(L(e))for(let n=0;n<e.length;n++)ve(e[n],t);else if(cr(e)||Oe(e))e.forEach(n=>{ve(n,t)});else if(hr(e))for(const n in e)ve(e[n],t);return e}let Ft=null;function li(e,t,n=!1){const a=je||Ca;if(a||Ft){const r=a?a.parent==null?a.vnode.appContext&&a.vnode.appContext.provides:a.parent.provides:Ft._context.provides;if(r&&e in r)return r[e];if(arguments.length>1)return n&&ee(t)?t.call(a&&a.proxy):t}}function ci(){return!!(je||Ca||Ft)}const Pn=ii;let je=null,It,On="__VUE_INSTANCE_SETTERS__";(It=kn()[On])||(It=kn()[On]=[]),It.push(e=>je=e);let fi=!1;const ui=(e,t)=>Jr(e,t,fi);var Me=(e=>(e[e.HINT=0]="HINT",e[e.FORWARD_STEP=1]="FORWARD_STEP",e[e.PLAY=2]="PLAY",e[e.GUESS=3]="GUESS",e))(Me||{});const _t={Beginner:{height:9,width:9,mines:10},Intermediate:{height:16,width:16,mines:40},Expert:{height:16,width:30,mines:99}};class di{_id;mine;minesCount;revealed;_flagged;_aiMarkedMine;_aiMarkedSafe;_aiGuessed;constructor(t){this.mine=!1,this.revealed=!1,this.minesCount=0,this._aiMarkedMine=!1,this._aiMarkedSafe=!1,this._flagged=!1,this._aiGuessed=!1,this._id=t}get id(){return this._id}get flagged(){return this._flagged}set flagged(t){this._flagged=t}get aiGuessed(){return this._aiGuessed}set aiGuessed(t){this._aiGuessed=t}get hasMine(){return this.mine}set hasMine(t){this.mine=t}get minesAround(){return this.minesCount}set minesAround(t){this.minesCount=t}get aiMarkedMine(){return this._aiMarkedMine}set aiMarkedMine(t){this._aiMarkedMine=t}get aiMarkedSafe(){return this._aiMarkedSafe}set aiMarkedSafe(t){this._aiMarkedSafe=t}isRevealed(){return this.revealed}isNotRevealed(){return!this.revealed}reveal(){this.revealed=!0}}class jt{properties;cells;totalCells;initialized;constructor(t){this.initialized=!1,this.properties=t,this.totalCells=this.properties.height*this.properties.width,this.cells=Array.from(Array(this.totalCells)).map((n,a)=>new di(a))}isInitialized(){return this.initialized}getCellById(t){return this.cells.find(n=>n.id===t)}getCellByLocation(t,n){return this.cells[this.properties.width*n+t]}initializeMinesAroundCell(t){const n=this.getAdjacentCells(t).concat(t),a=this.properties.height*this.properties.width;return Array.from(Array(a).keys()).filter(i=>!n.find(s=>s.id===i)).sort(()=>Math.random()-.5).filter((i,s)=>s<this.properties.mines).sort((i,s)=>i-s).map(i=>this.cells[i]).forEach((i,s)=>i.hasMine=!0),this.cells.forEach(i=>i.minesAround=this.getMinesSurrounding(i)),this.initialized=!0,this.revealCell(t)}getNotRevealedCells(){return this.cells.filter(t=>t.isNotRevealed())}getRevealedCells(){return this.cells.filter(t=>t.isRevealed())}isGameLost(){return this.cells.some(t=>t.hasMine&&t.isRevealed())}isGameWon(){const t=this.cells.filter(n=>n.isNotRevealed());return t.every(n=>n.hasMine)&&t.length===this.properties.mines}isGameFinished(){return this.isGameLost()||this.isGameWon()}revealCell(t){if(t.isNotRevealed()){const n=[t];if(t.reveal(),t.hasMine){const a=this.cells.filter(r=>r.hasMine);return a.filter(r=>!r.flagged).forEach(r=>r.reveal()),a}else{if(t.minesAround===0){const a=this.getAdjacentCells(t).filter(r=>r.isNotRevealed()&&!r.flagged).map(r=>this.revealCell(r)).flat();n.push(...a)}return n}}return[]}getAdjacentCells(t){const n={x:t.id%this.properties.width,y:Math.floor(t.id/this.properties.width)},a=[];for(let r of[-1,0,1])for(let i of[-1,0,1]){const s=n.x+i,o=n.y+r;s<0||s>this.properties.width-1||o<0||o>this.properties.height-1||i===0&&r===0||a.push(this.getCellByLocation(s,o))}return a}getMinesSurrounding(t){return this.getAdjacentCells(t).filter(a=>a.hasMine).length}}const mi="modulepreload",hi=function(e){return"/minesweeper-ai/"+e},Rn={},pi=function(t,n,a){if(!n||n.length===0)return t();const r=document.getElementsByTagName("link");return Promise.all(n.map(i=>{if(i=hi(i),i in Rn)return;Rn[i]=!0;const s=i.endsWith(".css"),o=s?'[rel="stylesheet"]':"";if(!!a)for(let f=r.length-1;f>=0;f--){const u=r[f];if(u.href===i&&(!s||u.rel==="stylesheet"))return}else if(document.querySelector(`link[href="${i}"]${o}`))return;const c=document.createElement("link");if(c.rel=s?"stylesheet":mi,s||(c.as="script",c.crossOrigin=""),c.href=i,document.head.appendChild(c),s)return new Promise((f,u)=>{c.addEventListener("load",f),c.addEventListener("error",()=>u(new Error(`Unable to preload CSS for ${i}`)))})})).then(()=>t()).catch(i=>{const s=new Event("vite:preloadError",{cancelable:!0});if(s.payload=i,window.dispatchEvent(s),!s.defaultPrevented)throw i})};async function vi(e,t={}){const n={env:Object.assign(Object.create(globalThis),t.env||{},{abort(c,f,u,h){c=s(c>>>0),f=s(f>>>0),u=u>>>0,h=h>>>0,(()=>{throw Error(`${c} in ${f}:${u}:${h}`)})()},seed(){return(()=>Date.now()*Math.random())()},"console.log"(c){c=s(c>>>0),console.log(c)}})},{exports:a}=await WebAssembly.instantiate(e,n),r=a.memory||t.env.memory,i=Object.setPrototypeOf({update(c){return c=o(c)||l(),s(a.update(c)>>>0)},guess(c){return c=o(c)||l(),s(a.guess(c)>>>0)}},a);function s(c){if(!c)return null;const f=c+new Uint32Array(r.buffer)[c-4>>>2]>>>1,u=new Uint16Array(r.buffer);let h=c>>>1,g="";for(;f-h>1024;)g+=String.fromCharCode(...u.subarray(h,h+=1024));return g+String.fromCharCode(...u.subarray(h,f))}function o(c){if(c==null)return 0;const f=c.length,u=a.__new(f<<1,2)>>>0,h=new Uint16Array(r.buffer);for(let g=0;g<f;++g)h[(u>>>1)+g]=c.charCodeAt(g);return u}function l(){throw TypeError("value must not be null")}return i}const{memory:Ao,update:gi,guess:bi,tests:Io}=await(async e=>vi(await(async()=>{try{return await globalThis.WebAssembly.compileStreaming(globalThis.fetch(e))}catch{return globalThis.WebAssembly.compile(await(await pi(()=>import("./__vite-browser-external-b25bb000.js"),[])).readFile(e))}})(),{}))(new URL("/minesweeper-ai/assembly-9e5632e3.wasm",self.location));var ht=(e=>(e[e.UPDATE=0]="UPDATE",e[e.GUESS=1]="GUESS",e))(ht||{});postMessage({ready:!0});self.onmessage=e=>{const t=e.data;try{switch(t.action){case 0:const n=JSON.parse(gi(t.board)),a={messageId:t.messageId,update:n};self.postMessage(a);break;case 1:const r=JSON.parse(bi(t.board)),i={messageId:t.messageId,guess:r};self.postMessage(i);break}}catch(n){console.log(`WW ${t} got exception: `+ht[t.action]),console.error(n),self.postMessage(n)}};function yi(){return new Worker("/minesweeper-ai/WebWorker-08a81dc4.js",{type:"module"})}class kt{static solversCounter=0;solverId=kt.solversCounter++;worker;board;promisesResolves;readyPromiseResolve;_knownSafeCellsIds;_knownMineCellsIds;_guesses;_AiUpdates;constructor(t){this.worker=new yi,this.readyPromiseResolve=new Promise(n=>{this.worker.onmessage=a=>{this.createWorkerHooks(),n()}}),this.board=t,this._AiUpdates=0,this._knownSafeCellsIds=[],this._knownMineCellsIds=[],this._guesses=[],this.promisesResolves=[]}async waitUntilItsReady(){return this.readyPromiseResolve}get aiUpdates(){return this._AiUpdates}terminate(){this.worker.terminate()}async process(){return new Promise(t=>{++this._AiUpdates;const n=this.createModel(),a={webworkerId:this.solverId,action:ht.UPDATE,board:JSON.stringify(n),messageId:this.promisesResolves.length};this.promisesResolves.push(t),this.worker.postMessage(a)})}makeGuess(){return new Promise(t=>{const n=this.createModel(),a={webworkerId:this.solverId,action:ht.GUESS,board:JSON.stringify(n),messageId:this.promisesResolves.length};this.promisesResolves.push(t),this.worker.postMessage(a)})}createWorkerHooks(){this.worker.onerror=async t=>console.error(t),this.worker.onmessage=async t=>{t.data.update?(this._knownMineCellsIds=t.data.update.knownMineCellsIds,this._knownSafeCellsIds=t.data.update.knownSafeCellsIds,this.promisesResolves[t.data.messageId](t.data.update)):t.data.guess&&(this._guesses.push(t.data.guess),this.promisesResolves[t.data.messageId](t.data.guess))}}createModel(){return{properties:this.board.properties,cells:this.board.cells.map(t=>({_id:t.id,minesCount:t.isRevealed()?t.minesAround:void 0,revealed:t.isRevealed()}))}}get knownSafeCellsIds(){return this._knownSafeCellsIds}get knownMineCellsIds(){return this._knownMineCellsIds}get guesses(){return this._guesses}}/*!
 * pinia v2.1.7
 * (c) 2023 Eduardo San Martin Morote
 * @license MIT
 */let Aa;const sn=e=>Aa=e,wi=Symbol();function Dt(e){return e&&typeof e=="object"&&Object.prototype.toString.call(e)==="[object Object]"&&typeof e.toJSON!="function"}var Re;(function(e){e.direct="direct",e.patchObject="patch object",e.patchFunction="patch function"})(Re||(Re={}));const Ia=()=>{};function Nn(e,t,n,a=Ia){e.push(t);const r=()=>{const i=e.indexOf(t);i>-1&&(e.splice(i,1),a())};return!n&&sa()&&yr(r),r}function pe(e,...t){e.slice().forEach(n=>{n(...t)})}const _i=e=>e();function Gt(e,t){e instanceof Map&&t instanceof Map&&t.forEach((n,a)=>e.set(a,n)),e instanceof Set&&t instanceof Set&&t.forEach(e.add,e);for(const n in t){if(!t.hasOwnProperty(n))continue;const a=t[n],r=e[n];Dt(r)&&Dt(a)&&e.hasOwnProperty(n)&&!R(a)&&!ye(a)?e[n]=Gt(r,a):e[n]=a}return e}const ki=Symbol();function xi(e){return!Dt(e)||!e.hasOwnProperty(ki)}const{assign:Q}=Object;function Si(e){return!!(R(e)&&e.effect)}function Ci(e,t,n,a){const{state:r,actions:i,getters:s}=t,o=n.state.value[e];let l;function c(){o||(n.state.value[e]=r?r():{});const f=Br(n.state.value[e]);return Q(f,i,Object.keys(s||{}).reduce((u,h)=>(u[h]=Yr(ui(()=>{sn(n);const g=n._s.get(e);return s[h].call(g,g)})),u),{}))}return l=Ea(e,c,t,n,a,!0),l}function Ea(e,t,n={},a,r,i){let s;const o=Q({actions:{}},n),l={deep:!0};let c,f,u=[],h=[],g;const w=a.state.value[e];!i&&!w&&(a.state.value[e]={}),Hr({});let x;function E(S){let y;c=f=!1,typeof S=="function"?(S(a.state.value[e]),y={type:Re.patchFunction,storeId:e,events:g}):(Gt(a.state.value[e],S),y={type:Re.patchObject,payload:S,storeId:e,events:g});const z=x=Symbol();Zr().then(()=>{x===z&&(c=!0)}),f=!0,pe(u,y,a.state.value[e])}const d=i?function(){const{state:y}=n,z=y?y():{};this.$patch(oe=>{Q(oe,z)})}:Ia;function v(){s.stop(),u=[],h=[],a._s.delete(e)}function b(S,y){return function(){sn(a);const z=Array.from(arguments),oe=[],Ae=[];function ar(F){oe.push(F)}function rr(F){Ae.push(F)}pe(h,{args:z,name:S,store:_,after:ar,onError:rr});let Ie;try{Ie=y.apply(this&&this.$id===e?this:_,z)}catch(F){throw pe(Ae,F),F}return Ie instanceof Promise?Ie.then(F=>(pe(oe,F),F)).catch(F=>(pe(Ae,F),Promise.reject(F))):(pe(oe,Ie),Ie)}}const I={_p:a,$id:e,$onAction:Nn.bind(null,h),$patch:E,$reset:d,$subscribe(S,y={}){const z=Nn(u,S,y.detached,()=>oe()),oe=s.run(()=>si(()=>a.state.value[e],Ae=>{(y.flush==="sync"?f:c)&&S({storeId:e,type:Re.direct,events:g},Ae)},Q({},l,y)));return z},$dispose:v},_=nn(I);a._s.set(e,_);const O=(a._a&&a._a.runWithContext||_i)(()=>a._e.run(()=>(s=gr()).run(t)));for(const S in O){const y=O[S];if(R(y)&&!Si(y)||ye(y))i||(w&&xi(y)&&(R(y)?y.value=w[S]:Gt(y,w[S])),a.state.value[e][S]=y);else if(typeof y=="function"){const z=b(S,y);O[S]=z,o.actions[S]=y}}return Q(_,O),Q(k(_),O),Object.defineProperty(_,"$state",{get:()=>a.state.value[e],set:S=>{E(y=>{Q(y,S)})}}),a._p.forEach(S=>{Q(_,s.run(()=>S({store:_,app:a._a,pinia:a,options:o})))}),w&&i&&n.hydrate&&n.hydrate(_.$state,w),c=!0,f=!0,_}function Ai(e,t,n){let a,r;const i=typeof t=="function";typeof e=="string"?(a=e,r=i?n:t):(r=e,a=e.id);function s(o,l){const c=ci();return o=o||(c?li(wi,null):null),o&&sn(o),o=Aa,o._s.has(a)||(i?Ea(a,t,r,o):Ci(a,r,o)),o._s.get(a)}return s.$id=a,s}let j;const Ii="mineSweeper";Ai(Ii,{state:()=>{const e=_t.Expert,t=new jt(e);return{timer:0,timerInterval:void 0,boardProperties:e,board:t,aiIsThinking:!1,explodedBombId:void 0,gameOver:!1,victory:void 0,gameIsRunning:!1}},actions:{async createNewBoard(e){this.boardProperties=e;const t=new jt(e);this.board=t,j?.terminate(),j=new kt(t),this.gameIsRunning=!1,this.gameOver=!1,this.explodedBombId=void 0,this.victory=void 0,this.timer=0,clearInterval(this.timerInterval),await j.waitUntilItsReady()},unflagCell(e){const t=this.board.getCellById(e);t.aiMarkedMine||(t.aiMarkedMine=!1,t.flagged=!1)},flagCell(e){const t=this.board.getCellById(e);t.flagged=!0},checkGameOver(){return this.board.isGameLost()||this.board.isGameWon()},cellClick(e){this.gameIsRunning||(clearInterval(this.timerInterval),this.timerInterval=setInterval(()=>{this.gameOver||(this.timer+=1)},100)),this.gameIsRunning=!0,this.board.isInitialized()?this.board.revealCell(e):this.board.initializeMinesAroundCell(e),this.checkGameOver()&&(this.board.isGameLost()&&(console.log(e.id),this.explodedBombId=e.id,console.log(this.explodedBombId)),this.finishGame())},cellChorded(e){const t=this.board.getAdjacentCells(e);t.filter(a=>a.flagged).length===e.minesAround&&t.filter(a=>a.isNotRevealed()&&!a.flagged).forEach(a=>this.cellClick(a))},finishGame(){j?.terminate(),this.gameIsRunning=!1,this.gameOver=!0,this.victory=this.board.isGameWon(),clearInterval(this.timerInterval),console.log("game finished. "+(this.victory?"You won!":"You lost!"))},async aiAction(e){switch(e){case Me.HINT:await j?.process(),await this.putAiStamp();break;case Me.FORWARD_STEP:await this.aiPlayOneStep();break;case Me.PLAY:await this.aiPlay();break;case Me.GUESS:this.gameIsRunning||await this.createNewBoard(this.boardProperties);const t=await j?.makeGuess(),n=this.board.getCellById(t.id);console.log("marking as ai guess: "+t.id),n.aiGuessed=!0,this.cellClick(n);break}},async aiPlay(){console.log("thinking"),this.aiIsThinking=!0;do await j?.process();while(await this.updateCellStates());this.aiIsThinking=!1,console.log("done thinking"),this.checkGameOver()&&this.finishGame()},async aiPlayOneStep(){console.log("thinking"),this.aiIsThinking=!0,await j?.process(),await this.updateCellStates(),this.aiIsThinking=!1,console.log("done thinking"),this.checkGameOver()&&this.finishGame()},async updateCellStates(){return this.putAiStamp(),j.knownSafeCellsIds.filter(t=>this.board.cells[t].isNotRevealed()).map(t=>this.board.getCellById(t)).filter(t=>!t.flagged).map(t=>this.board.revealCell(t)).length>0},async putAiStamp(){return j.knownMineCellsIds.concat(j.knownSafeCellsIds).map(e=>this.board.getCellById(e)).filter(e=>e.isNotRevealed()).filter(e=>!e.flagged).forEach(e=>{j?.knownMineCellsIds.includes(e?.id)?(e.flagged=!0,e.aiMarkedMine=!0):e.aiMarkedSafe=!0})}}});function Ln(e,t){var n=Object.keys(e);if(Object.getOwnPropertySymbols){var a=Object.getOwnPropertySymbols(e);t&&(a=a.filter(function(r){return Object.getOwnPropertyDescriptor(e,r).enumerable})),n.push.apply(n,a)}return n}function m(e){for(var t=1;t<arguments.length;t++){var n=arguments[t]!=null?arguments[t]:{};t%2?Ln(Object(n),!0).forEach(function(a){P(e,a,n[a])}):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(n)):Ln(Object(n)).forEach(function(a){Object.defineProperty(e,a,Object.getOwnPropertyDescriptor(n,a))})}return e}function pt(e){"@babel/helpers - typeof";return pt=typeof Symbol=="function"&&typeof Symbol.iterator=="symbol"?function(t){return typeof t}:function(t){return t&&typeof Symbol=="function"&&t.constructor===Symbol&&t!==Symbol.prototype?"symbol":typeof t},pt(e)}function Ei(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}function Tn(e,t){for(var n=0;n<t.length;n++){var a=t[n];a.enumerable=a.enumerable||!1,a.configurable=!0,"value"in a&&(a.writable=!0),Object.defineProperty(e,a.key,a)}}function Mi(e,t,n){return t&&Tn(e.prototype,t),n&&Tn(e,n),Object.defineProperty(e,"prototype",{writable:!1}),e}function P(e,t,n){return t in e?Object.defineProperty(e,t,{value:n,enumerable:!0,configurable:!0,writable:!0}):e[t]=n,e}function on(e,t){return Oi(e)||Ni(e,t)||Ma(e,t)||Ti()}function He(e){return Pi(e)||Ri(e)||Ma(e)||Li()}function Pi(e){if(Array.isArray(e))return Ut(e)}function Oi(e){if(Array.isArray(e))return e}function Ri(e){if(typeof Symbol<"u"&&e[Symbol.iterator]!=null||e["@@iterator"]!=null)return Array.from(e)}function Ni(e,t){var n=e==null?null:typeof Symbol<"u"&&e[Symbol.iterator]||e["@@iterator"];if(n!=null){var a=[],r=!0,i=!1,s,o;try{for(n=n.call(e);!(r=(s=n.next()).done)&&(a.push(s.value),!(t&&a.length===t));r=!0);}catch(l){i=!0,o=l}finally{try{!r&&n.return!=null&&n.return()}finally{if(i)throw o}}return a}}function Ma(e,t){if(e){if(typeof e=="string")return Ut(e,t);var n=Object.prototype.toString.call(e).slice(8,-1);if(n==="Object"&&e.constructor&&(n=e.constructor.name),n==="Map"||n==="Set")return Array.from(e);if(n==="Arguments"||/^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(n))return Ut(e,t)}}function Ut(e,t){(t==null||t>e.length)&&(t=e.length);for(var n=0,a=new Array(t);n<t;n++)a[n]=e[n];return a}function Li(){throw new TypeError(`Invalid attempt to spread non-iterable instance.
In order to be iterable, non-array objects must have a [Symbol.iterator]() method.`)}function Ti(){throw new TypeError(`Invalid attempt to destructure non-iterable instance.
In order to be iterable, non-array objects must have a [Symbol.iterator]() method.`)}var zn=function(){},ln={},Pa={},Oa=null,Ra={mark:zn,measure:zn};try{typeof window<"u"&&(ln=window),typeof document<"u"&&(Pa=document),typeof MutationObserver<"u"&&(Oa=MutationObserver),typeof performance<"u"&&(Ra=performance)}catch{}var zi=ln.navigator||{},Fn=zi.userAgent,jn=Fn===void 0?"":Fn,re=ln,A=Pa,Dn=Oa,Ze=Ra;re.document;var X=!!A.documentElement&&!!A.head&&typeof A.addEventListener=="function"&&typeof A.createElement=="function",Na=~jn.indexOf("MSIE")||~jn.indexOf("Trident/"),et,tt,nt,at,rt,V="___FONT_AWESOME___",Wt=16,La="fa",Ta="svg-inline--fa",me="data-fa-i2svg",Yt="data-fa-pseudo-element",Fi="data-fa-pseudo-element-pending",cn="data-prefix",fn="data-icon",Gn="fontawesome-i2svg",ji="async",Di=["HTML","HEAD","STYLE","SCRIPT"],za=function(){try{return!0}catch{return!1}}(),C="classic",M="sharp",un=[C,M];function $e(e){return new Proxy(e,{get:function(n,a){return a in n?n[a]:n[C]}})}var De=$e((et={},P(et,C,{fa:"solid",fas:"solid","fa-solid":"solid",far:"regular","fa-regular":"regular",fal:"light","fa-light":"light",fat:"thin","fa-thin":"thin",fad:"duotone","fa-duotone":"duotone",fab:"brands","fa-brands":"brands",fak:"kit",fakd:"kit","fa-kit":"kit","fa-kit-duotone":"kit"}),P(et,M,{fa:"solid",fass:"solid","fa-solid":"solid",fasr:"regular","fa-regular":"regular",fasl:"light","fa-light":"light",fast:"thin","fa-thin":"thin"}),et)),Ge=$e((tt={},P(tt,C,{solid:"fas",regular:"far",light:"fal",thin:"fat",duotone:"fad",brands:"fab",kit:"fak"}),P(tt,M,{solid:"fass",regular:"fasr",light:"fasl",thin:"fast"}),tt)),Ue=$e((nt={},P(nt,C,{fab:"fa-brands",fad:"fa-duotone",fak:"fa-kit",fal:"fa-light",far:"fa-regular",fas:"fa-solid",fat:"fa-thin"}),P(nt,M,{fass:"fa-solid",fasr:"fa-regular",fasl:"fa-light",fast:"fa-thin"}),nt)),Gi=$e((at={},P(at,C,{"fa-brands":"fab","fa-duotone":"fad","fa-kit":"fak","fa-light":"fal","fa-regular":"far","fa-solid":"fas","fa-thin":"fat"}),P(at,M,{"fa-solid":"fass","fa-regular":"fasr","fa-light":"fasl","fa-thin":"fast"}),at)),Ui=/fa(s|r|l|t|d|b|k|ss|sr|sl|st)?[\-\ ]/,Fa="fa-layers-text",Wi=/Font ?Awesome ?([56 ]*)(Solid|Regular|Light|Thin|Duotone|Brands|Free|Pro|Sharp|Kit)?.*/i,Yi=$e((rt={},P(rt,C,{900:"fas",400:"far",normal:"far",300:"fal",100:"fat"}),P(rt,M,{900:"fass",400:"fasr",300:"fasl",100:"fast"}),rt)),ja=[1,2,3,4,5,6,7,8,9,10],Hi=ja.concat([11,12,13,14,15,16,17,18,19,20]),$i=["class","data-prefix","data-icon","data-fa-transform","data-fa-mask"],ce={GROUP:"duotone-group",SWAP_OPACITY:"swap-opacity",PRIMARY:"primary",SECONDARY:"secondary"},We=new Set;Object.keys(Ge[C]).map(We.add.bind(We));Object.keys(Ge[M]).map(We.add.bind(We));var Vi=[].concat(un,He(We),["2xs","xs","sm","lg","xl","2xl","beat","border","fade","beat-fade","bounce","flip-both","flip-horizontal","flip-vertical","flip","fw","inverse","layers-counter","layers-text","layers","li","pull-left","pull-right","pulse","rotate-180","rotate-270","rotate-90","rotate-by","shake","spin-pulse","spin-reverse","spin","stack-1x","stack-2x","stack","ul",ce.GROUP,ce.SWAP_OPACITY,ce.PRIMARY,ce.SECONDARY]).concat(ja.map(function(e){return"".concat(e,"x")})).concat(Hi.map(function(e){return"w-".concat(e)})),Ne=re.FontAwesomeConfig||{};function Bi(e){var t=A.querySelector("script["+e+"]");if(t)return t.getAttribute(e)}function Ki(e){return e===""?!0:e==="false"?!1:e==="true"?!0:e}if(A&&typeof A.querySelector=="function"){var Xi=[["data-family-prefix","familyPrefix"],["data-css-prefix","cssPrefix"],["data-family-default","familyDefault"],["data-style-default","styleDefault"],["data-replacement-class","replacementClass"],["data-auto-replace-svg","autoReplaceSvg"],["data-auto-add-css","autoAddCss"],["data-auto-a11y","autoA11y"],["data-search-pseudo-elements","searchPseudoElements"],["data-observe-mutations","observeMutations"],["data-mutate-approach","mutateApproach"],["data-keep-original-source","keepOriginalSource"],["data-measure-performance","measurePerformance"],["data-show-missing-icons","showMissingIcons"]];Xi.forEach(function(e){var t=on(e,2),n=t[0],a=t[1],r=Ki(Bi(n));r!=null&&(Ne[a]=r)})}var Da={styleDefault:"solid",familyDefault:"classic",cssPrefix:La,replacementClass:Ta,autoReplaceSvg:!0,autoAddCss:!0,autoA11y:!0,searchPseudoElements:!1,observeMutations:!0,mutateApproach:"async",keepOriginalSource:!0,measurePerformance:!1,showMissingIcons:!0};Ne.familyPrefix&&(Ne.cssPrefix=Ne.familyPrefix);var xe=m(m({},Da),Ne);xe.autoReplaceSvg||(xe.observeMutations=!1);var p={};Object.keys(Da).forEach(function(e){Object.defineProperty(p,e,{enumerable:!0,set:function(n){xe[e]=n,Le.forEach(function(a){return a(p)})},get:function(){return xe[e]}})});Object.defineProperty(p,"familyPrefix",{enumerable:!0,set:function(t){xe.cssPrefix=t,Le.forEach(function(n){return n(p)})},get:function(){return xe.cssPrefix}});re.FontAwesomeConfig=p;var Le=[];function qi(e){return Le.push(e),function(){Le.splice(Le.indexOf(e),1)}}var J=Wt,H={size:16,x:0,y:0,rotate:0,flipX:!1,flipY:!1};function Ji(e){if(!(!e||!X)){var t=A.createElement("style");t.setAttribute("type","text/css"),t.innerHTML=e;for(var n=A.head.childNodes,a=null,r=n.length-1;r>-1;r--){var i=n[r],s=(i.tagName||"").toUpperCase();["STYLE","LINK"].indexOf(s)>-1&&(a=i)}return A.head.insertBefore(t,a),e}}var Qi="0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";function Ye(){for(var e=12,t="";e-- >0;)t+=Qi[Math.random()*62|0];return t}function Ce(e){for(var t=[],n=(e||[]).length>>>0;n--;)t[n]=e[n];return t}function dn(e){return e.classList?Ce(e.classList):(e.getAttribute("class")||"").split(" ").filter(function(t){return t})}function Ga(e){return"".concat(e).replace(/&/g,"&amp;").replace(/"/g,"&quot;").replace(/'/g,"&#39;").replace(/</g,"&lt;").replace(/>/g,"&gt;")}function Zi(e){return Object.keys(e||{}).reduce(function(t,n){return t+"".concat(n,'="').concat(Ga(e[n]),'" ')},"").trim()}function xt(e){return Object.keys(e||{}).reduce(function(t,n){return t+"".concat(n,": ").concat(e[n].trim(),";")},"")}function mn(e){return e.size!==H.size||e.x!==H.x||e.y!==H.y||e.rotate!==H.rotate||e.flipX||e.flipY}function es(e){var t=e.transform,n=e.containerWidth,a=e.iconWidth,r={transform:"translate(".concat(n/2," 256)")},i="translate(".concat(t.x*32,", ").concat(t.y*32,") "),s="scale(".concat(t.size/16*(t.flipX?-1:1),", ").concat(t.size/16*(t.flipY?-1:1),") "),o="rotate(".concat(t.rotate," 0 0)"),l={transform:"".concat(i," ").concat(s," ").concat(o)},c={transform:"translate(".concat(a/2*-1," -256)")};return{outer:r,inner:l,path:c}}function ts(e){var t=e.transform,n=e.width,a=n===void 0?Wt:n,r=e.height,i=r===void 0?Wt:r,s=e.startCentered,o=s===void 0?!1:s,l="";return o&&Na?l+="translate(".concat(t.x/J-a/2,"em, ").concat(t.y/J-i/2,"em) "):o?l+="translate(calc(-50% + ".concat(t.x/J,"em), calc(-50% + ").concat(t.y/J,"em)) "):l+="translate(".concat(t.x/J,"em, ").concat(t.y/J,"em) "),l+="scale(".concat(t.size/J*(t.flipX?-1:1),", ").concat(t.size/J*(t.flipY?-1:1),") "),l+="rotate(".concat(t.rotate,"deg) "),l}var ns=`:root, :host {
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
}`;function Ua(){var e=La,t=Ta,n=p.cssPrefix,a=p.replacementClass,r=ns;if(n!==e||a!==t){var i=new RegExp("\\.".concat(e,"\\-"),"g"),s=new RegExp("\\--".concat(e,"\\-"),"g"),o=new RegExp("\\.".concat(t),"g");r=r.replace(i,".".concat(n,"-")).replace(s,"--".concat(n,"-")).replace(o,".".concat(a))}return r}var Un=!1;function Et(){p.autoAddCss&&!Un&&(Ji(Ua()),Un=!0)}var as={mixout:function(){return{dom:{css:Ua,insertCss:Et}}},hooks:function(){return{beforeDOMElementCreation:function(){Et()},beforeI2svg:function(){Et()}}}},B=re||{};B[V]||(B[V]={});B[V].styles||(B[V].styles={});B[V].hooks||(B[V].hooks={});B[V].shims||(B[V].shims=[]);var Y=B[V],Wa=[],rs=function e(){A.removeEventListener("DOMContentLoaded",e),vt=1,Wa.map(function(t){return t()})},vt=!1;X&&(vt=(A.documentElement.doScroll?/^loaded|^c/:/^loaded|^i|^c/).test(A.readyState),vt||A.addEventListener("DOMContentLoaded",rs));function is(e){X&&(vt?setTimeout(e,0):Wa.push(e))}function Ve(e){var t=e.tag,n=e.attributes,a=n===void 0?{}:n,r=e.children,i=r===void 0?[]:r;return typeof e=="string"?Ga(e):"<".concat(t," ").concat(Zi(a),">").concat(i.map(Ve).join(""),"</").concat(t,">")}function Wn(e,t,n){if(e&&e[t]&&e[t][n])return{prefix:t,iconName:n,icon:e[t][n]}}var ss=function(t,n){return function(a,r,i,s){return t.call(n,a,r,i,s)}},Mt=function(t,n,a,r){var i=Object.keys(t),s=i.length,o=r!==void 0?ss(n,r):n,l,c,f;for(a===void 0?(l=1,f=t[i[0]]):(l=0,f=a);l<s;l++)c=i[l],f=o(f,t[c],c,t);return f};function os(e){for(var t=[],n=0,a=e.length;n<a;){var r=e.charCodeAt(n++);if(r>=55296&&r<=56319&&n<a){var i=e.charCodeAt(n++);(i&64512)==56320?t.push(((r&1023)<<10)+(i&1023)+65536):(t.push(r),n--)}else t.push(r)}return t}function Ht(e){var t=os(e);return t.length===1?t[0].toString(16):null}function ls(e,t){var n=e.length,a=e.charCodeAt(t),r;return a>=55296&&a<=56319&&n>t+1&&(r=e.charCodeAt(t+1),r>=56320&&r<=57343)?(a-55296)*1024+r-56320+65536:a}function Yn(e){return Object.keys(e).reduce(function(t,n){var a=e[n],r=!!a.icon;return r?t[a.iconName]=a.icon:t[n]=a,t},{})}function $t(e,t){var n=arguments.length>2&&arguments[2]!==void 0?arguments[2]:{},a=n.skipHooks,r=a===void 0?!1:a,i=Yn(t);typeof Y.hooks.addPack=="function"&&!r?Y.hooks.addPack(e,Yn(t)):Y.styles[e]=m(m({},Y.styles[e]||{}),i),e==="fas"&&$t("fa",t)}var it,st,ot,ge=Y.styles,cs=Y.shims,fs=(it={},P(it,C,Object.values(Ue[C])),P(it,M,Object.values(Ue[M])),it),hn=null,Ya={},Ha={},$a={},Va={},Ba={},us=(st={},P(st,C,Object.keys(De[C])),P(st,M,Object.keys(De[M])),st);function ds(e){return~Vi.indexOf(e)}function ms(e,t){var n=t.split("-"),a=n[0],r=n.slice(1).join("-");return a===e&&r!==""&&!ds(r)?r:null}var Ka=function(){var t=function(i){return Mt(ge,function(s,o,l){return s[l]=Mt(o,i,{}),s},{})};Ya=t(function(r,i,s){if(i[3]&&(r[i[3]]=s),i[2]){var o=i[2].filter(function(l){return typeof l=="number"});o.forEach(function(l){r[l.toString(16)]=s})}return r}),Ha=t(function(r,i,s){if(r[s]=s,i[2]){var o=i[2].filter(function(l){return typeof l=="string"});o.forEach(function(l){r[l]=s})}return r}),Ba=t(function(r,i,s){var o=i[2];return r[s]=s,o.forEach(function(l){r[l]=s}),r});var n="far"in ge||p.autoFetchSvg,a=Mt(cs,function(r,i){var s=i[0],o=i[1],l=i[2];return o==="far"&&!n&&(o="fas"),typeof s=="string"&&(r.names[s]={prefix:o,iconName:l}),typeof s=="number"&&(r.unicodes[s.toString(16)]={prefix:o,iconName:l}),r},{names:{},unicodes:{}});$a=a.names,Va=a.unicodes,hn=St(p.styleDefault,{family:p.familyDefault})};qi(function(e){hn=St(e.styleDefault,{family:p.familyDefault})});Ka();function pn(e,t){return(Ya[e]||{})[t]}function hs(e,t){return(Ha[e]||{})[t]}function fe(e,t){return(Ba[e]||{})[t]}function Xa(e){return $a[e]||{prefix:null,iconName:null}}function ps(e){var t=Va[e],n=pn("fas",e);return t||(n?{prefix:"fas",iconName:n}:null)||{prefix:null,iconName:null}}function ie(){return hn}var vn=function(){return{prefix:null,iconName:null,rest:[]}};function St(e){var t=arguments.length>1&&arguments[1]!==void 0?arguments[1]:{},n=t.family,a=n===void 0?C:n,r=De[a][e],i=Ge[a][e]||Ge[a][r],s=e in Y.styles?e:null;return i||s||null}var Hn=(ot={},P(ot,C,Object.keys(Ue[C])),P(ot,M,Object.keys(Ue[M])),ot);function Ct(e){var t,n=arguments.length>1&&arguments[1]!==void 0?arguments[1]:{},a=n.skipLookups,r=a===void 0?!1:a,i=(t={},P(t,C,"".concat(p.cssPrefix,"-").concat(C)),P(t,M,"".concat(p.cssPrefix,"-").concat(M)),t),s=null,o=C;(e.includes(i[C])||e.some(function(c){return Hn[C].includes(c)}))&&(o=C),(e.includes(i[M])||e.some(function(c){return Hn[M].includes(c)}))&&(o=M);var l=e.reduce(function(c,f){var u=ms(p.cssPrefix,f);if(ge[f]?(f=fs[o].includes(f)?Gi[o][f]:f,s=f,c.prefix=f):us[o].indexOf(f)>-1?(s=f,c.prefix=St(f,{family:o})):u?c.iconName=u:f!==p.replacementClass&&f!==i[C]&&f!==i[M]&&c.rest.push(f),!r&&c.prefix&&c.iconName){var h=s==="fa"?Xa(c.iconName):{},g=fe(c.prefix,c.iconName);h.prefix&&(s=null),c.iconName=h.iconName||g||c.iconName,c.prefix=h.prefix||c.prefix,c.prefix==="far"&&!ge.far&&ge.fas&&!p.autoFetchSvg&&(c.prefix="fas")}return c},vn());return(e.includes("fa-brands")||e.includes("fab"))&&(l.prefix="fab"),(e.includes("fa-duotone")||e.includes("fad"))&&(l.prefix="fad"),!l.prefix&&o===M&&(ge.fass||p.autoFetchSvg)&&(l.prefix="fass",l.iconName=fe(l.prefix,l.iconName)||l.iconName),(l.prefix==="fa"||s==="fa")&&(l.prefix=ie()||"fas"),l}var vs=function(){function e(){Ei(this,e),this.definitions={}}return Mi(e,[{key:"add",value:function(){for(var n=this,a=arguments.length,r=new Array(a),i=0;i<a;i++)r[i]=arguments[i];var s=r.reduce(this._pullDefinitions,{});Object.keys(s).forEach(function(o){n.definitions[o]=m(m({},n.definitions[o]||{}),s[o]),$t(o,s[o]);var l=Ue[C][o];l&&$t(l,s[o]),Ka()})}},{key:"reset",value:function(){this.definitions={}}},{key:"_pullDefinitions",value:function(n,a){var r=a.prefix&&a.iconName&&a.icon?{0:a}:a;return Object.keys(r).map(function(i){var s=r[i],o=s.prefix,l=s.iconName,c=s.icon,f=c[2];n[o]||(n[o]={}),f.length>0&&f.forEach(function(u){typeof u=="string"&&(n[o][u]=c)}),n[o][l]=c}),n}}]),e}(),$n=[],be={},ke={},gs=Object.keys(ke);function bs(e,t){var n=t.mixoutsTo;return $n=e,be={},Object.keys(ke).forEach(function(a){gs.indexOf(a)===-1&&delete ke[a]}),$n.forEach(function(a){var r=a.mixout?a.mixout():{};if(Object.keys(r).forEach(function(s){typeof r[s]=="function"&&(n[s]=r[s]),pt(r[s])==="object"&&Object.keys(r[s]).forEach(function(o){n[s]||(n[s]={}),n[s][o]=r[s][o]})}),a.hooks){var i=a.hooks();Object.keys(i).forEach(function(s){be[s]||(be[s]=[]),be[s].push(i[s])})}a.provides&&a.provides(ke)}),n}function Vt(e,t){for(var n=arguments.length,a=new Array(n>2?n-2:0),r=2;r<n;r++)a[r-2]=arguments[r];var i=be[e]||[];return i.forEach(function(s){t=s.apply(null,[t].concat(a))}),t}function he(e){for(var t=arguments.length,n=new Array(t>1?t-1:0),a=1;a<t;a++)n[a-1]=arguments[a];var r=be[e]||[];r.forEach(function(i){i.apply(null,n)})}function K(){var e=arguments[0],t=Array.prototype.slice.call(arguments,1);return ke[e]?ke[e].apply(null,t):void 0}function Bt(e){e.prefix==="fa"&&(e.prefix="fas");var t=e.iconName,n=e.prefix||ie();if(t)return t=fe(n,t)||t,Wn(qa.definitions,n,t)||Wn(Y.styles,n,t)}var qa=new vs,ys=function(){p.autoReplaceSvg=!1,p.observeMutations=!1,he("noAuto")},ws={i2svg:function(){var t=arguments.length>0&&arguments[0]!==void 0?arguments[0]:{};return X?(he("beforeI2svg",t),K("pseudoElements2svg",t),K("i2svg",t)):Promise.reject("Operation requires a DOM of some kind.")},watch:function(){var t=arguments.length>0&&arguments[0]!==void 0?arguments[0]:{},n=t.autoReplaceSvgRoot;p.autoReplaceSvg===!1&&(p.autoReplaceSvg=!0),p.observeMutations=!0,is(function(){ks({autoReplaceSvgRoot:n}),he("watch",t)})}},_s={icon:function(t){if(t===null)return null;if(pt(t)==="object"&&t.prefix&&t.iconName)return{prefix:t.prefix,iconName:fe(t.prefix,t.iconName)||t.iconName};if(Array.isArray(t)&&t.length===2){var n=t[1].indexOf("fa-")===0?t[1].slice(3):t[1],a=St(t[0]);return{prefix:a,iconName:fe(a,n)||n}}if(typeof t=="string"&&(t.indexOf("".concat(p.cssPrefix,"-"))>-1||t.match(Ui))){var r=Ct(t.split(" "),{skipLookups:!0});return{prefix:r.prefix||ie(),iconName:fe(r.prefix,r.iconName)||r.iconName}}if(typeof t=="string"){var i=ie();return{prefix:i,iconName:fe(i,t)||t}}}},T={noAuto:ys,config:p,dom:ws,parse:_s,library:qa,findIconDefinition:Bt,toHtml:Ve},ks=function(){var t=arguments.length>0&&arguments[0]!==void 0?arguments[0]:{},n=t.autoReplaceSvgRoot,a=n===void 0?A:n;(Object.keys(Y.styles).length>0||p.autoFetchSvg)&&X&&p.autoReplaceSvg&&T.dom.i2svg({node:a})};function At(e,t){return Object.defineProperty(e,"abstract",{get:t}),Object.defineProperty(e,"html",{get:function(){return e.abstract.map(function(a){return Ve(a)})}}),Object.defineProperty(e,"node",{get:function(){if(X){var a=A.createElement("div");return a.innerHTML=e.html,a.children}}}),e}function xs(e){var t=e.children,n=e.main,a=e.mask,r=e.attributes,i=e.styles,s=e.transform;if(mn(s)&&n.found&&!a.found){var o=n.width,l=n.height,c={x:o/l/2,y:.5};r.style=xt(m(m({},i),{},{"transform-origin":"".concat(c.x+s.x/16,"em ").concat(c.y+s.y/16,"em")}))}return[{tag:"svg",attributes:r,children:t}]}function Ss(e){var t=e.prefix,n=e.iconName,a=e.children,r=e.attributes,i=e.symbol,s=i===!0?"".concat(t,"-").concat(p.cssPrefix,"-").concat(n):i;return[{tag:"svg",attributes:{style:"display: none;"},children:[{tag:"symbol",attributes:m(m({},r),{},{id:s}),children:a}]}]}function gn(e){var t=e.icons,n=t.main,a=t.mask,r=e.prefix,i=e.iconName,s=e.transform,o=e.symbol,l=e.title,c=e.maskId,f=e.titleId,u=e.extra,h=e.watchable,g=h===void 0?!1:h,w=a.found?a:n,x=w.width,E=w.height,d=r==="fak",v=[p.replacementClass,i?"".concat(p.cssPrefix,"-").concat(i):""].filter(function(y){return u.classes.indexOf(y)===-1}).filter(function(y){return y!==""||!!y}).concat(u.classes).join(" "),b={children:[],attributes:m(m({},u.attributes),{},{"data-prefix":r,"data-icon":i,class:v,role:u.attributes.role||"img",xmlns:"http://www.w3.org/2000/svg",viewBox:"0 0 ".concat(x," ").concat(E)})},I=d&&!~u.classes.indexOf("fa-fw")?{width:"".concat(x/E*16*.0625,"em")}:{};g&&(b.attributes[me]=""),l&&(b.children.push({tag:"title",attributes:{id:b.attributes["aria-labelledby"]||"title-".concat(f||Ye())},children:[l]}),delete b.attributes.title);var _=m(m({},b),{},{prefix:r,iconName:i,main:n,mask:a,maskId:c,transform:s,symbol:o,styles:m(m({},I),u.styles)}),G=a.found&&n.found?K("generateAbstractMask",_)||{children:[],attributes:{}}:K("generateAbstractIcon",_)||{children:[],attributes:{}},O=G.children,S=G.attributes;return _.children=O,_.attributes=S,o?Ss(_):xs(_)}function Vn(e){var t=e.content,n=e.width,a=e.height,r=e.transform,i=e.title,s=e.extra,o=e.watchable,l=o===void 0?!1:o,c=m(m(m({},s.attributes),i?{title:i}:{}),{},{class:s.classes.join(" ")});l&&(c[me]="");var f=m({},s.styles);mn(r)&&(f.transform=ts({transform:r,startCentered:!0,width:n,height:a}),f["-webkit-transform"]=f.transform);var u=xt(f);u.length>0&&(c.style=u);var h=[];return h.push({tag:"span",attributes:c,children:[t]}),i&&h.push({tag:"span",attributes:{class:"sr-only"},children:[i]}),h}function Cs(e){var t=e.content,n=e.title,a=e.extra,r=m(m(m({},a.attributes),n?{title:n}:{}),{},{class:a.classes.join(" ")}),i=xt(a.styles);i.length>0&&(r.style=i);var s=[];return s.push({tag:"span",attributes:r,children:[t]}),n&&s.push({tag:"span",attributes:{class:"sr-only"},children:[n]}),s}var Pt=Y.styles;function Kt(e){var t=e[0],n=e[1],a=e.slice(4),r=on(a,1),i=r[0],s=null;return Array.isArray(i)?s={tag:"g",attributes:{class:"".concat(p.cssPrefix,"-").concat(ce.GROUP)},children:[{tag:"path",attributes:{class:"".concat(p.cssPrefix,"-").concat(ce.SECONDARY),fill:"currentColor",d:i[0]}},{tag:"path",attributes:{class:"".concat(p.cssPrefix,"-").concat(ce.PRIMARY),fill:"currentColor",d:i[1]}}]}:s={tag:"path",attributes:{fill:"currentColor",d:i}},{found:!0,width:t,height:n,icon:s}}var As={found:!1,width:512,height:512};function Is(e,t){!za&&!p.showMissingIcons&&e&&console.error('Icon with name "'.concat(e,'" and prefix "').concat(t,'" is missing.'))}function Xt(e,t){var n=t;return t==="fa"&&p.styleDefault!==null&&(t=ie()),new Promise(function(a,r){if(K("missingIconAbstract"),n==="fa"){var i=Xa(e)||{};e=i.iconName||e,t=i.prefix||t}if(e&&t&&Pt[t]&&Pt[t][e]){var s=Pt[t][e];return a(Kt(s))}Is(e,t),a(m(m({},As),{},{icon:p.showMissingIcons&&e?K("missingIconAbstract")||{}:{}}))})}var Bn=function(){},qt=p.measurePerformance&&Ze&&Ze.mark&&Ze.measure?Ze:{mark:Bn,measure:Bn},Pe='FA "6.5.1"',Es=function(t){return qt.mark("".concat(Pe," ").concat(t," begins")),function(){return Ja(t)}},Ja=function(t){qt.mark("".concat(Pe," ").concat(t," ends")),qt.measure("".concat(Pe," ").concat(t),"".concat(Pe," ").concat(t," begins"),"".concat(Pe," ").concat(t," ends"))},bn={begin:Es,end:Ja},lt=function(){};function Kn(e){var t=e.getAttribute?e.getAttribute(me):null;return typeof t=="string"}function Ms(e){var t=e.getAttribute?e.getAttribute(cn):null,n=e.getAttribute?e.getAttribute(fn):null;return t&&n}function Ps(e){return e&&e.classList&&e.classList.contains&&e.classList.contains(p.replacementClass)}function Os(){if(p.autoReplaceSvg===!0)return ct.replace;var e=ct[p.autoReplaceSvg];return e||ct.replace}function Rs(e){return A.createElementNS("http://www.w3.org/2000/svg",e)}function Ns(e){return A.createElement(e)}function Qa(e){var t=arguments.length>1&&arguments[1]!==void 0?arguments[1]:{},n=t.ceFn,a=n===void 0?e.tag==="svg"?Rs:Ns:n;if(typeof e=="string")return A.createTextNode(e);var r=a(e.tag);Object.keys(e.attributes||[]).forEach(function(s){r.setAttribute(s,e.attributes[s])});var i=e.children||[];return i.forEach(function(s){r.appendChild(Qa(s,{ceFn:a}))}),r}function Ls(e){var t=" ".concat(e.outerHTML," ");return t="".concat(t,"Font Awesome fontawesome.com "),t}var ct={replace:function(t){var n=t[0];if(n.parentNode)if(t[1].forEach(function(r){n.parentNode.insertBefore(Qa(r),n)}),n.getAttribute(me)===null&&p.keepOriginalSource){var a=A.createComment(Ls(n));n.parentNode.replaceChild(a,n)}else n.remove()},nest:function(t){var n=t[0],a=t[1];if(~dn(n).indexOf(p.replacementClass))return ct.replace(t);var r=new RegExp("".concat(p.cssPrefix,"-.*"));if(delete a[0].attributes.id,a[0].attributes.class){var i=a[0].attributes.class.split(" ").reduce(function(o,l){return l===p.replacementClass||l.match(r)?o.toSvg.push(l):o.toNode.push(l),o},{toNode:[],toSvg:[]});a[0].attributes.class=i.toSvg.join(" "),i.toNode.length===0?n.removeAttribute("class"):n.setAttribute("class",i.toNode.join(" "))}var s=a.map(function(o){return Ve(o)}).join(`
`);n.setAttribute(me,""),n.innerHTML=s}};function Xn(e){e()}function Za(e,t){var n=typeof t=="function"?t:lt;if(e.length===0)n();else{var a=Xn;p.mutateApproach===ji&&(a=re.requestAnimationFrame||Xn),a(function(){var r=Os(),i=bn.begin("mutate");e.map(r),i(),n()})}}var yn=!1;function er(){yn=!0}function Jt(){yn=!1}var gt=null;function qn(e){if(Dn&&p.observeMutations){var t=e.treeCallback,n=t===void 0?lt:t,a=e.nodeCallback,r=a===void 0?lt:a,i=e.pseudoElementsCallback,s=i===void 0?lt:i,o=e.observeMutationsRoot,l=o===void 0?A:o;gt=new Dn(function(c){if(!yn){var f=ie();Ce(c).forEach(function(u){if(u.type==="childList"&&u.addedNodes.length>0&&!Kn(u.addedNodes[0])&&(p.searchPseudoElements&&s(u.target),n(u.target)),u.type==="attributes"&&u.target.parentNode&&p.searchPseudoElements&&s(u.target.parentNode),u.type==="attributes"&&Kn(u.target)&&~$i.indexOf(u.attributeName))if(u.attributeName==="class"&&Ms(u.target)){var h=Ct(dn(u.target)),g=h.prefix,w=h.iconName;u.target.setAttribute(cn,g||f),w&&u.target.setAttribute(fn,w)}else Ps(u.target)&&r(u.target)})}}),X&&gt.observe(l,{childList:!0,attributes:!0,characterData:!0,subtree:!0})}}function Ts(){gt&&gt.disconnect()}function zs(e){var t=e.getAttribute("style"),n=[];return t&&(n=t.split(";").reduce(function(a,r){var i=r.split(":"),s=i[0],o=i.slice(1);return s&&o.length>0&&(a[s]=o.join(":").trim()),a},{})),n}function Fs(e){var t=e.getAttribute("data-prefix"),n=e.getAttribute("data-icon"),a=e.innerText!==void 0?e.innerText.trim():"",r=Ct(dn(e));return r.prefix||(r.prefix=ie()),t&&n&&(r.prefix=t,r.iconName=n),r.iconName&&r.prefix||(r.prefix&&a.length>0&&(r.iconName=hs(r.prefix,e.innerText)||pn(r.prefix,Ht(e.innerText))),!r.iconName&&p.autoFetchSvg&&e.firstChild&&e.firstChild.nodeType===Node.TEXT_NODE&&(r.iconName=e.firstChild.data)),r}function js(e){var t=Ce(e.attributes).reduce(function(r,i){return r.name!=="class"&&r.name!=="style"&&(r[i.name]=i.value),r},{}),n=e.getAttribute("title"),a=e.getAttribute("data-fa-title-id");return p.autoA11y&&(n?t["aria-labelledby"]="".concat(p.replacementClass,"-title-").concat(a||Ye()):(t["aria-hidden"]="true",t.focusable="false")),t}function Ds(){return{iconName:null,title:null,titleId:null,prefix:null,transform:H,symbol:!1,mask:{iconName:null,prefix:null,rest:[]},maskId:null,extra:{classes:[],styles:{},attributes:{}}}}function Jn(e){var t=arguments.length>1&&arguments[1]!==void 0?arguments[1]:{styleParser:!0},n=Fs(e),a=n.iconName,r=n.prefix,i=n.rest,s=js(e),o=Vt("parseNodeAttributes",{},e),l=t.styleParser?zs(e):[];return m({iconName:a,title:e.getAttribute("title"),titleId:e.getAttribute("data-fa-title-id"),prefix:r,transform:H,mask:{iconName:null,prefix:null,rest:[]},maskId:null,symbol:!1,extra:{classes:i,styles:l,attributes:s}},o)}var Gs=Y.styles;function tr(e){var t=p.autoReplaceSvg==="nest"?Jn(e,{styleParser:!1}):Jn(e);return~t.extra.classes.indexOf(Fa)?K("generateLayersText",e,t):K("generateSvgReplacementMutation",e,t)}var se=new Set;un.map(function(e){se.add("fa-".concat(e))});Object.keys(De[C]).map(se.add.bind(se));Object.keys(De[M]).map(se.add.bind(se));se=He(se);function Qn(e){var t=arguments.length>1&&arguments[1]!==void 0?arguments[1]:null;if(!X)return Promise.resolve();var n=A.documentElement.classList,a=function(u){return n.add("".concat(Gn,"-").concat(u))},r=function(u){return n.remove("".concat(Gn,"-").concat(u))},i=p.autoFetchSvg?se:un.map(function(f){return"fa-".concat(f)}).concat(Object.keys(Gs));i.includes("fa")||i.push("fa");var s=[".".concat(Fa,":not([").concat(me,"])")].concat(i.map(function(f){return".".concat(f,":not([").concat(me,"])")})).join(", ");if(s.length===0)return Promise.resolve();var o=[];try{o=Ce(e.querySelectorAll(s))}catch{}if(o.length>0)a("pending"),r("complete");else return Promise.resolve();var l=bn.begin("onTree"),c=o.reduce(function(f,u){try{var h=tr(u);h&&f.push(h)}catch(g){za||g.name==="MissingIcon"&&console.error(g)}return f},[]);return new Promise(function(f,u){Promise.all(c).then(function(h){Za(h,function(){a("active"),a("complete"),r("pending"),typeof t=="function"&&t(),l(),f()})}).catch(function(h){l(),u(h)})})}function Us(e){var t=arguments.length>1&&arguments[1]!==void 0?arguments[1]:null;tr(e).then(function(n){n&&Za([n],t)})}function Ws(e){return function(t){var n=arguments.length>1&&arguments[1]!==void 0?arguments[1]:{},a=(t||{}).icon?t:Bt(t||{}),r=n.mask;return r&&(r=(r||{}).icon?r:Bt(r||{})),e(a,m(m({},n),{},{mask:r}))}}var Ys=function(t){var n=arguments.length>1&&arguments[1]!==void 0?arguments[1]:{},a=n.transform,r=a===void 0?H:a,i=n.symbol,s=i===void 0?!1:i,o=n.mask,l=o===void 0?null:o,c=n.maskId,f=c===void 0?null:c,u=n.title,h=u===void 0?null:u,g=n.titleId,w=g===void 0?null:g,x=n.classes,E=x===void 0?[]:x,d=n.attributes,v=d===void 0?{}:d,b=n.styles,I=b===void 0?{}:b;if(t){var _=t.prefix,G=t.iconName,O=t.icon;return At(m({type:"icon"},t),function(){return he("beforeDOMElementCreation",{iconDefinition:t,params:n}),p.autoA11y&&(h?v["aria-labelledby"]="".concat(p.replacementClass,"-title-").concat(w||Ye()):(v["aria-hidden"]="true",v.focusable="false")),gn({icons:{main:Kt(O),mask:l?Kt(l.icon):{found:!1,width:null,height:null,icon:{}}},prefix:_,iconName:G,transform:m(m({},H),r),symbol:s,title:h,maskId:f,titleId:w,extra:{attributes:v,styles:I,classes:E}})})}},Hs={mixout:function(){return{icon:Ws(Ys)}},hooks:function(){return{mutationObserverCallbacks:function(n){return n.treeCallback=Qn,n.nodeCallback=Us,n}}},provides:function(t){t.i2svg=function(n){var a=n.node,r=a===void 0?A:a,i=n.callback,s=i===void 0?function(){}:i;return Qn(r,s)},t.generateSvgReplacementMutation=function(n,a){var r=a.iconName,i=a.title,s=a.titleId,o=a.prefix,l=a.transform,c=a.symbol,f=a.mask,u=a.maskId,h=a.extra;return new Promise(function(g,w){Promise.all([Xt(r,o),f.iconName?Xt(f.iconName,f.prefix):Promise.resolve({found:!1,width:512,height:512,icon:{}})]).then(function(x){var E=on(x,2),d=E[0],v=E[1];g([n,gn({icons:{main:d,mask:v},prefix:o,iconName:r,transform:l,symbol:c,maskId:u,title:i,titleId:s,extra:h,watchable:!0})])}).catch(w)})},t.generateAbstractIcon=function(n){var a=n.children,r=n.attributes,i=n.main,s=n.transform,o=n.styles,l=xt(o);l.length>0&&(r.style=l);var c;return mn(s)&&(c=K("generateAbstractTransformGrouping",{main:i,transform:s,containerWidth:i.width,iconWidth:i.width})),a.push(c||i.icon),{children:a,attributes:r}}}},$s={mixout:function(){return{layer:function(n){var a=arguments.length>1&&arguments[1]!==void 0?arguments[1]:{},r=a.classes,i=r===void 0?[]:r;return At({type:"layer"},function(){he("beforeDOMElementCreation",{assembler:n,params:a});var s=[];return n(function(o){Array.isArray(o)?o.map(function(l){s=s.concat(l.abstract)}):s=s.concat(o.abstract)}),[{tag:"span",attributes:{class:["".concat(p.cssPrefix,"-layers")].concat(He(i)).join(" ")},children:s}]})}}}},Vs={mixout:function(){return{counter:function(n){var a=arguments.length>1&&arguments[1]!==void 0?arguments[1]:{},r=a.title,i=r===void 0?null:r,s=a.classes,o=s===void 0?[]:s,l=a.attributes,c=l===void 0?{}:l,f=a.styles,u=f===void 0?{}:f;return At({type:"counter",content:n},function(){return he("beforeDOMElementCreation",{content:n,params:a}),Cs({content:n.toString(),title:i,extra:{attributes:c,styles:u,classes:["".concat(p.cssPrefix,"-layers-counter")].concat(He(o))}})})}}}},Bs={mixout:function(){return{text:function(n){var a=arguments.length>1&&arguments[1]!==void 0?arguments[1]:{},r=a.transform,i=r===void 0?H:r,s=a.title,o=s===void 0?null:s,l=a.classes,c=l===void 0?[]:l,f=a.attributes,u=f===void 0?{}:f,h=a.styles,g=h===void 0?{}:h;return At({type:"text",content:n},function(){return he("beforeDOMElementCreation",{content:n,params:a}),Vn({content:n,transform:m(m({},H),i),title:o,extra:{attributes:u,styles:g,classes:["".concat(p.cssPrefix,"-layers-text")].concat(He(c))}})})}}},provides:function(t){t.generateLayersText=function(n,a){var r=a.title,i=a.transform,s=a.extra,o=null,l=null;if(Na){var c=parseInt(getComputedStyle(n).fontSize,10),f=n.getBoundingClientRect();o=f.width/c,l=f.height/c}return p.autoA11y&&!r&&(s.attributes["aria-hidden"]="true"),Promise.resolve([n,Vn({content:n.innerHTML,width:o,height:l,transform:i,title:r,extra:s,watchable:!0})])}}},Ks=new RegExp('"',"ug"),Zn=[1105920,1112319];function Xs(e){var t=e.replace(Ks,""),n=ls(t,0),a=n>=Zn[0]&&n<=Zn[1],r=t.length===2?t[0]===t[1]:!1;return{value:Ht(r?t[0]:t),isSecondary:a||r}}function ea(e,t){var n="".concat(Fi).concat(t.replace(":","-"));return new Promise(function(a,r){if(e.getAttribute(n)!==null)return a();var i=Ce(e.children),s=i.filter(function(O){return O.getAttribute(Yt)===t})[0],o=re.getComputedStyle(e,t),l=o.getPropertyValue("font-family").match(Wi),c=o.getPropertyValue("font-weight"),f=o.getPropertyValue("content");if(s&&!l)return e.removeChild(s),a();if(l&&f!=="none"&&f!==""){var u=o.getPropertyValue("content"),h=~["Sharp"].indexOf(l[2])?M:C,g=~["Solid","Regular","Light","Thin","Duotone","Brands","Kit"].indexOf(l[2])?Ge[h][l[2].toLowerCase()]:Yi[h][c],w=Xs(u),x=w.value,E=w.isSecondary,d=l[0].startsWith("FontAwesome"),v=pn(g,x),b=v;if(d){var I=ps(x);I.iconName&&I.prefix&&(v=I.iconName,g=I.prefix)}if(v&&!E&&(!s||s.getAttribute(cn)!==g||s.getAttribute(fn)!==b)){e.setAttribute(n,b),s&&e.removeChild(s);var _=Ds(),G=_.extra;G.attributes[Yt]=t,Xt(v,g).then(function(O){var S=gn(m(m({},_),{},{icons:{main:O,mask:vn()},prefix:g,iconName:b,extra:G,watchable:!0})),y=A.createElementNS("http://www.w3.org/2000/svg","svg");t==="::before"?e.insertBefore(y,e.firstChild):e.appendChild(y),y.outerHTML=S.map(function(z){return Ve(z)}).join(`
`),e.removeAttribute(n),a()}).catch(r)}else a()}else a()})}function qs(e){return Promise.all([ea(e,"::before"),ea(e,"::after")])}function Js(e){return e.parentNode!==document.head&&!~Di.indexOf(e.tagName.toUpperCase())&&!e.getAttribute(Yt)&&(!e.parentNode||e.parentNode.tagName!=="svg")}function ta(e){if(X)return new Promise(function(t,n){var a=Ce(e.querySelectorAll("*")).filter(Js).map(qs),r=bn.begin("searchPseudoElements");er(),Promise.all(a).then(function(){r(),Jt(),t()}).catch(function(){r(),Jt(),n()})})}var Qs={hooks:function(){return{mutationObserverCallbacks:function(n){return n.pseudoElementsCallback=ta,n}}},provides:function(t){t.pseudoElements2svg=function(n){var a=n.node,r=a===void 0?A:a;p.searchPseudoElements&&ta(r)}}},na=!1,Zs={mixout:function(){return{dom:{unwatch:function(){er(),na=!0}}}},hooks:function(){return{bootstrap:function(){qn(Vt("mutationObserverCallbacks",{}))},noAuto:function(){Ts()},watch:function(n){var a=n.observeMutationsRoot;na?Jt():qn(Vt("mutationObserverCallbacks",{observeMutationsRoot:a}))}}}},aa=function(t){var n={size:16,x:0,y:0,flipX:!1,flipY:!1,rotate:0};return t.toLowerCase().split(" ").reduce(function(a,r){var i=r.toLowerCase().split("-"),s=i[0],o=i.slice(1).join("-");if(s&&o==="h")return a.flipX=!0,a;if(s&&o==="v")return a.flipY=!0,a;if(o=parseFloat(o),isNaN(o))return a;switch(s){case"grow":a.size=a.size+o;break;case"shrink":a.size=a.size-o;break;case"left":a.x=a.x-o;break;case"right":a.x=a.x+o;break;case"up":a.y=a.y-o;break;case"down":a.y=a.y+o;break;case"rotate":a.rotate=a.rotate+o;break}return a},n)},eo={mixout:function(){return{parse:{transform:function(n){return aa(n)}}}},hooks:function(){return{parseNodeAttributes:function(n,a){var r=a.getAttribute("data-fa-transform");return r&&(n.transform=aa(r)),n}}},provides:function(t){t.generateAbstractTransformGrouping=function(n){var a=n.main,r=n.transform,i=n.containerWidth,s=n.iconWidth,o={transform:"translate(".concat(i/2," 256)")},l="translate(".concat(r.x*32,", ").concat(r.y*32,") "),c="scale(".concat(r.size/16*(r.flipX?-1:1),", ").concat(r.size/16*(r.flipY?-1:1),") "),f="rotate(".concat(r.rotate," 0 0)"),u={transform:"".concat(l," ").concat(c," ").concat(f)},h={transform:"translate(".concat(s/2*-1," -256)")},g={outer:o,inner:u,path:h};return{tag:"g",attributes:m({},g.outer),children:[{tag:"g",attributes:m({},g.inner),children:[{tag:a.icon.tag,children:a.icon.children,attributes:m(m({},a.icon.attributes),g.path)}]}]}}}},Ot={x:0,y:0,width:"100%",height:"100%"};function ra(e){var t=arguments.length>1&&arguments[1]!==void 0?arguments[1]:!0;return e.attributes&&(e.attributes.fill||t)&&(e.attributes.fill="black"),e}function to(e){return e.tag==="g"?e.children:[e]}var no={hooks:function(){return{parseNodeAttributes:function(n,a){var r=a.getAttribute("data-fa-mask"),i=r?Ct(r.split(" ").map(function(s){return s.trim()})):vn();return i.prefix||(i.prefix=ie()),n.mask=i,n.maskId=a.getAttribute("data-fa-mask-id"),n}}},provides:function(t){t.generateAbstractMask=function(n){var a=n.children,r=n.attributes,i=n.main,s=n.mask,o=n.maskId,l=n.transform,c=i.width,f=i.icon,u=s.width,h=s.icon,g=es({transform:l,containerWidth:u,iconWidth:c}),w={tag:"rect",attributes:m(m({},Ot),{},{fill:"white"})},x=f.children?{children:f.children.map(ra)}:{},E={tag:"g",attributes:m({},g.inner),children:[ra(m({tag:f.tag,attributes:m(m({},f.attributes),g.path)},x))]},d={tag:"g",attributes:m({},g.outer),children:[E]},v="mask-".concat(o||Ye()),b="clip-".concat(o||Ye()),I={tag:"mask",attributes:m(m({},Ot),{},{id:v,maskUnits:"userSpaceOnUse",maskContentUnits:"userSpaceOnUse"}),children:[w,d]},_={tag:"defs",children:[{tag:"clipPath",attributes:{id:b},children:to(h)},I]};return a.push(_,{tag:"rect",attributes:m({fill:"currentColor","clip-path":"url(#".concat(b,")"),mask:"url(#".concat(v,")")},Ot)}),{children:a,attributes:r}}}},ao={provides:function(t){var n=!1;re.matchMedia&&(n=re.matchMedia("(prefers-reduced-motion: reduce)").matches),t.missingIconAbstract=function(){var a=[],r={fill:"currentColor"},i={attributeType:"XML",repeatCount:"indefinite",dur:"2s"};a.push({tag:"path",attributes:m(m({},r),{},{d:"M156.5,447.7l-12.6,29.5c-18.7-9.5-35.9-21.2-51.5-34.9l22.7-22.7C127.6,430.5,141.5,440,156.5,447.7z M40.6,272H8.5 c1.4,21.2,5.4,41.7,11.7,61.1L50,321.2C45.1,305.5,41.8,289,40.6,272z M40.6,240c1.4-18.8,5.2-37,11.1-54.1l-29.5-12.6 C14.7,194.3,10,216.7,8.5,240H40.6z M64.3,156.5c7.8-14.9,17.2-28.8,28.1-41.5L69.7,92.3c-13.7,15.6-25.5,32.8-34.9,51.5 L64.3,156.5z M397,419.6c-13.9,12-29.4,22.3-46.1,30.4l11.9,29.8c20.7-9.9,39.8-22.6,56.9-37.6L397,419.6z M115,92.4 c13.9-12,29.4-22.3,46.1-30.4l-11.9-29.8c-20.7,9.9-39.8,22.6-56.8,37.6L115,92.4z M447.7,355.5c-7.8,14.9-17.2,28.8-28.1,41.5 l22.7,22.7c13.7-15.6,25.5-32.9,34.9-51.5L447.7,355.5z M471.4,272c-1.4,18.8-5.2,37-11.1,54.1l29.5,12.6 c7.5-21.1,12.2-43.5,13.6-66.8H471.4z M321.2,462c-15.7,5-32.2,8.2-49.2,9.4v32.1c21.2-1.4,41.7-5.4,61.1-11.7L321.2,462z M240,471.4c-18.8-1.4-37-5.2-54.1-11.1l-12.6,29.5c21.1,7.5,43.5,12.2,66.8,13.6V471.4z M462,190.8c5,15.7,8.2,32.2,9.4,49.2h32.1 c-1.4-21.2-5.4-41.7-11.7-61.1L462,190.8z M92.4,397c-12-13.9-22.3-29.4-30.4-46.1l-29.8,11.9c9.9,20.7,22.6,39.8,37.6,56.9 L92.4,397z M272,40.6c18.8,1.4,36.9,5.2,54.1,11.1l12.6-29.5C317.7,14.7,295.3,10,272,8.5V40.6z M190.8,50 c15.7-5,32.2-8.2,49.2-9.4V8.5c-21.2,1.4-41.7,5.4-61.1,11.7L190.8,50z M442.3,92.3L419.6,115c12,13.9,22.3,29.4,30.5,46.1 l29.8-11.9C470,128.5,457.3,109.4,442.3,92.3z M397,92.4l22.7-22.7c-15.6-13.7-32.8-25.5-51.5-34.9l-12.6,29.5 C370.4,72.1,384.4,81.5,397,92.4z"})});var s=m(m({},i),{},{attributeName:"opacity"}),o={tag:"circle",attributes:m(m({},r),{},{cx:"256",cy:"364",r:"28"}),children:[]};return n||o.children.push({tag:"animate",attributes:m(m({},i),{},{attributeName:"r",values:"28;14;28;28;14;28;"})},{tag:"animate",attributes:m(m({},s),{},{values:"1;0;1;1;0;1;"})}),a.push(o),a.push({tag:"path",attributes:m(m({},r),{},{opacity:"1",d:"M263.7,312h-16c-6.6,0-12-5.4-12-12c0-71,77.4-63.9,77.4-107.8c0-20-17.8-40.2-57.4-40.2c-29.1,0-44.3,9.6-59.2,28.7 c-3.9,5-11.1,6-16.2,2.4l-13.1-9.2c-5.6-3.9-6.9-11.8-2.6-17.2c21.2-27.2,46.4-44.7,91.2-44.7c52.3,0,97.4,29.8,97.4,80.2 c0,67.6-77.4,63.5-77.4,107.8C275.7,306.6,270.3,312,263.7,312z"}),children:n?[]:[{tag:"animate",attributes:m(m({},s),{},{values:"1;0;0;0;0;1;"})}]}),n||a.push({tag:"path",attributes:m(m({},r),{},{opacity:"0",d:"M232.5,134.5l7,168c0.3,6.4,5.6,11.5,12,11.5h9c6.4,0,11.7-5.1,12-11.5l7-168c0.3-6.8-5.2-12.5-12-12.5h-23 C237.7,122,232.2,127.7,232.5,134.5z"}),children:[{tag:"animate",attributes:m(m({},s),{},{values:"0;0;1;1;0;0;"})}]}),{tag:"g",attributes:{class:"missing"},children:a}}}},ro={hooks:function(){return{parseNodeAttributes:function(n,a){var r=a.getAttribute("data-fa-symbol"),i=r===null?!1:r===""?!0:r;return n.symbol=i,n}}}},io=[as,Hs,$s,Vs,Bs,Qs,Zs,eo,no,ao,ro];bs(io,{mixoutsTo:T});T.noAuto;T.config;var nr=T.library;T.dom;T.parse;T.findIconDefinition;T.toHtml;T.icon;T.layer;T.text;T.counter;var so={prefix:"fas",iconName:"forward-step",icon:[320,512,["step-forward"],"f051","M52.5 440.6c-9.5 7.9-22.8 9.7-34.1 4.4S0 428.4 0 416V96C0 83.6 7.2 72.3 18.4 67s24.5-3.6 34.1 4.4l192 160L256 241V96c0-17.7 14.3-32 32-32s32 14.3 32 32V416c0 17.7-14.3 32-32 32s-32-14.3-32-32V271l-11.5 9.6-192 160z"]},oo={prefix:"fas",iconName:"flag",icon:[448,512,[127988,61725],"f024","M64 32C64 14.3 49.7 0 32 0S0 14.3 0 32V64 368 480c0 17.7 14.3 32 32 32s32-14.3 32-32V352l64.3-16.1c41.1-10.3 84.6-5.5 122.5 13.4c44.2 22.1 95.5 24.8 141.7 7.4l34.7-13c12.5-4.7 20.8-16.6 20.8-30V66.1c0-23-24.2-38-44.8-27.7l-9.6 4.8c-46.3 23.2-100.8 23.2-147.1 0c-35.1-17.6-75.4-22-113.5-12.5L64 48V32z"]},lo={prefix:"fas",iconName:"land-mine-on",icon:[640,512,[],"e51b","M344 24V168c0 13.3-10.7 24-24 24s-24-10.7-24-24V24c0-13.3 10.7-24 24-24s24 10.7 24 24zM192 320c0-17.7 14.3-32 32-32H416c17.7 0 32 14.3 32 32v32H192V320zm-77.3 90.5c8.1-16.3 24.8-26.5 42.9-26.5H482.3c18.2 0 34.8 10.3 42.9 26.5l27.6 55.2C563.5 487 548 512 524.2 512H115.8c-23.8 0-39.3-25-28.6-46.3l27.6-55.2zM36.3 138.3c7.5-10.9 22.5-13.6 33.4-6.1l104 72c10.9 7.5 13.6 22.5 6.1 33.4s-22.5 13.6-33.4 6.1l-104-72c-10.9-7.5-13.6-22.5-6.1-33.4zm534.1-6.1c10.9-7.5 25.8-4.8 33.4 6.1s4.8 25.8-6.1 33.4l-104 72c-10.9 7.5-25.8 4.8-33.4-6.1s-4.8-25.8 6.1-33.4l104-72z"]},co={prefix:"fas",iconName:"bullseye",icon:[512,512,[],"f140","M448 256A192 192 0 1 0 64 256a192 192 0 1 0 384 0zM0 256a256 256 0 1 1 512 0A256 256 0 1 1 0 256zm256 80a80 80 0 1 0 0-160 80 80 0 1 0 0 160zm0-224a144 144 0 1 1 0 288 144 144 0 1 1 0-288zM224 256a32 32 0 1 1 64 0 32 32 0 1 1 -64 0z"]},fo={prefix:"fas",iconName:"star",icon:[576,512,[11088,61446],"f005","M316.9 18C311.6 7 300.4 0 288.1 0s-23.4 7-28.8 18L195 150.3 51.4 171.5c-12 1.8-22 10.2-25.7 21.7s-.7 24.2 7.9 32.7L137.8 329 113.2 474.7c-2 12 3 24.2 12.9 31.3s23 8 33.8 2.3l128.3-68.5 128.3 68.5c10.8 5.7 23.9 4.9 33.8-2.3s14.9-19.3 12.9-31.3L438.5 329 542.7 225.9c8.6-8.5 11.7-21.2 7.9-32.7s-13.7-19.9-25.7-21.7L381.2 150.3 316.9 18z"]},uo={prefix:"fas",iconName:"bomb",icon:[512,512,[128163],"f1e2","M459.1 52.4L442.6 6.5C440.7 2.6 436.5 0 432.1 0s-8.5 2.6-10.4 6.5L405.2 52.4l-46 16.8c-4.3 1.6-7.3 5.9-7.2 10.4c0 4.5 3 8.7 7.2 10.2l45.7 16.8 16.8 45.8c1.5 4.4 5.8 7.5 10.4 7.5s8.9-3.1 10.4-7.5l16.5-45.8 45.7-16.8c4.2-1.5 7.2-5.7 7.2-10.2c0-4.6-3-8.9-7.2-10.4L459.1 52.4zm-132.4 53c-12.5-12.5-32.8-12.5-45.3 0l-2.9 2.9C256.5 100.3 232.7 96 208 96C93.1 96 0 189.1 0 304S93.1 512 208 512s208-93.1 208-208c0-24.7-4.3-48.5-12.2-70.5l2.9-2.9c12.5-12.5 12.5-32.8 0-45.3l-80-80zM200 192c-57.4 0-104 46.6-104 104v8c0 8.8-7.2 16-16 16s-16-7.2-16-16v-8c0-75.1 60.9-136 136-136h8c8.8 0 16 7.2 16 16s-7.2 16-16 16h-8z"]},mo={prefix:"fas",iconName:"arrows-left-right",icon:[512,512,["arrows-h"],"f07e","M406.6 374.6l96-96c12.5-12.5 12.5-32.8 0-45.3l-96-96c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3L402.7 224l-293.5 0 41.4-41.4c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0l-96 96c-12.5 12.5-12.5 32.8 0 45.3l96 96c12.5 12.5 32.8 12.5 45.3 0s12.5-32.8 0-45.3L109.3 288l293.5 0-41.4 41.4c-12.5 12.5-12.5 32.8 0 45.3s32.8 12.5 45.3 0z"]},ho={prefix:"fas",iconName:"hourglass",icon:[384,512,[9203,62032,"hourglass-empty"],"f254","M0 32C0 14.3 14.3 0 32 0H64 320h32c17.7 0 32 14.3 32 32s-14.3 32-32 32V75c0 42.4-16.9 83.1-46.9 113.1L237.3 256l67.9 67.9c30 30 46.9 70.7 46.9 113.1v11c17.7 0 32 14.3 32 32s-14.3 32-32 32H320 64 32c-17.7 0-32-14.3-32-32s14.3-32 32-32V437c0-42.4 16.9-83.1 46.9-113.1L146.7 256 78.9 188.1C48.9 158.1 32 117.4 32 75V64C14.3 64 0 49.7 0 32zM96 64V75c0 25.5 10.1 49.9 28.1 67.9L192 210.7l67.9-67.9c18-18 28.1-42.4 28.1-67.9V64H96zm0 384H288V437c0-25.5-10.1-49.9-28.1-67.9L192 301.3l-67.9 67.9c-18 18-28.1 42.4-28.1 67.9v11z"]},po={prefix:"fas",iconName:"wand-sparkles",icon:[512,512,[],"f72b","M464 6.1c9.5-8.5 24-8.1 33 .9l8 8c9 9 9.4 23.5 .9 33l-85.8 95.9c-2.6 2.9-4.1 6.7-4.1 10.7V176c0 8.8-7.2 16-16 16H384.2c-4.6 0-8.9 1.9-11.9 5.3L100.7 500.9C94.3 508 85.3 512 75.8 512c-8.8 0-17.3-3.5-23.5-9.8L9.7 459.7C3.5 453.4 0 445 0 436.2c0-9.5 4-18.5 11.1-24.8l111.6-99.8c3.4-3 5.3-7.4 5.3-11.9V272c0-8.8 7.2-16 16-16h34.6c3.9 0 7.7-1.5 10.7-4.1L464 6.1zM432 288c3.6 0 6.7 2.4 7.7 5.8l14.8 51.7 51.7 14.8c3.4 1 5.8 4.1 5.8 7.7s-2.4 6.7-5.8 7.7l-51.7 14.8-14.8 51.7c-1 3.4-4.1 5.8-7.7 5.8s-6.7-2.4-7.7-5.8l-14.8-51.7-51.7-14.8c-3.4-1-5.8-4.1-5.8-7.7s2.4-6.7 5.8-7.7l51.7-14.8 14.8-51.7c1-3.4 4.1-5.8 7.7-5.8zM87.7 69.8l14.8 51.7 51.7 14.8c3.4 1 5.8 4.1 5.8 7.7s-2.4 6.7-5.8 7.7l-51.7 14.8L87.7 218.2c-1 3.4-4.1 5.8-7.7 5.8s-6.7-2.4-7.7-5.8L57.5 166.5 5.8 151.7c-3.4-1-5.8-4.1-5.8-7.7s2.4-6.7 5.8-7.7l51.7-14.8L72.3 69.8c1-3.4 4.1-5.8 7.7-5.8s6.7 2.4 7.7 5.8zM208 0c3.7 0 6.9 2.5 7.8 6.1l6.8 27.3 27.3 6.8c3.6 .9 6.1 4.1 6.1 7.8s-2.5 6.9-6.1 7.8l-27.3 6.8-6.8 27.3c-.9 3.6-4.1 6.1-7.8 6.1s-6.9-2.5-7.8-6.1l-6.8-27.3-27.3-6.8c-3.6-.9-6.1-4.1-6.1-7.8s2.5-6.9 6.1-7.8l27.3-6.8 6.8-27.3c.9-3.6 4.1-6.1 7.8-6.1z"]},vo={prefix:"fas",iconName:"forward",icon:[512,512,[9193],"f04e","M52.5 440.6c-9.5 7.9-22.8 9.7-34.1 4.4S0 428.4 0 416V96C0 83.6 7.2 72.3 18.4 67s24.5-3.6 34.1 4.4L224 214.3V256v41.7L52.5 440.6zM256 352V256 128 96c0-12.4 7.2-23.7 18.4-29s24.5-3.6 34.1 4.4l192 160c7.3 6.1 11.5 15.1 11.5 24.6s-4.2 18.5-11.5 24.6l-192 160c-9.5 7.9-22.8 9.7-34.1 4.4s-18.4-16.6-18.4-29V352z"]},go={prefix:"fas",iconName:"xmark",icon:[384,512,[128473,10005,10006,10060,215,"close","multiply","remove","times"],"f00d","M342.6 150.6c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L192 210.7 86.6 105.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3L146.7 256 41.4 361.4c-12.5 12.5-12.5 32.8 0 45.3s32.8 12.5 45.3 0L192 301.3 297.4 406.6c12.5 12.5 32.8 12.5 45.3 0s12.5-32.8 0-45.3L237.3 256 342.6 150.6z"]},bo={prefix:"fas",iconName:"percent",icon:[384,512,[62101,62785,"percentage"],"25","M374.6 118.6c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0l-320 320c-12.5 12.5-12.5 32.8 0 45.3s32.8 12.5 45.3 0l320-320zM128 128A64 64 0 1 0 0 128a64 64 0 1 0 128 0zM384 384a64 64 0 1 0 -128 0 64 64 0 1 0 128 0z"]},ia={prefix:"fas",iconName:"robot",icon:[640,512,[129302],"f544","M320 0c17.7 0 32 14.3 32 32V96H472c39.8 0 72 32.2 72 72V440c0 39.8-32.2 72-72 72H168c-39.8 0-72-32.2-72-72V168c0-39.8 32.2-72 72-72H288V32c0-17.7 14.3-32 32-32zM208 384c-8.8 0-16 7.2-16 16s7.2 16 16 16h32c8.8 0 16-7.2 16-16s-7.2-16-16-16H208zm96 0c-8.8 0-16 7.2-16 16s7.2 16 16 16h32c8.8 0 16-7.2 16-16s-7.2-16-16-16H304zm96 0c-8.8 0-16 7.2-16 16s7.2 16 16 16h32c8.8 0 16-7.2 16-16s-7.2-16-16-16H400zM264 256a40 40 0 1 0 -80 0 40 40 0 1 0 80 0zm152 40a40 40 0 1 0 0-80 40 40 0 1 0 0 80zM48 224H64V416H48c-26.5 0-48-21.5-48-48V272c0-26.5 21.5-48 48-48zm544 0c26.5 0 48 21.5 48 48v96c0 26.5-21.5 48-48 48H576V224h16z"]},yo={prefix:"fas",iconName:"arrows-up-down",icon:[320,512,["arrows-v"],"f07d","M182.6 9.4c-12.5-12.5-32.8-12.5-45.3 0l-96 96c-12.5 12.5-12.5 32.8 0 45.3s32.8 12.5 45.3 0L128 109.3V402.7L86.6 361.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3l96 96c12.5 12.5 32.8 12.5 45.3 0l96-96c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L192 402.7V109.3l41.4 41.4c12.5 12.5 32.8 12.5 45.3 0s12.5-32.8 0-45.3l-96-96z"]},wo={prefix:"fas",iconName:"dice",icon:[640,512,[127922],"f522","M274.9 34.3c-28.1-28.1-73.7-28.1-101.8 0L34.3 173.1c-28.1 28.1-28.1 73.7 0 101.8L173.1 413.7c28.1 28.1 73.7 28.1 101.8 0L413.7 274.9c28.1-28.1 28.1-73.7 0-101.8L274.9 34.3zM200 224a24 24 0 1 1 48 0 24 24 0 1 1 -48 0zM96 200a24 24 0 1 1 0 48 24 24 0 1 1 0-48zM224 376a24 24 0 1 1 0-48 24 24 0 1 1 0 48zM352 200a24 24 0 1 1 0 48 24 24 0 1 1 0-48zM224 120a24 24 0 1 1 0-48 24 24 0 1 1 0 48zm96 328c0 35.3 28.7 64 64 64H576c35.3 0 64-28.7 64-64V256c0-35.3-28.7-64-64-64H461.7c11.6 36 3.1 77-25.4 105.5L320 413.8V448zM480 328a24 24 0 1 1 0 48 24 24 0 1 1 0-48z"]},_o={prefix:"far",iconName:"star",icon:[576,512,[11088,61446],"f005","M287.9 0c9.2 0 17.6 5.2 21.6 13.5l68.6 141.3 153.2 22.6c9 1.3 16.5 7.6 19.3 16.3s.5 18.1-5.9 24.5L433.6 328.4l26.2 155.6c1.5 9-2.2 18.1-9.7 23.5s-17.3 6-25.3 1.7l-137-73.2L151 509.1c-8.1 4.3-17.9 3.7-25.3-1.7s-11.2-14.5-9.7-23.5l26.2-155.6L31.1 218.2c-6.5-6.4-8.7-15.9-5.9-24.5s10.3-14.9 19.3-16.3l153.2-22.6L266.3 13.5C270.4 5.2 278.7 0 287.9 0zm0 79L235.4 187.2c-3.5 7.1-10.2 12.1-18.1 13.3L99 217.9 184.9 303c5.5 5.5 8.1 13.3 6.8 21L171.4 443.7l105.2-56.2c7.1-3.8 15.6-3.8 22.6 0l105.2 56.2L384.2 324.1c-1.3-7.7 1.2-15.5 6.8-21l85.9-85.1L358.6 200.5c-7.8-1.2-14.6-6.1-18.1-13.3L287.9 79z"]},ko={prefix:"far",iconName:"star-half-stroke",icon:[576,512,["star-half-alt"],"f5c0","M309.5 13.5C305.5 5.2 297.1 0 287.9 0s-17.6 5.2-21.6 13.5L197.7 154.8 44.5 177.5c-9 1.3-16.5 7.6-19.3 16.3s-.5 18.1 5.9 24.5L142.2 328.4 116 483.9c-1.5 9 2.2 18.1 9.7 23.5s17.3 6 25.3 1.7l137-73.2 137 73.2c8.1 4.3 17.9 3.7 25.3-1.7s11.2-14.5 9.7-23.5L433.6 328.4 544.8 218.2c6.5-6.4 8.7-15.9 5.9-24.5s-10.3-14.9-19.3-16.3L378.1 154.8 309.5 13.5zM288 384.7V79.1l52.5 108.1c3.5 7.1 10.2 12.1 18.1 13.3l118.3 17.5L391 303c-5.5 5.5-8.1 13.3-6.8 21l20.2 119.6L299.2 387.5c-3.5-1.9-7.4-2.8-11.2-2.8z"]},xo=typeof globalThis<"u"?globalThis:typeof window<"u"?window:typeof global<"u"?global:typeof self<"u"?self:{},So={exports:{}};(function(e){(function(t){var n=function(d,v,b){if(!c(v)||u(v)||h(v)||g(v)||l(v))return v;var I,_=0,G=0;if(f(v))for(I=[],G=v.length;_<G;_++)I.push(n(d,v[_],b));else{I={};for(var O in v)Object.prototype.hasOwnProperty.call(v,O)&&(I[d(O,b)]=n(d,v[O],b))}return I},a=function(d,v){v=v||{};var b=v.separator||"_",I=v.split||/(?=[A-Z])/;return d.split(I).join(b)},r=function(d){return w(d)?d:(d=d.replace(/[\-_\s]+(.)?/g,function(v,b){return b?b.toUpperCase():""}),d.substr(0,1).toLowerCase()+d.substr(1))},i=function(d){var v=r(d);return v.substr(0,1).toUpperCase()+v.substr(1)},s=function(d,v){return a(d,v).toLowerCase()},o=Object.prototype.toString,l=function(d){return typeof d=="function"},c=function(d){return d===Object(d)},f=function(d){return o.call(d)=="[object Array]"},u=function(d){return o.call(d)=="[object Date]"},h=function(d){return o.call(d)=="[object RegExp]"},g=function(d){return o.call(d)=="[object Boolean]"},w=function(d){return d=d-0,d===d},x=function(d,v){var b=v&&"process"in v?v.process:v;return typeof b!="function"?d:function(I,_){return b(I,d,_)}},E={camelize:r,decamelize:s,pascalize:i,depascalize:s,camelizeKeys:function(d,v){return n(x(r,v),d)},decamelizeKeys:function(d,v){return n(x(s,v),d,v)},pascalizeKeys:function(d,v){return n(x(i,v),d)},depascalizeKeys:function(){return this.decamelizeKeys.apply(this,arguments)}};e.exports?e.exports=E:t.humps=E})(xo)})(So);var Co=!1;try{Co=!0}catch{}class wn{boardConfiguration;workers;numberOfGames;filename;constructor(t,n){this.boardConfiguration=t,this.workers=n?.workers||20,this.numberOfGames=n?.numberOfGames||1e3,this.filename=n?.filename}async run(){const t=[],n=this.numberOfGames/this.workers;for(let r=0;r<n;++r){const i=[];for(let s=0;s<this.workers;++s)i.push(this.playOneGame());t.push(...await Promise.all(i)),console.log(`Generating report: ${Math.trunc(1e4*t.length/this.numberOfGames)/100}%`)}const a=this.generateReport(t);return this.save(a),Math.trunc(1e4*a.victoryRatio)/100}async playOneGame(){const t=this.boardConfiguration.height*this.boardConfiguration.width,n=new jt(this.boardConfiguration),a=new kt(n);await a.waitUntilItsReady();const r=await a.makeGuess();for(n.initializeMinesAroundCell(n.getCellById(r.id));!n.isGameFinished();){await a.process();const o=a.knownSafeCellsIds.filter(l=>n.cells[l].isNotRevealed());if(o.length>0)o.forEach(l=>n.revealCell(n.getCellById(l)));else{const l=await a.makeGuess();n.revealCell(n.getCellById(l.id))}}const i=a.guesses.filter((o,l)=>l>0&&o.mines>0);return a.terminate(),{victory:n.isGameWon(),mineCellsFoundRatio:a.knownMineCellsIds.length/this.boardConfiguration.mines,safeCellsFoundRatio:a.knownSafeCellsIds.length/t,aiUpdates:a.aiUpdates,guesses:i,guessFactor:i.reduce((o,l)=>o*(l.mines/l.cells),1)}}generateReport(t){const n=t.filter(r=>r.victory),a=t.filter(r=>!r.victory);return{timestamp:Date.now(),boardProperties:this.boardConfiguration,victoryRatio:t.filter(r=>r.victory).length/t.length,totalGames:t.length,victoryGuessesAvg:n.reduce((r,i)=>i.guesses.length+r,0)/n.length,victoryGuessFactorAverage:n.reduce((r,i)=>i.guessFactor+r,0)/n.length,lossGuessesAvg:a.reduce((r,i)=>i.guesses.length+r,0)/a.length,lossesMinesCellsFoundRatioAverage:a.reduce((r,i)=>i.mineCellsFoundRatio+r,0)/a.length,lossesSafeCellsFoundRatioAverage:a.reduce((r,i)=>i.safeCellsFoundRatio+r,0)/a.length,lossesAiUpdatesAverage:a.reduce((r,i)=>i.aiUpdates+r,0)/a.length,games:t}}save(t){const n=document.createElement("a"),a=new Blob([JSON.stringify(t)],{type:"text/json"});n.href=URL.createObjectURL(a),t.url=window.location.href,n.download=`${this.filename}${t.timestamp}.json`,document.body.appendChild(n),n.click(),URL.revokeObjectURL(n.href),document.body.removeChild(n)}}nr.add(uo,oo,go,wo,po,vo,ia,lo,mo,yo,bo,ho,ia,fo,co,so);nr.add(_o,ko);await new wn(_t.Beginner,{numberOfGames:1e3,workers:20,filename:"Beginner"}).run();await new wn(_t.Intermediate,{numberOfGames:1e3,workers:20,filename:"Intermediate"}).run();await new wn(_t.Expert,{numberOfGames:1e3,workers:20,filename:"Expert"}).run();
