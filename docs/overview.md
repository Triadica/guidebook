# Triadica

Triadica is a thin wrapper built with [Calcit](https://calcit-lang.org/) for interactive WebGL Toys.

- Live Demo <https://r.tiye.me/Triadica/triadica-space/>

Explain Video(voice in Chinese)

<iframe width="720" height="405" frameborder="0" src="https://www.ixigua.com/iframe/7117972355162309128?autoplay=0" referrerpolicy="unsafe-url" allowfullscreen></iframe>

A minimal object fragment uses an ordinary list of numeric points. For imports,
typed factory setup and host initialization, use Guide in the navigation sidebar; this
reference fragment is not an independently executed application:

```cirru
object $ {} (:draw-mode :lines)
  :vertex-shader $ inline-shader |lines.vert
  :fragment-shader $ inline-shader |lines.frag
  :points $ [] ([] 0 0 0) ([] 1 0 0) ([] 0 1 0)
  :indices $ [] 0 1 1 2 2 0
```

you specify shaders, you provide points, then it renders. Internally it uses [twgl.js](http://twgljs.org/) for calling WebGL APIs.

The old nested-attribute record is no longer converted by `object`; generated
point groups must be flattened to one numeric point per outer-list item.
Also notice that a lot of magic happens in shaders(GLSL), the code in Calcit is mostly scaffolding.

### Parts

There are several things that Triadica provides in the code base:

- scaffolding that collect components(attributes and shaders), and call WebGL with HMR support,
- 3D perspetive projection, mostly in shaders, also with some code for handling mouse events,
- [Touch Control](https://github.com/Triadica/touch-control/) components that you can use to fly in 3D screen,

Again, I would like to invide you to try demos <https://r.tiye.me/Triadica/triadica-space/> , try to click or even maybe drag.

### Calcit

[Calcit](http://calcit-lang.org/) has great support for HMR, and decent interop for JavaScript. Take it as a simplified version of [ClojureScript](https://r.tiye.me/clojure-china/clojure-script.org/) if you feel strange.

If you want to use TypeScript, try <https://github.com/Triadica/triadica.ts> , which implemented a relatively older feature set of Triadica.
