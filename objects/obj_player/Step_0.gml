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

//Points the player in the direction of the mouse
image_angle = point_direction(x,y,mouse_x,mouse_y);

// Player shooting where-ever they clicked
if (mouse_check_button(mb_left) && cooldown < 1) {
	var currBullet = instance_create_layer(x, y, "Instances", obj_bullet);
	cooldown = 50;
	with currBullet {
		move_towards_point(mouse_x, mouse_y, 5);
	}
}

cooldown -= 1;



