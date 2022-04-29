/// @description Draw Health bar

// Ficure out health bar dimensions
start_x = x-sprite_width/2;
start_y = y-sprite_height/2-2;
end_x = start_x + tick_length*bulletCount;
end_y = y-sprite_height/2+1;



// alt healthbar
draw_sprite(spr_healthbar_border, 0, healthbar_x, healthbar_y);
draw_sprite_stretched(spr_healthbar, 0, healthbar_x, healthbar_y, (bulletCount/startingBullets) * healthbar_width, healthbar_height);

// Draw layer to tell player to press X to repair
if(active){
	draw_set_font(fnt_healthbar);
	draw_set_color(c_white);
	if (!upgraded) {
		draw_text(x-45, y-70, "Press Right-Click To Upgrade");
	}
	draw_text(x-45, y-84, "Press SPACE To Repair");
}
if (upgraded){
	draw_set_font(fnt_healthbar);
	draw_set_color(c_yellow);
	draw_text(x-40, y+20, "2x Ammo!");
}
if (!can_repair){
	draw_set_font(fnt_healthbar);
	draw_set_color(c_white);
	draw_text(x-44, y-36, "Repair in: [" +  string(ceil(alarm[1]/room_speed)) + "]");
}