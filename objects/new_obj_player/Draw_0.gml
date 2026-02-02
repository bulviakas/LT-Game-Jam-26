draw_sprite_ext(spr_shadow, 0, x, y, 1, 1, 0, c_white, 1);
draw_self();
//draw_text (x, y-20, "Mask");
if (selected_mask_sprite != noone) {
	//draw_text (x, y-20, "Mask");
  draw_sprite_ext(selected_mask_sprite, 0, x, y - 7, 1, 1, 0, c_white, 1);
}