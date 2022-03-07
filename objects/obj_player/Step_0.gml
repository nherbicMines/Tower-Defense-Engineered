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