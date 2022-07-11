## Performance

The process of rendering can be divided into several passes:

- declare tree of objects in Calcit-js
- collect points and attributes into typed arrays(via twgl.js)
- build WebGL program from shaders
- call WebGL APIs to paint(via twgl.js)
- optionally, extra framebuffers are used for bloom effect(via twgl.js)

Not all passes need to be re-computed when new frames are painted. In WebGL, we may put parameters that controls how object change in "uniforms", reuse shader programs and "attibutes". That means, when only last 2 steps need to be re-computed for new frames. When you are controlling the camera and the canvas being redrew, normally attributes do not need to be re-computed.

For imperative or OO programs, we may cache arrays for attributes directly. However in tree-shape DSLs, we need to cache them with some tricks. Caclit uses memoizations like in Clojure with the library [memof](https://github.com/calcit-lang/memof).

```cirru
; storing 1 item of caches for function
memof.once/memof1-call add3 1 2 3

; storing items of caches of a function by a given key, pass nil to skip
memof.once/memof1-call-by |a-unique-key add3 1 2 3
```

and each Triadica component is currently a function.

### Uniforms

An extra field of injecting uniforms is provided called `get-uniforms`:

```cirru
object $ {} (:draw-mode :triangles)
  :vertex-shader $ inline-shader "\"spin-city.vert"
  :fragment-shader $ inline-shader "\"spin-city.frag"
  :attributes attributes
  :get-uniforms $ fn ()
    js-object
      :citySpin $ :spin-city @*dirty-uniforms
```

in the function, dirty tricks can be used to access mutable states.
