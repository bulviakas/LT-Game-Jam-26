path_pos += random_range(0.001, 0.003);

var previous_x = x;
var previous_y = y;

var target_x = initial_x + path_get_x(path_to_follow, path_pos);
var target_y = initial_y + path_get_y(path_to_follow, path_pos);

x = target_x;
y = target_y;

// Delta movement
var dx = x - previous_x;
var dy = y - previous_y;


if (dx != 0 or dy!=0) {
	if (dy>0) sprite_index = spr_player_walk_down;
	else if (dy<0) sprite_index = spr_player_walk_up;
	else if (dx>0) sprite_index = spr_player_walk_right;
	else if (dx<0) sprite_index = spr_player_walk_left;

	facing = point_direction(0, 0, dx, dy);
}
else if (sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right;
else if (sprite_index == spr_player_walk_left) sprite_index = spr_player_idle_left;
else if (sprite_index == spr_player_walk_up) sprite_index = spr_player_idle_up;
else if (sprite_index == spr_player_walk_down) sprite_index = spr_player_idle_down;

if (path_pos >= 1) {
  path_pos = 0;
}
