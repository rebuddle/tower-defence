// Camera Functions
var camera = view_camera[0];

//
// CLICK TO MOVE CAMERA
//
if(mouse_check_button_pressed(mb_left)){
    // save x and y from mouse
    anchor_x = mouse_x;
    anchor_y = mouse_y;
}
if(mouse_check_button(mb_left)){
    var xdelta = mouse_x - anchor_x;
    var ydelta = mouse_y - anchor_y;
    
    camera_set_view_pos(
        camera,
        camera_get_view_x(camera) - xdelta,
        camera_get_view_y(camera) - ydelta
    );
    
}

//
// SCROLL TO ZOOM
//
var zoom_factor = 0.04;
if (mouse_wheel_up()) {
    // shrink view
    camera_set_view_size(
        camera,
        camera_get_view_width(camera) * (1-zoom_factor),
        camera_get_view_height(camera) * (1-zoom_factor)
    );
}
if (mouse_wheel_down()){
    //enlarge view
    camera_set_view_size(
        camera,
        camera_get_view_width(camera) * (1+zoom_factor),
        camera_get_view_height(camera) * (1+zoom_factor)
    );
}