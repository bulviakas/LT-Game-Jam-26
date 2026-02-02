

if (new_obj_player.selected_mask_sprite != spr_devil_mask_up && 
		new_obj_player.selected_mask_sprite != spr_devil_mask_down){
	layer_set_visible("DeathLayer", true);

	instance_deactivate_all(true);
}