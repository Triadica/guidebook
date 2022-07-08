## About

Prior to Triadica, I was using a tiny framework [Quatrefoil](https://github.com/Quatrefoil-GL/quatrefoil) for building shapes, which a declarative wrapper on [Three.js](https://threejs.org/). Three.js is obviously a lot easier and more powerful. But I figure out I need to learn shaders for very crazy color pattern, so I tried WebGL and twgl.js . Plus, I also want to try if I can get better performance out of WebGL APIs over three.js .

Maybe I should say thanks to [beam](https://github.com/doodlewind/beam) since it convinced me that it's too hard to call WebGL APIs. WebGL is always a monster to beginners.

Both Quatrefoil and Triadica is based on [Calcit-js](http://calcit-lang.org/), which is very similar to ClojureScript. Because I want DSLs, persistent data, functional style APIs, and HMT(hot module replacement). Plus, I'm author of Calcit-js I could fix feature in Calcit to meet my needs in Triadica quickly.
