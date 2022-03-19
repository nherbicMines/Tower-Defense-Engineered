/// @description Destroy the bullet if it leaves the camera's view

var cam = view_camera[0];
var cam_x = camera_get_view_x(cam);	
var cam_y = camera_get_view_y(cam);
var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);

if (x < cam_x || x > (cam_x + cam_w) || y < cam_y || y > (cam_y + cam_h)) {
	instance_destroy();
	show_debug_message("Bullet Destroyed");
}