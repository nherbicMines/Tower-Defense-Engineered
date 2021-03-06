/// @description Initialize world variables
enum STATE {
	WON,
	LOST,
	PLAYING,
}

global.score = 0;

global.base_lives = 5;

if(room = Room1){
	global.level = 1;
}
else if (room = Room3){
	global.level = 2;
}


global.enemies_left = instance_number(obj_enemy) 
+ instance_number(obj_enemyDown1)
+ instance_number(obj_enemyDown2)
+ instance_number(obj_enemyDown3)
+ instance_number(obj_enemyDown4)
+ instance_number(obj_enemyDown5)
+ instance_number(obj_enemyDown6);

global.game_state = STATE.PLAYING;


// Vars for pause menu
in_menu = false;
pos = 0;
start_x = room_width/2 - 10;
start_y = room_height/2.5;

op_space = 50;
menu_message = "Quit to Title Screen?";
option[0] = "Yes";
option[1] = "No";

op_size = array_length(option);

alarm[0] = room_speed;

audio_stop_sound(snd_title_music);
audio_play_sound(snd_level_music, 0, true);

window_set_fullscreen(true);
