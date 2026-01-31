path_pos += random_range(0.001, 0.003);

var previous_x = x;
var previous_y = y;

var target_x = initial_x + path_get_x(path_to_follow, path_pos);
var target_y = initial_y + path_get_y(path_to_follow, path_pos);

x = target_x;
y = target_y;

if (path_pos >= 1) {
  path_pos = 0;
}
