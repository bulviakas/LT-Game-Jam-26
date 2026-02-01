layer_name = "DeathLayer";
dead = false;

update_death = function()
{
	if (dead){
		instance_deactivate_all(true);
		layer_set_visible(layer_name, true);
	}
	else{
		instance_activate_all();
		layer_set_visible(layer_name, false);
	}
}

update_death();