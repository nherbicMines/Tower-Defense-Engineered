/// @description 

// Check for down arrow key of menu
if(keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))){
	pos += 1;
	
	if (pos >= op_size) { pos = op_size -1 };
}

// Check the up arrow key for menu
if(keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))){
	pos -= 1;
	
	if (pos < 0) { pos = 0 };
}

if (keyboard_check_pressed(vk_escape) && instructions){
	instructions = false;
}

// Creates the correct tower when enter is pressed 
if (keyboard_check_pressed(vk_enter)){
	switch(pos){
		//Create Tower 1
		case 0:
			room_goto_next();
			break;
		case 1:
			instructions = true;
			break;
		case 2:
			game_end();
			break;
	}
	
}
