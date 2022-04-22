/// @description Insert description here
// You can write your code in this editor
move_towards_point(x, y - 10, spd);

// If out of health, destroy this enemy
if (hitsLeft <= 0) {
	instance_destroy();
}
