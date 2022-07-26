## Controls

Besides the builtin control panel for flying, there are several components provided for connecting interactions. All of them are under `triadica.comp.drag-point`.

#### `comp-drag-point`

A control point in 3D that you can drag, within a 2D screen that you are currently in. You have to move your camera in order to move in the 3rd dimension.

```cirru
comp-drag-point
  {} (:ignore-moving? false)
    :color $ [] 1.0 1.0 1.0
    :size 20
    :position p0
  fn (p1 d!) $ println p1
```

#### `comp-slider`

A control point that returns `[] dx dy` values that can be used to change you own float value:

```cirru
comp-slider
  {} (:size 20)
    :color $ [] 1.0 1.0 1.0
    :position v0
  fn (xy d!) $ println xy
```

#### `comp-button`

A point for responding to clicks:

```cirru
comp-button
  {} (:size 20)
    :color $ [] 1.0 1.0 1.0
    :position $ :p1 store
  fn (e d!) $ println |clicked
```
