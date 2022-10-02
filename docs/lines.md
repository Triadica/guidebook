## Lines

Normally you can use `:line-strip` or `:lines` for lines:

```cirru
object $ {}
  :draw-mode :line-strip
```

However in WebGL, lines has a constent width of `1`, which does not meet many scenarios.

There are two components provided under `triadica.comp.line`:

`comp-tube` draws a curve into a tube by generating triangles. Some drawbacks is you have to pass a `:normal0` argument to help it decide how to start to cross product for tube surfaces. `normal0` is a `vec3` vector that is not supposed to be parallel with any 2 points, default value is `[] 0 0 1`. For smooth curves, it's not hard to pick:

```cirru
comp-tube $ {} (:draw-mode :line-loop)
  :curve $ -> (range 200)
    map $ fn (idx)
      let
          angle $ * 0.04 idx
          r 200
        []
          * r $ cos angle
          * r $ sin angle
          * idx 0.6
  :normal0 $ [] 0 0 1
```

`comp-brush` offer a brush for quickly adding triangles perpendicular to eye sight casted from camera. It's a brush(or 2, 3 brushes) painting extra colors. Default brush is `[] 8 0`. It may not look good from specific angles, but it's a lot cheaper:

```cirru
comp-brush $ {} (; :draw-mode :line-strip)
  :curve $ -> (range 200)
    map $ fn (idx)
      let
          angle $ * 0.06 idx
          r 40
        []
          * r $ cos angle
          * r $ sin angle
          * idx 0.6
  :brush $ [] 8 0
  :brush1 $ [] 4 4
  :brush2 $ [] 6 3
```

For tube and brush, more details is explained in the video(Chinese).

<iframe width="720" height="405" frameborder="0" src="https://www.ixigua.com/iframe/7139143523994960398?autoplay=0" referrerpolicy="unsafe-url" allowfullscreen></iframe>

### Strip light

`comp-strip-light` draws lines with discrete hexagons, making it looks like strip lights. A `gravity` option is supported to defined how the strip light is curved.

```cirru
comp-strip-light
  {} (; :draw-mode :line-strip)
    :lines $ []
      []
        [] 0 0 0
        [] 100 100 0
    :dot-radius 4
    :step 6
    :offset 12
    :gravity $ [] 0 -0.0008 0
    :color $ [] 0.1 0.9 0.5
```

`color` field uses HSL color.

<iframe width="720" height="405" frameborder="0" src="https://www.ixigua.com/iframe/7149755069653582366?autoplay=0" referrerpolicy="unsafe-url" allowfullscreen></iframe>
