/// @description Insert description here
// You can write your code in this editor


/* experimenting with stopping and slowing enemies on their path

if (keyboard_check_direct(vk_space) && !stopped) {
	path_speed = 1;
	alarm[0] = room_speed * 0.5;
}

if ((point_distance(x, y, obj_tower.x, obj_tower.y) < 40) && !stopped) {
	path_speed = 0;
	stopped = true;
	alarm[1] = room_speed * 2;
}
*/

// If out of health, destroy this enemy
if (hitsLeft == 0) {
	instance_destroy();
}