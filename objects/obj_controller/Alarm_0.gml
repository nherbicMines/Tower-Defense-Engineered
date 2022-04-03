/// @description Insert description here
// You can write your code in this editor

if (global.enemies_left != 0) {
	instance_create_layer(256, 256, "Instances", obj_enemy);
	global.enemies_left = global.enemies_left - 1;
}

alarm[0] = room_speed;
