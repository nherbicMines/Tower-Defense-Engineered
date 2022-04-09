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


// Display the options
if(active && keyboard_check_pressed(ord("X"))){
	bulletCount = startingBullets;
}
