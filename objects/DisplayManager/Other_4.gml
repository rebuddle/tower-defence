// background
var bg = layer_background_get_id("Background");
layer_background_blend(bg, c_white);

// camera zoom
var camera = view_camera[0];
camera_set_view_size(
    camera,
    camera_get_view_width(camera) * 2,
    camera_get_view_height(camera) * 2
);