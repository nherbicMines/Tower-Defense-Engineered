/// @description Tower Shooting
var currBullet = instance_create_layer(x, y, "Instances", obj_bullet);
with currBullet {
	inst = instance_nearest(x, y, obj_enemy);
	move_towards_point(inst.x, inst.y, 5);
}

alarm[0] = room_speed * 2;