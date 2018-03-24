/// scrPlayerMovement(Object)

// Local Variables
var obj			= argument[0];
var strafe		= keyboard_check(ord("D")) - keyboard_check(ord("A"));
var drive		= keyboard_check(ord("W"));

// Movement and Rotation
with (obj)
{	
	if (drive != 0)
	{
		if (spd < maxSpd)
		{
			spd += acc;
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
	
	x += lengthdir_x(spdStrafe, dir - 90)*strafe;
	y += lengthdir_y(spdStrafe, dir - 90)*strafe;

	image_angle = dir - 90;
}