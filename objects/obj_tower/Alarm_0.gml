/// @description Tower Shooting
if instance_exists(obj_enemy) {
	var currBullet = instance_create_layer(x, y, "Instances", obj_tower_bullet);
	with currBullet {
		inst = instance_nearest(x, y, obj_enemy);
		move_towards_point(inst.x, inst.y, 5);
	}
}

alarm[0] = room_speed * 2;