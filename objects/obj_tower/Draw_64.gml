/// @description Draw Health bar

// Ficure out health bar dimensions
start_x = x-sprite_width/2;
start_y = y-sprite_height/2-2;
end_x = start_x + tick_length*bulletCount;
end_y = y-sprite_height/2+1;



// Draw the helath bar
/*if (bulletCount > 0){
	
	draw_set_color(c_white);
	draw_rectangle(start_x,start_y,x+sprite_width/2, end_y, false);

	draw_set_color(c_blue);
	draw_rectangle(start_x+1,start_y+1,end_x-1, end_y-1, false);

	draw_set_color(c_white);
}
else{
	draw_set_alpha(barAlpha);
	draw_set_color(c_white);
	draw_rectangle(start_x,start_y,x+sprite_width/2, end_y, false);
	
	draw_set_color(c_blue);
	draw_rectangle(start_x+1,start_y+1,end_x-1, end_y-1, false);
	draw_set_color(c_white);
	
	draw_set_alpha(1);
}*/

// alt healthbar
draw_sprite(spr_healthbar_border, 0, healthbar_x, healthbar_y);
draw_sprite_stretched(spr_healthbar, 0, healthbar_x, healthbar_y, (bulletCount/startingBullets) * healthbar_width, healthbar_height);

// Draw layer to tell player to press X to reload
if(active){
	draw_set_font(fnt_healthbar);
	draw_set_color(c_white);
	if (!upgraded) {
		draw_text(x-45, y-70, "Press U To Upgrade");
	}
	draw_text(x-45, y-84, "Press X To Reload");
}