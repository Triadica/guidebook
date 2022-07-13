## Shaders

In Triadica, you need to pass shader by string:

```cirru
object $ {}
  :fragment-shader (inline ...)
  :segment-shader (inline ...)
```

#### `{{triadica_perspective}}` (in vertex shader)

Source <https://github.com/Triadica/triadica-space/blob/0.0.7/shaders/triadica-perspective.glsl> .

provides several uniforms and the function `transform_perspective` that calculates position on screen:

```glsl
PointResult result = transform_perspective(p);

vec3 pos_next = result.point; // vec3(x, y, depth)
v_s = result.s;
v_r = result.r;
```

#### `{{triadica_colors}}` (in fragment shader)

Source <https://github.com/Triadica/triadica-space/blob/0.0.7/shaders/triadica-colors.glsl> .

Provides a function for making colors,

- `hsl3rgb(h, s, l)`, with all arguments in `[0,1]`.

#### `{{triadica_noises}}` (in both)

Source <https://github.com/Triadica/triadica-space/blob/0.0.7/shaders/triadica-noises.glsl> .

Provides functions for noices:

- `float rand(xy)`
- `float snoise(xy)` for Simplex 2D noise
- `float pNoise(xy, res)` Poisson noise(not sure)
