## Attributes

[In WebGL](https://webglfundamentals.org/webgl/lessons/webgl-attributes.html):

> "attributes" are inputs to a vertex shader that get their data from buffers.

to each vertex, an attribute might be a point of `vec3`, or a float, or other vectors.

Triadica tried some ways of reprensenting that, while trying not to be slow.

Simplest way of passing attributes is create a list and pass points directly:

```cirru
object $ {}
  :draw-mode :triangles
  :points $ []
    [] 0 0 0
    [] 1 0 0
    [] 0 1 0
```

`:points` is `List<List<Number>>` and fills the position buffer. Optional
`:indices` is a `List<Number>` for the separate index buffer, not another
position attribute. These are reference fragments, not complete shader setups.

internally it's turning into [AugmentedTypedArray](https://twgljs.org/docs/module-twgl_primitives.html#.createAugmentedTypedArray) that consumes by twgl.js .

```cirru
object $ {}
  :draw-mode :triangles
  :attributes $ {}
    :opacity $ [] 1 0.5 1
```

Scalar `:attributes` have the contract `Map<Tag, List<Number>>`: for the three
points above, opacity provides one value per vertex. The shader must declare
the matching attribute. Do not put nested vector lists in this scalar field;
use the separate packed API for per-vertex vector/scalar combinations.

#### `:packed-attrs`

To make it easier, we can collect attributes of a single vertex in a map, and nest them in lists:

```cirru
object $ {}
  :draw-mode :triangles
  :packed-attrs $ []
    []
      {}
        :position $ [] 0 0 0
        :color_type 0
      {}
        :position $ [] 1 0 0
        :color_type 1
      {}
        :position $ [] 0 1 0
        :color_type 2
```

This could make building some shapes that requires multiple attributes easier by aligning the length of arrays, with some extra performance penalties.
