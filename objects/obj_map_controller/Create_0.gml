TILE_INDEX = {
    tile0: undefined,
    tile1: spr_grass
}

function draw_map() {
    // init vars
    var tile_layout =  make_map_layout();
    var tile_xscale = 1;
    var tile_yscale = 1;
    var tile_width = 240 * tile_xscale;
    var tile_height = 138 * tile_yscale;
    
    for(var row=0; row < array_length(tile_layout); row++){
        for(var column = 0; column < array_length(tile_layout[row]); column++){
            var tile_index = "tile" + string(tile_layout[row][column]);
            var sprite = variable_struct_get(TILE_INDEX, tile_index);
            
            if(sprite == undefined) continue;
                
            // otherwise draw the tile
            instance_create_depth(
                200 + tile_width / 2 * column, 
                200 + tile_height / 2 * row, 
                -row, 
                obj_tile, 
                {
                    sprite_index: sprite,
                    image_xscale: tile_xscale,
                    image_yscale: tile_yscale,
                }
            );
        }
    }
}


// generates map layout
function make_map_layout(){
    return [
        [0,0,0,0,1,0,0,0,0,0,0,0,0,0,0],
        [0,0,0,1,0,1,0,0,0,0,0,0,0,0,0],
        [0,0,1,0,1,0,1,0,0,0,0,0,0,0,0],
        [0,1,0,1,0,1,0,1,0,0,0,0,0,0,0],
        [1,0,1,0,1,0,1,0,1,0,0,0,0,0,0],
        [0,1,0,1,0,1,0,1,0,1,0,0,0,0,0],
        [0,0,1,0,1,0,1,0,1,0,1,0,0,0,0],
        [0,0,0,1,0,1,0,1,0,1,0,1,0,0,0],
        [0,0,0,0,1,0,1,0,1,0,1,0,1,0,0],
        [0,0,0,0,0,1,0,1,0,1,0,1,0,1,0],
        [0,0,0,0,0,0,1,0,1,0,1,0,1,0,0],
        [0,0,0,0,0,0,0,1,0,1,0,1,0,0,0],
        [0,0,0,0,0,0,0,0,1,0,1,0,0,0,0],
        [0,0,0,0,0,0,0,0,0,1,0,0,0,0,0],
    ];
}