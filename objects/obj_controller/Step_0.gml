/// @description Check if player has lost

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
	room_goto(Room3);
}
