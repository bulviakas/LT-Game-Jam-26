if (instance_exists(obj_dialog)) exit;

x += move_speed;

if (x > room_width + bbox_right - bbox_left) {
	x = - (bbox_right - bbox_left);
}