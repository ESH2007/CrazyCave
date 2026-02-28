function generate_tiles(_grid) {

    var tilemap_id = layer_tilemap_get_id("Tiles_mapa");

    for (x = 0; x < map_width; x++) {
        for (y = 0; y < map_height; y++) {

            var tile_index;

            if (_grid[# x, y] == 1) {
                tile_index = 114; // tile pared
            } else if (_grid[# x, y] == 2) {
                tile_index = 54; // tile roca
            } else {
                tile_index = 5; // tile piso
            }

            tilemap_set(tilemap_id, tile_index, x, y);
        }
    }
}