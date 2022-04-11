/// @description Tower Shooting
if (instance_exists(obj_enemy) && bulletCount > 0)  {
	var currBullet = instance_create_layer(x, y, "Instances", obj_tower_bullet);
	bulletCount -=1;
	with currBullet {
		inst = instance_nearest(x, y, obj_enemy);
		if ((inst.x < room_width && inst.x > 0) && (inst.y < room_height && inst.y > 0)) {
			move_towards_point(inst.x, inst.y, 5);
		} else {
			instance_destroy(currBullet);
		}
	}
}

alarm[0] = room_speed * shot_delay;