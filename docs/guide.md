## Guide

For application boilerplate, consult <https://github.com/Triadica/triadica-workflow>
and check that project's own paired Calcit/procs and library versions. This
documentation site's formal 0.32.0 candidate upgrade does not upgrade the separate template
or publish a new Triadica release. This page is API reference, not a complete
standalone application or a WebGL runtime test.

<iframe width="720" height="405" frameborder="0" src="https://www.ixigua.com/iframe/7119835590593511966?autoplay=0" referrerpolicy="unsafe-url" allowfullscreen></iframe>

A Triadica object factory has an explicit host-effect and value contract. Call it
after browser/WebGL initialization, not in a native documentation check:

```cirru
ns example.scene $ :require
  triadica.alias :refer $ object
  triadica.config :refer $ inline-shader
  triadica.vector :refer $ &v+

defn tiny-cube-object (v)
  hint-fn $ Fn Number
    -> $ Map Tag Dynamic
    :features :js-ffi
  let
      geo $ [] ([] -0.5 -0.5 0) ([] -0.5 0.5 0) ([] 0.5 0.5 0) ([] 0.5 -0.5 0) ([] -0.5 -0.5 -1) ([] -0.5 0.5 -1) ([] 0.5 0.5 -1) ([] 0.5 -0.5 -1)
      indices $ [] 0 1 1 2 2 3 3 0 0 4 1 5 2 6 3 7 4 5 5 6 6 7 7 4
      position $ []
        + 400 $ * v 10
        , 400 -1200
    object $ {} (:draw-mode :lines)
      :vertex-shader $ inline-shader |lines.vert
      :fragment-shader $ inline-shader |lines.frag
      :points $ map geo $ fn (p)
        hint-fn $ Fn (List Number)
          -> $ List Number
        -> p
          map $ fn (i) (* i 40)
          &v+ position
      :indices indices
```

`object` define a component that can be passed to WebGL APIs to paint, where:

- `:draw-mode`, WebGL draw mode, could be `:lines`, `:triangles`, `:line-strip`, `:line-loop`,
- `:vertex-shader`, string for vertex shader code, which provides positions and attirbutes for each vertex,
- `:fragment-shader`, string for fragment shader, which provides coloring algorithm,
- `:points` is a `List<List<Number>>`; each point is a numeric coordinate list. `:indices` is a `List<Number>`.

The former `%nested-attribute` record example is retired. Published Space 0.0.43
and the current implementation only construct the position array when `:points`
is a List, then decode it as `List<List<Number>>`; they do not convert that old
record. When generating groups of vertices, flatten the groups at the application
boundary so every outer-list item is one numeric point. Do not assume arbitrary
recursive point data is automatically collected.

Scalar `:attributes` use `Map<Tag, List<Number>>`. Packed attributes are a separate
API; use the maintained library's actual examples and contract rather than
inventing a replacement record name. The open options Map does not itself prove
the field values have the right shape.
