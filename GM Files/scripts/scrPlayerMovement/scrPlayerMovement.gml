/// scrPlayerMovement(Object)

// Local Variables
var obj			= argument[0];
var strafe		= keyboard_check(ord("D")) - keyboard_check(ord("A"));
var drive		= keyboard_check(ord("W"));

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

	if (drive == 0) {spd = 0;}

	dir	= point_direction(x, y, mouse_x, mouse_y);

	x += lengthdir_x(spd, dir)*drive;
	y += lengthdir_y(spd, dir)*drive;

	x += lengthdir_x(spdStrafe, dir - 90)*strafe;
	y += lengthdir_y(spdStrafe, dir - 90)*strafe;

	image_angle = dir - 90;
}