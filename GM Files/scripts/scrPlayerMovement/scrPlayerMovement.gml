/// scrPlayerMovement(Object)

// Local Variables
var obj			= argument[0];
var drive		= keyboard_check(ord("W"));

// Movement and Rotation
with (obj)
{	
	if (drive != 0)
	{
<<<<<<< HEAD
		if!(audio_is_playing(thrusters) && instance_exists(objPlayer))
=======
		if!(audio_is_playing(thrusters))
>>>>>>> 1246fb0b9e2a4d40f28ff55acebd82b266afb5ee
		{
			audio_play_sound(thrusters,5,true);
		}
		part_particles_create(Sname, x, y, particle1, 4);
		if (spd < maxSpd)
		{
			spd += acc * thrust;
			objCam.shake = 2.7;
		}
		else
		{
			spd = maxSpd;
		}
	}
	else if (audio_is_playing(thrusters))
	{
		audio_stop_sound(thrusters);
	}
	
	if !(spd <= 0.025)
	{
		spd -= 	fric * thrust;
	}
	
	dir	= point_direction(x, y, mouse_x, mouse_y);
	
	if (distance_to_point(mouse_x, mouse_y) < 64)
	{
		image_angle = image_angle;	
	}
	
	if (spd != 0)
	{
		x += lengthdir_x(spd, dir)
		y += lengthdir_y(spd, dir)
	}
	else
	{
		x = x;
		y = y;
	}
	
	image_angle = dir - 90;	
}