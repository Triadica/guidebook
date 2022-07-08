## Mouse Events

Triadica has quite simple events for hanlding. However, it treats every object as an sphere in click detection, its shape is ignored.

For example:

```cirru
object $ {} (:draw-mode :lines)
  :vertex-shader $ inline-shader "\"lines.vert"
  :fragment-shader $ inline-shader "\"lines.frag"
  :points $ map geo
    fn (p)
      -> p
        map $ fn (i) (* i 40)
        &v+ position
  :indices indices
  :hit-region $ {} (:position position) (:radius 20)
    :on-hit $ fn (e d!) (d! :cube-right 0)
    :on-mousedown $ fn (e d!) (js/console.log "\"mouse down" e)
      reset! *prev-mouse-x $ .-clientX e
    :on-mousemove $ fn (e d!) (js/console.log "\"mouse move" e)
      let
          x $ .-clientX e
        d! :city-spin $ - x @*prev-mouse-x
        reset! *prev-mouse-x x
    :on-mouseup $ fn (e d!) (js/console.log "\"mouseup" e)
```

`:hit-region` contains information about how mouse interactions are handled:

- `:position` tell `vec3` position of the center point,
- `:radius` of clickable area. some tolerance area is added for touch screens,
- `:on-hit` is called when click event happened in the area,
- `:on-mousedown` is called when mousedown event triggered,
- `:on-mouseup` is called when mouseup event triggered, or mouse left page,
- `:on-mousemove` is called during moving, before `:on-mouseup` triggered. notice it has impact on performance.
