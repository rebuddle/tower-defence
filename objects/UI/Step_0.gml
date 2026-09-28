
var tile = instance_position(mouse_x, mouse_y, obj_tile);

if (tile != noone){
    // mouse on tile
    set_focus(tile);
} else {
    // mouse not on tile
    clear_focus();
}

if(mouse_check_button_pressed(mb_left) and focused_tile){
    with(focused_tile){
        tower = instance_create_depth(x, y, depth, obj_tower, {sprite_index: spr_barrack_L1})
    }
}