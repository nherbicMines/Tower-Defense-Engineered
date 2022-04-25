/// @description Initialize world variables
enum STATE {
	WON,
	LOST,
	PLAYING
}

global.score = 0;

global.base_lives = 5;

global.level = 1;

global.enemies_left = instance_number(obj_enemy) 
+ instance_number(obj_enemyDown1)
+ instance_number(obj_enemyDown2)
+ instance_number(obj_enemyDown3)
+ instance_number(obj_enemyDown4)
+ instance_number(obj_enemyDown5)
+ instance_number(obj_enemyDown6);

global.game_state = STATE.PLAYING;

alarm[0] = room_speed;

audio_stop_sound(snd_title_music);
audio_play_sound(snd_level_music, 0, true);

window_set_fullscreen(true);
