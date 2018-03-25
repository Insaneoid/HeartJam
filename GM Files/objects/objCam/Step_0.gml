/// @description Camera Control

cameraWidth = camera_get_view_width(view_camera[0]);
cameraHeight = camera_get_view_height(view_camera[0]);

if (cameraWidth > 512 || cameraHeight > 384)
{
	camera_set_view_size(view_camera[0], cameraWidth*0.93, cameraHeight*0.93);
}

if (instance_exists(objPlayer))
{
	x += (objPlayer.x - x)*0.15;
	y += (objPlayer.y - y)*0.15;
}


viewX = camera_get_view_x(view_camera[0]);
viewY = camera_get_view_y(view_camera[0]);
viewX += irandom_range(-shake, shake);
viewY += irandom_range(-shake, shake);
shake *= 0.9;
camera_set_view_pos(view_camera[0], viewX, viewY);

