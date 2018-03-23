/// scrPlayerMovement(Object)

// Local Variables
var obj			= argument[0];
var strafe		= keyboard_check(ord("D")) - keyboard_check(ord("A"));
var drive		= keyboard_check(ord("W")) - keyboard_check(ord("S"));

// Movement and Rotation
with (obj)
{
	if (spd < maxSpd)
	{
		spd += acc*drive;	
	}
	else
	{
		spd = maxSpd*drive;
	}

	dir	= point_direction(x, y, mouse_x, mouse_y);

	x += lengthdir_x(spd, dir)*drive;
	y += lengthdir_y(spd, dir)*drive;

	x += lengthdir_x(spd, dir - 90)*strafe;
	y += lengthdir_y(spd, dir - 90)*strafe;

	image_angle = dir - 90;
}