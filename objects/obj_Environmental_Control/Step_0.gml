/// @description Insert description here
// You can write your code in this editor

layer_x(deepest_layer, lerp(bg_xx, camera_get_view_x(view), 0.9))
layer_y(deepest_layer, lerp(bg_yy, camera_get_view_y(view), 0.9))
layer_x(deep_layer, lerp(bg_xx, camera_get_view_x(view), 0.7))
layer_y(deep_layer, lerp(bg_yy, camera_get_view_y(view), 0.7))

layer_x(forward_layer, lerp(bg_xx, camera_get_view_x(view), 0.7))
layer_y(forward_layer, lerp(bg_yy, camera_get_view_y(view), 0.7))



