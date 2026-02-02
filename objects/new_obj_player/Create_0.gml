move_speed = 2;
tilemap = layer_tilemap_get_id("border");
//objects_to_collide = [tilemap, obj_tent

facing = point_direction(x, y, x, y+10);
ability_to_shoot = true;

acquired_masks = [];
mask_count = 0;
selected_mask_index = -1;
selected_mask_sprite = noone;

hp = 10;