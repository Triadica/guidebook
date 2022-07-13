## Guide

I recommend <https://github.com/Triadica/triadica-workflow> for trying Triadica. Too much boilerplate code.

<iframe width="720" height="405" frameborder="0" src="https://www.ixigua.com/iframe/7119835590593511966?autoplay=0" referrerpolicy="unsafe-url" allowfullscreen></iframe>

An example of a Tradica component looks like this:

```cirru
defn tiny-cube-object (v)
  let
      geo $ [] ([] -0.5 -0.5 0) ([] -0.5 0.5 0) ([] 0.5 0.5 0) ([] 0.5 -0.5 0) ([] -0.5 -0.5 -1) ([] -0.5 0.5 -1) ([] 0.5 0.5 -1) ([] 0.5 -0.5 -1)
      indices $ [] 0 1 1 2 2 3 3 0 0 4 1 5 2 6 3 7 4 5 5 6 6 7 7 4
      position $ []
        + 400 $ * v 10
        , 400 -1200
    object $ {} (:draw-mode :lines)
      :vertex-shader $ inline-shader "\"lines.vert"
      :fragment-shader $ inline-shader "\"lines.frag"
      :points $ map geo
        fn (p)
          -> p
            map $ fn (i) (* i 40)
            &v+ position
      :indices indices
```

`object` define a component that can be passed to WebGL APIs to paint, where:

- `:draw-mode`, WebGL draw mode, could be `:lines`, `:triangles`, `:line-strip`, `:line-loop`,
- `:vertex-shader`, string for vertex shader code, which provides positions and attirbutes for each vertex,
- `:fragment-shader`, string for fragment shader, which provides coloring algorithm,
- `:points` and `:indices`, delcares information that generates `a_position` for vertex code, which is exactly position,

For flexibilities and performance, Triadica provides a `%nested-attribute` record class for declaring type:

```cirru
object $ {} (:draw-mode :triangles)
  :vertex-shader $ inline-shader "\"stitch-bg.vert"
  :fragment-shader $ inline-shader "\"stitch-bg.frag"
  :points $ %{} %nested-attribute (:augment 3) (:length nil)
    :data $ map-indexed chars
      fn (idx c)
        ->
          [] ([] 0 0 0) ([] 1 0 0) ([] 1 -1 0) ([] 0 0 0) ([] 1 -1 0) ([] 0 -1 0)
          map $ fn (x)
            &v+
              &v+ (v-scale x size) position
              v-scale
                [] (+ size gap) 0 0
                , idx
```

- `:augment`, specifies how many values used for a single vertex, a `vec3` point, it's `3`,
- `:length`, length of points, normally it's `total-size-of-array / augment`, it could be calculated while `nil` is passed,
- `:data`, lists of floats. float numbers are collected recursively by Tradica, so no need to use `mapcat` or `concat`.
