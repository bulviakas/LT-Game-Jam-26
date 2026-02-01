depth = -bbox_bottom;


var move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));

var move_y = keyboard_check(ord("S")) - keyboard_check(ord("W"));

// Normalize movement vector, so diagonal movement isn't faster
if (move_x != 0 || move_y != 0) {
    var len = sqrt(move_x * move_x + move_y * move_y);
    move_x /= len;
    move_y /= len;
}

move_and_collide(move_x * move_speed, move_y * move_speed, objects_to_collide, undefined, undefined, undefined, move_speed, move_speed);

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


if (keyboard_check_pressed(ord("E"))) {
    var max_index = array_length(acquired_masks) - 1;

    selected_mask_index += 1;

    if (selected_mask_index > max_index) {
        selected_mask_index = -1;
        selected_mask_sprite = noone;
    }
}

select_mask(move_x, move_y);

function select_mask(move_x, move_y) {
  if (selected_mask_index == -1) return;

  if (move_x != 0 or move_y!=0) {
	if (move_y>0) select_down_mask()
	else if (move_y<0) select_up_mask()
	else if (move_x>0) select_down_mask()
	else if (move_x<0) select_down_mask()
  }
  else if (sprite_index == spr_player_walk_right) select_down_mask()
  else if (sprite_index == spr_player_walk_left) select_down_mask()
  else if (sprite_index == spr_player_walk_up) select_up_mask()
  else if (sprite_index == spr_player_walk_down) select_down_mask()
}


function select_down_mask() {
  var selected_mask = acquired_masks[selected_mask_index];

  switch (selected_mask) {
    case "clown":
      selected_mask_sprite = spr_clown_mask_down
      break;
    case "devil":
      selected_mask_sprite = spr_devil_mask_down
      break;
  }
}

function select_up_mask() {
  var selected_mask = acquired_masks[selected_mask_index];

  switch (selected_mask) {
    case "clown":
      selected_mask_sprite = spr_clown_mask_up
      break;
    case "devil":
      selected_mask_sprite = spr_devil_mask_up
      break;
  }
}
if (!place_meeting(x, y, obj_confetti)){
	move_speed = 2;
}
else move_speed = 1;