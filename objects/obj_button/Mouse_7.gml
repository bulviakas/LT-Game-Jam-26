switch (button_id){
	
	case 0: 
		obj_pause_manager.paused = false;
		obj_pause_manager.update_pause();
	break; //Resume
	
	case 1: 
		layer_set_visible("MenuLayer", false);
		layer_set_visible("CreditsLayer", true);
	break; //Credits
	
	case 2: 
		game_end();
	break; //Quit
	
	case 3: 
		room_goto(carnival)
		obj_menu_manager.menu = false;
		obj_menu_manager.update_menu();
	break; //Start
	
	case 4: 
		game_restart()
	break; //Restart
	
	case 5: 
		room_goto(Menu)
	break; //Go to menu
	
	case 6:
		layer_set_visible("CreditsLayer", false);
		layer_set_visible("MenuLayer", true);
	break; //Go back to menu
	
	case 7:
		layer_set_visible("PauseLayer", false);
		layer_set_visible("SettingsLayer", true);
	break; //turn on settings
	
	case 8:
		layer_set_visible("SettingsLayer", false);
		layer_set_visible("PauseLayer", true);
	break; //turn of settings menu
}

audio_play_sound(button_click_sound, 0 ,false);

