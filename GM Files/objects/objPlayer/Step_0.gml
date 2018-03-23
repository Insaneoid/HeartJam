/// @description Control

// Local Variables
var shoot = mouse_check_button_pressed(mb_left);

// Control
scrPlayerMovement(self);
shieldCool += 1;

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