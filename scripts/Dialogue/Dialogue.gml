function create_dialog(_messages){
	if (instance_exists(obj_dialog)) return;
	
	var _inst = instance_create_depth(0, 0, 0, obj_dialog);
	_inst.messages = _messages;
	_inst.current_message = 0;
}

char_colors = {
	"Congrats": c_yellow,
	"Cross": c_yellow,
	"Sighn": c_aqua,
	"Cam": c_orange
}

room1_end = [
	{
		name: "Cross",
		msg: "Congrats! You have reached the end!\n But there is more."
	},
	{
		name: "Cross",
		msg: "Go to next room, please."
	}
]


welcome_dialog = [
	{
		name: "Cross", 
		msg: "Welcome to the pit"
	},
	{
		name: "Sighn",
		msg: "Thanks"
	},
	{
		name: "Cross",
		msg: "I don't like it, scary shit"
	},
	{
		name: "Sighn",
		msg: "Ummm okay..."
	},
	{
		name: "Cross",
		msg: "CAn you make it to the end?"
	},
	{
		name: "Sighn",
		msg: "Ofc sherlock"
	}
]
cam_dialogue1 = [
	{
		name: "Cam",
		msg: "I'm scared to go inside..."
	},
	
	{
		name: "Cam",
		msg: "Can you go first?"
	}
]