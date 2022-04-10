/// @description For ammo bar

// Set the alpha level if ammo is empty
if (bulletCount <= 0 && barAlpha > 0){
	barAlpha -= .02;
}
else if (bulletCount <= 0 && barAlpha = 0){
	barAlpha =1;
}
else{
	barAlpha = 1;
}

// When the player gets close enough
if(place_meeting(x,y,obj_player)){
	active = true;
	
} 
else {
	active = false;
	options = false;
}


// Reload bullets
if(active && keyboard_check_pressed(ord("X")) && obj_player.can_reload){
	bulletCount = startingBullets;
	obj_player.can_reload = false;
	obj_player.alarm[0] = room_speed * 10;
}
// Upgrade tower
if(active && keyboard_check_pressed(ord("U")) && (!upgraded) && obj_player.can_upgrade){
	startingBullets = 40;
	bulletCount *= 2;
	shot_delay = 0.5;
	sprite_index = spr_tower1_upgraded;
	upgraded = true;
	obj_player.can_upgrade = false;
	obj_player.alarm[1] = room_speed * 20;
}
