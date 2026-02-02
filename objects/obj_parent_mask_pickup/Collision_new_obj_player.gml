var _picked_up_mask = mask_type;

with (new_obj_player) {
  array_push(new_obj_player.acquired_masks, _picked_up_mask);
}

instance_destroy();
