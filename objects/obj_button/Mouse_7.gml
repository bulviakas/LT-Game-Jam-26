switch (button_id){
	
	case 0: 
		obj_pause_manager.paused = false;
		obj_pause_manager.update_pause();
	break; //Resume
	
	case 1: break; //Settings
	
	case 2: 
		game_end();
	break; //Quit
	
	case 3: 
		room_goto(carnival)
		obj_menu_manager.menu = false;
		obj_menu_manager.update_menu();
	break; //Start
	
}