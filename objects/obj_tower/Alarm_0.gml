/// @description Tower Shooting
if (instance_exists(obj_enemy) && bulletCount >0)  {
	var currBullet = instance_create_layer(x, y, "Instances", obj_tower_bullet);
	bulletCount -=1;
	with currBullet {
		inst = instance_nearest(x, y, obj_enemy);
		move_towards_point(inst.x, inst.y, 5);
	}
}

alarm[0] = room_speed * 1;