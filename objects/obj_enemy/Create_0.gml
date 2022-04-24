/// @description Initialize variables

// Enemies following longer path are slightly faster, otherwise they pose no threat
spd = 1;
stopped = false;

// Start path
path_start(path_enemy1, spd, path_action_stop, false);

image_xscale = .5;
image_yscale = .5;

// How many more bullets the enemy can take
hitsLeft = 3;

//For health bar
tick_length = sprite_width/hitsLeft;
