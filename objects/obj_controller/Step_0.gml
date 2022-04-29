/// @description Check if player has lost

// Without this if, the instance_deactivate_all from pausing breaks the game
// because it thinks all enemies are gone
if (!in_menu) {
	global.enemies_left = instance_number(obj_enemy);

	if (global.base_lives <= 0) {
		global.game_state = STATE.LOST;
		instance_deactivate_all(true);
	}

	if (global.enemies_left <= 0 && global.base_lives > 0 && room==Room3) {
		global.game_state = STATE.WON;
	}

	if (global.enemies_left <= 0 && global.base_lives > 0 && room==Room1) {
		global.game_state = STATE.WON;
		global.level = 2;
		audio_stop_sound(snd_level_music);
		room_goto(Room2);
	}
}

// Check for input on escape

if (in_menu) {
	// Check for down arrow key of menu
	instance_deactivate_all(true);
	
	if(keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))){
		pos += 1;
	
		if (pos >= op_size) { pos = op_size -1 };
	}

	// Check the up arrow key for menu
	if(keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))){
		pos -= 1;
	
		if (pos < 0) { pos = 0 };
	}
	
	if (keyboard_check_pressed(vk_enter)){
	switch(pos){
		case 0:
			audio_stop_sound(snd_level_music);
			room_goto(rm_title);
			break;
		case 1:
			in_menu = false;
			instance_activate_all();
			break;
	}
	
	}
}

if (keyboard_check_pressed(vk_escape) && in_menu){
	in_menu = false;
}
if (keyboard_check_pressed(vk_escape) && !in_menu){
	in_menu = true;
}


