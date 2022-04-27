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


// repair bullets
if(active && keyboard_check_pressed(vk_space) && can_repair){
	bulletCount = startingBullets;
	obj_player.can_repair = false;
	audio_play_sound(snd_repair, 1, false);
	can_repair = false;
	alarm[1] = room_speed * 5;
}
// Upgrade tower
if(active && mouse_check_button(mb_right) && (!upgraded) && obj_player.can_upgrade){
	audio_play_sound(snd_tower_upgrade, 2, false);
	startingBullets = 40;
	bulletCount = startingBullets;
	shot_delay = 0.5;
	sprite_index = spr_tower1_upgraded;
	upgraded = true;
	obj_player.can_upgrade = false;
	obj_player.alarm[1] = room_speed * 20;
}
