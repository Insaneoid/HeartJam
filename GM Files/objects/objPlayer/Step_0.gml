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