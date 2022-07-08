## Projection

I explained how I did that in a video(voice in Chinese):

<iframe width="720" height="405" frameborder="0" src="https://www.ixigua.com/iframe/7112760543974425118?autoplay=0" referrerpolicy="unsafe-url" allowfullscreen></iframe>

The major part of the work calculating in GLSL, vertex shader, if you want to read:

```glsl
uniform float coneBackScale; // 2 by default, some distance behind camara, where lights finally focus
uniform vec3 lookPoint; // direction in front, transformed into a specific length
uniform vec3 upwardDirection; // direction up over head, better unit vector
uniform float viewportRatio; // width/height
uniform vec3 cameraPosition; // of viewer

attribute vec3 a_position; // passed from `:points` and `:indices`

struct PointResult {
  vec3 point;
  float r;
  float s;
};

// acutal calculating
PointResult transform_perspective(vec3 p) {
  vec3 moved_point = p - cameraPosition;
  // trying to get right direction at length 1
  vec3 rightward = cross(upwardDirection, lookPoint) / 600.0;

  float s = coneBackScale;

  float r = dot(moved_point, lookPoint) / square(length(lookPoint));

  if (r < (s * -0.8)) {
    // make it disappear with depth test since it's probably behind the camera
    return PointResult(vec3(0.0, 0.0, 10000.), r, s);
  }

  float screen_scale = (s + 1.0) / (r + s);
  float y_next = dot(moved_point, upwardDirection) * screen_scale;
  float x_next = - dot(moved_point, rightward) * screen_scale;

  float z_next = r;

  return PointResult(vec3(x_next, y_next / viewportRatio, z_next), r, s);
}

void main() {
  PointResult result = transform_perspective(a_position);
  vec3 pos_next = result.point;

  v_s = result.s;
  v_r = result.r;
  gl_Position = vec4(pos_next * 0.001, 1.0);
}
```
