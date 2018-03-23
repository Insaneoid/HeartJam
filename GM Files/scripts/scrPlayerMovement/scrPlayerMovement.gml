/// scrPlayerMovement(object)

// Local Variables
var cunt		= argument[0];
var left		= keyboard_check(ord("A"));
var right		= keyboard_check(ord("D"));
var forward		= keyboard_check(ord("W"));
var backward	= keyboard_check(ord("S"));

// Movement
if (left)
{
	cunt.x -= cunt.spd;
}
else if (right)
{
	cunt.x += cunt.spd;	
}
else
{
	cunt.x = cunt.x;	
}

if (forward)
{
	move_towards_point(mouse_x, mouse_y, cunt.spd);	
} else if (backward)
{
	move_towards_point(mouse_x*-1, mouse_y*-1, cunt.spd);	
}