/// @description Player Movement

var keyleft = keyboard_check(ord("A"));
var keyright = keyboard_check(ord("D"));
var keyup= keyboard_check(ord("W"));
var keydown = keyboard_check(ord("S"));

var moveLR = keyright - keyleft;
var moveUD = keydown - keyup;

speedLR = spd * moveLR;
speedUD = spd * moveUD;

x += speedLR;
y += speedUD;

// Player shooting where-ever they clicked
if (mouse_check_button_pressed(mb_left)) {
	var currBullet = instance_create_layer(x, y, "Instances", obj_bullet);
	with currBullet {
		move_towards_point(mouse_x, mouse_y, 5);
	}
}

