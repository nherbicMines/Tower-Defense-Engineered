/// @description Initialize world variables
enum STATE {
	WON,
	LOST,
	PLAYING
}

global.score = 0;

global.base_lives = 5;

global.level = 1;

global.enemies_left = instance_number(obj_enemy);

global.game_state = STATE.PLAYING;

alarm[0] = room_speed;

audio_play_sound(snd_level_music, 0, true);

window_set_fullscreen(true);
