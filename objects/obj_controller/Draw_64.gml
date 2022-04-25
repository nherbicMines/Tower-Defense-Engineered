/// @description Draw Info. on screen
draw_set_font(fnt_message);
draw_set_color(c_white);

draw_text(0, 0, "Base Health: " + string(global.base_lives));

draw_text(0, 20, "Level: " + string(global.level));

draw_text(0, 40, "Enemies Left: " + string(global.enemies_left));

if (global.game_state == STATE.LOST) {
	draw_set_font(fnt_announce);
	draw_set_color(c_red);
	draw_text(room_width / 2 - 100, room_height / 2 - 100, "DEFEAT");
}

if (global.game_state == STATE.WON) {
	draw_set_font(fnt_announce);
	draw_set_color(c_green);
	draw_text(room_width / 2 - 100, room_height / 2 - 100, "VICTORY");
}

if (global.game_state != STATE.LOST) {
	if (obj_player.alarm[1]) {
		draw_set_color(c_red);
		draw_text(0, 60, "Cannot upgrade again for ["+ string(ceil(obj_player.alarm[1]/room_speed)) +"] more seconds");
	} else {
		draw_set_color(c_green);
		draw_text(0, 60, "Upgrade ready!");
	}
}
