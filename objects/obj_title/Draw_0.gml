/// @description Draw the title


// Draw the title
if (!instructions){
	
	draw_set_font(fnt_title);
	draw_set_color(c_white);

	draw_text(room_width/3, room_height/6, "Tower Defense: ");
	draw_text(room_width/3 + 55, room_height/4, "Engineered");
}

// Draw the menu options
if (!instructions){
	draw_set_font(fnt_announce);
	for(var i = 0; i < op_size; i++){
	draw_set_color(c_white);
	if (pos == i) {draw_set_color(c_black);}
	draw_text(start_x - string_length(option[i])*8, start_y + op_space*i, option[i]);
	}
}


// Draw the instructions
if (instructions){
	draw_set_font(fnt_message);
	draw_set_color(c_white);
	
	draw_text(room_width/3-10, room_height/7, "Objective:");
	draw_text(room_width/3-10, room_height/7 + 30, "Prevent the enemy from damaging your base ");
	draw_text(room_width/3-10, room_height/7 + 50, "by shooting and repairing your defense towers");
	
	draw_text(room_width/3-10, room_height/7 + 80, "Controls:");
	draw_text(room_width/3-10, room_height/7 + 110, "W,A,S,D: Movement of the player");
	draw_text(room_width/3-10, room_height/7 + 130, "Left-Click: Shooting for the player");
	draw_text(room_width/3-10, room_height/7 + 150, "Right-Click: Upgrade the tower (need to be next to tower to upgrade). This doubles firing rate.");
	draw_text(room_width/3-10, room_height/7 + 170, "Spacebar: Repair defense towers (need to be next to tower to repair)");
	draw_text(room_width/3-10, room_height/7 + 190, "Esc: Pause the game (also use to get back to title page from here)");
	
}
