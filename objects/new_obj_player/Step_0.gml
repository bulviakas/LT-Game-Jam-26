if (instance_exists(obj_dialog)) exit;

var move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));

var move_y = keyboard_check(ord("S")) - keyboard_check(ord("W"));

// Normalize movement vector, so diagonal movement isn't faster
if (move_x != 0 || move_y != 0) {
    var len = sqrt(move_x * move_x + move_y * move_y);
    move_x /= len;
    move_y /= len;
}

move_and_collide(move_x * move_speed, move_y * move_speed, tilemap, undefined, undefined, undefined, move_speed, move_speed);

if (move_x != 0 or move_y!=0) {
	if (move_y>0) sprite_index = spr_player_walk_down;
	else if (move_y<0) sprite_index = spr_player_walk_up;
	else if (move_x>0) sprite_index = spr_player_walk_right;
	else if (move_x<0) sprite_index = spr_player_walk_left;
	
	facing = point_direction(0, 0, move_x, move_y);
}
else if (sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right;
else if (sprite_index == spr_player_walk_left) sprite_index = spr_player_idle_left;
else if (sprite_index == spr_player_walk_up) sprite_index = spr_player_idle_up;
else if (sprite_index == spr_player_walk_down) sprite_index = spr_player_idle_down;