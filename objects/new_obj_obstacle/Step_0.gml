// Step event
path_pos += path_speed;

// Get the target position along the path
var target_x = path_get_x(path_to_follow, path_pos);
var target_y = path_get_y(path_to_follow, path_pos);

// Collision check
if (!place_meeting(target_x, target_y, border_tilemap)) {
    x = target_x;
    y = target_y;
} else {
    // Collision response
    path_pos -= path_speed; // stop or slide
}
