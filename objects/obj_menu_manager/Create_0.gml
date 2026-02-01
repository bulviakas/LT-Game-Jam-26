layer_name = "MenuLayer";
menu = true;

update_menu = function(){
	if(menu){
		layer_set_visible(layer_name, true);
	}
	else{
		layer_set_visible(layer_name, false);
	}
}

update_menu();