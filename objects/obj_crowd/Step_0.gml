if (to_right) {
	x += move_speed;

	if (x > room_width + bbox_right - bbox_left) {
		x = - (bbox_right - bbox_left);
	}
} else {
	x -= move_speed;
	if (x < - (bbox_right - bbox_left)) {
    x = room_width + (bbox_right - bbox_left);
}
}