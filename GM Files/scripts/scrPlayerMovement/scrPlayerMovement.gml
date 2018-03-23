/// scrPlayerMovement(Object)

// Local Variables
var obj			= argument[0];
var strafe		= keyboard_check(ord("D")) - keyboard_check(ord("A"));
var drive		= keyboard_check(ord("W")) - keyboard_check(ord("S"));

// Movement and Rotation
obj.dir	= point_direction(x, y, mouse_x, mouse_y);

obj.x += lengthdir_x(obj.spd, obj.dir)*drive;
obj.y += lengthdir_y(obj.spd, obj.dir)*drive;

obj.x += lengthdir_x(obj.spd, obj.dir - 90)*strafe;
obj.y += lengthdir_y(obj.spd, obj.dir - 90)*strafe;

image_angle = obj.dir - 90;