/// @description Control

// Local Variables
var shoot = mouse_check_button_pressed(mb_left);

// Control
shieldCool += 1;
active	= gun+shield+thrust+scanner;

if (thrust > 0)
{
	part_type_direction(particle1, dir-180, dir-180,0,0);
	scrPlayerMovement(self);	
}
else
{
	x += lengthdir_x(spd, dir);
	y += lengthdir_y(spd, dir);	
}

if (shoot == 1 && gun = 1)
{
	instance_create_depth(x, y, 0, objBullet);
	audio_play_sound(shooty, 3, false);
}
else if (shoot == 1 && gun = 2)
{
<<<<<<< HEAD
	instance_create_depth(x, y, 0, objBulletH);
	audio_play_sound(shooty, 3, false);
=======
	instance_create_depth(x, y, 0, objBulletH);	
>>>>>>> 1246fb0b9e2a4d40f28ff55acebd82b266afb5ee
}

if (shieldA = 1)
{
	if (shieldCool > 10 && shieldO = 1)
	{
		shield = 1;	
	}
	else if (shieldCool > 10 && shieldO = 2)
	{
		shield = 2;	
	}
	else
	{	
		shield = 0;
	}
}

// Energy Management
scrEnergyManagement();

// parallax
var _cam_x = camera_get_view_x(view_camera[0]) ;
var _cam_y = camera_get_view_y(view_camera[0]) ;
layer_x("backgrounds_2", _cam_x * 0.25);
layer_y("backgrounds_2", _cam_y * 0.25);
layer_x("backgrounds_3", _cam_x * 0.5);
layer_y("backgrounds_3", _cam_y * 0.5);