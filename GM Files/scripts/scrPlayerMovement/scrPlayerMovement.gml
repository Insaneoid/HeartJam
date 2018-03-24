/// scrPlayerMovement(Object)

// Local Variables
var obj			= argument[0];
var drive		= keyboard_check(ord("W"));

// Movement and Rotation
with (obj)
{	
	if (drive != 0)
	{
		if (spd < maxSpd)
		{
			spd += acc;
			objCam.shake = 2.7;
		}
		else
		{
			spd = maxSpd;
		}
	}
	
	if !(spd <= 0.025)
	{
		spd -= 	fric;
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