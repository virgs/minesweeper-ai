async function m(t,s={}){const l={env:Object.assign(Object.create(globalThis),s.env||{},{abort(e,r,n,a){e=i(e>>>0),r=i(r>>>0),n=n>>>0,a=a>>>0,(()=>{throw Error(`${e} in ${r}:${n}:${a}`)})()},"console.log"(e){e=i(e>>>0),console.log(e)},seed(){return(()=>Date.now()*Math.random())()}})},{exports:o}=await WebAssembly.instantiate(t,l),u=o.memory||s.env.memory,p=Object.setPrototypeOf({update(e){return e=b(e)||g(),i(o.update(e)>>>0)},guess(e){return e=b(e)||g(),i(o.guess(e)>>>0)}},o);function i(e){if(!e)return null;const r=e+new Uint32Array(u.buffer)[e-4>>>2]>>>1,n=new Uint16Array(u.buffer);let a=e>>>1,c="";for(;r-a>1024;)c+=String.fromCharCode(...n.subarray(a,a+=1024));return c+String.fromCharCode(...n.subarray(a,r))}function b(e){if(e==null)return 0;const r=e.length,n=o.__new(r<<1,2)>>>0,a=new Uint16Array(u.buffer);for(let c=0;c<r;++c)a[(n>>>1)+c]=e.charCodeAt(c);return n}function g(){throw TypeError("value must not be null")}return p}const{memory:h,update:w,guess:f,tests:d}=await(async t=>m(await(async()=>{try{return await globalThis.WebAssembly.compileStreaming(globalThis.fetch(t))}catch{return globalThis.WebAssembly.compile(await(await import("./__vite-browser-external-4ed993c7.js")).readFile(t))}})(),{}))(new URL("/minesweeper-ai/assembly-b52583c2.wasm",self.location));var y=(t=>(t[t.UPDATE=0]="UPDATE",t[t.GUESS=1]="GUESS",t))(y||{});self.onmessage=t=>{const s=t.data;try{switch(s.action){case 0:const l=JSON.parse(w(s.board)),o={messageId:s.messageId,update:l};self.postMessage(o);break;case 1:const u=JSON.parse(f(s.board)),p={messageId:s.messageId,guess:u};self.postMessage(p);break}}catch(l){console.log(`WW ${s} got exception: `+y[s.action]),console.error(l),self.postMessage(l)}};
