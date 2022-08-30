## Lines

Normally you can use `:line-strip` or `:lines` for lines:

```cirru
object $ {}
  :draw-mode :line-strip
```

However in WebGL, lines has a constent width of `1`, which does not meet many scenarios.

There are two components provided under `triadica.comp.tube`:

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
