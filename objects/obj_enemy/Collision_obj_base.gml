/// @description Insert description here
// You can write your code in this editor

if (global.base_lives > 1) {
	global.base_lives = global.base_lives - 1;
}
else if (global.base_lives == 1) {
	global.base_lives = 0;
	//TODO: Game Over stuff goes here
}
instance_destroy();
