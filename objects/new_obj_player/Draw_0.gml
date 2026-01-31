draw_sprite_ext(spr_shadow, 0, x, y, 1, 1, 0, -1, 1);
draw_self();

if (selected_mask_index != -1) {
  var mask_type = acquired_masks[selected_mask_index];
  var offset_y = -12;

  if (mask_type == "purple") draw_sprite_ext(spr_enemy1, 0, x, y + offset_y, 1, 1, 0, -1, 1);
  else if (mask_type == "green") draw_sprite_ext(spr_enemy2, 0, x, y + offset_y, 1, 1, 0, -1, 1);
}
