/// @description Pop up if close to tower


if(place_meeting(x,y,obj_player)){
	active = true;
	
} 
else {
	active = false;
	options = false;
}

// Display the options
if(active && keyboard_check_pressed(ord("X"))){
	options = true;
}

// Check for down arrow key of menu
if(options && keyboard_check_pressed(vk_down)){
	pos += 1;
	
	if (pos >= op_size) { pos = op_size -1 };
}

// Check the up arrow key for menu
if(options && keyboard_check_pressed(vk_up)){
	pos -= 1;
	
	if (pos < 0) { pos = 0 };
}

// Creates the correct tower when enter is pressed 
if (options && keyboard_check_pressed(vk_enter)){
	switch(pos){
		//Create Tower 1
		case 0:
			instance_create_layer(x,y, "Instances", obj_tower);
			instance_destroy();
			break;
		case 1:
			instance_create_layer(x,y, "Instances", obj_tower);
			instance_destroy();
			break;
		case 2:
			options = false;
			break;
	}
	
}
