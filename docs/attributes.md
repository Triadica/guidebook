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
    [] 1 2 3
    [] 4 5 6
    [] 4 5 6
```

notice that `:points` and `:indices` are used by twgl.js for creating `a_position` attributes.

internally it's turning into [AugmentedTypedArray](https://twgljs.org/docs/module-twgl_primitives.html#.createAugmentedTypedArray) that consumes by twgl.js .

```cirru
object $ {}
  :draw-mode :triangles
  :attributes $ {}
    :positions $ []
      [] 1 2 3
      [] 4 5 6
      [] 7 8 9
```

To make it easier to support complicated logics, there are other ways of passing attributes.

#### `:grouped-attributes`

To make it easier, we can collect attributes of a single vertex in a map, and nest them in lists:

```cirru
object $ {}
  :draw-mode :triangles
  :grouped-attribute $ []
    []
      {}
        :position $ [] 1 2 3
        :color_type 0
      {}
        :position $ [] 4 5 6
        :color_type 1
      {}
        :position $ [] 7 8 9
        :color_type 2
```

This could make building some shapes that requires multiple attributes easier by aligning the length of arrays, with some extra performance penalties.
