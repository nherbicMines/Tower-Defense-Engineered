/// @description Initialize variables
alarm[0] = room_speed * 2;

startingBullets = 20
bulletCount = startingBullets;

upgraded = false;
shot_delay = 0.5;

tick_length = sprite_width/bulletCount;

barAlpha = 1;


// For interaction with player
active = false;
can_reload = true;


// alt healthbar
healthbar_width = 100;
healthbar_height = 6;
healthbar_x = x - 50;
healthbar_y = y - 52;
