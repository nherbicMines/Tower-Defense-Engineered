/// @description

// Draw layer to tell player to press X
if(active){
	draw_set_font(fnt_message);
	draw_set_color(c_white);
	draw_text(x-25, y-50, "Press X");
}

// Draw options for player to choose from
if(options = true){
	draw_set_color(c_black);
	draw_rectangle(x-30,y-30,x+100,y+100, false);
	for(var i = 0; i < op_size; i++){
		draw_set_color(c_white);
		if (pos == i) {draw_set_color(c_yellow);}
		draw_text(x, y + op_space*i, option[i]);
	}
	
	
}
