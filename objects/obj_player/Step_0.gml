/// @description Player Movement

var keyleft = keyboard_check(ord("A"));
var keyright = keyboard_check(ord("D"));
var keyup= keyboard_check(ord("W"));
var keydown = keyboard_check(ord("S"));

var moveLR = keyright - keyleft;
var moveUD = keydown - keyup;

speedLR = spd * moveLR;
speedUD = spd * moveUD;
if (speedLR == 0 && speedUD == 0){
	image_speed = 0;
} else {
	image_speed = 1;
}

// Vertical Collision with base
if (place_meeting(x, y + speedUD, obj_base)){
	while(!place_meeting(x, y + sign(speedUD), obj_base)){
		y += sign(speedUD);
	}
	speedUD = 0;
}

// Horizontal collision with base
if (place_meeting(x + speedLR, y , obj_base)){
	while(!place_meeting(x + sign(speedLR), y, obj_base)){
		x += sign(speedLR);
	}
	speedLR = 0;
}


// Move player if it won't lead to out of bounds
if (((x + speedLR) > 0) && ((x + speedLR) < room_width)) {
	x += speedLR;
}
if (((y + speedUD) > 0) && ((y + speedUD) < room_height)) {
	y += speedUD;
}



// Player shooting where-ever they clicked
if (mouse_check_button(mb_left) && cooldown < 1) {
	var currBullet = instance_create_layer(x, y, "Instances", obj_bullet);
	cooldown = 40;
	audio_play_sound(snd_shoot, 2, false);
	with currBullet {
		move_towards_point(mouse_x, mouse_y, 5);
	}
}

cooldown -= 1;



