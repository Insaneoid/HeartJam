/// @description Control

// Local Variables
var shoot = mouse_check_button_pressed(mb_left);

// Control
shieldCool += 1;

if (thrust == 1)
{
	scrPlayerMovement(self);	
}
else
{
	x += lengthdir_x(spd, dir);
	y += lengthdir_y(spd, dir);	
}

if (shoot == 1)
{
	instance_create_depth(x, y, 0, objBullet);
}

if (shieldCool > 10)
{
	shield = 1;	
}
else
{	
	shield = 0;
}

// parallax
var _cam_x = camera_get_view_x(view_camera[0]) ;
var _cam_y = camera_get_view_y(view_camera[0]) ;
layer_x("backgrounds_2", _cam_x * 0.25);
layer_y("backgrounds_2", _cam_y * 0.25);