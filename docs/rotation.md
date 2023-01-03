
### 3D rotation

Core idea of handling rotation is using a variant of [Rodrigues' rotation formula
](https://en.wikipedia.org/wiki/Rodrigues%27_rotation_formula). Explained in a Chinese video:

<iframe width="720" height="405" frameborder="0" src="https://www.ixigua.com/iframe/7105357230899364388?autoplay=0" referrerpolicy="unsafe-url" allowfullscreen></iframe>

As a helper function, Triadica provide:

```cirru
triadica.math/rotate-3d-fn origin axis-direction radian
```

which creates a `rotation` function that could rotate:

```cirru
let
    rotation $ rotate-3d-fn ([] 0 100 0) ([] -1 1 1) 0.04
  rotation p
```
