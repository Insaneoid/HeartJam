/// scrWander()
var randMove	= irandom(room_speed*5);
var wanderDist	= 900;

if (randMove = 0)
{
	destX	= (x + irandom_range(-wanderDist, wanderDist));
	destY	= (y + irandom_range(-wanderDist, wanderDist));
	
	dir		= point_direction(x, y, destX, destY);
}
else
{
	if (spd < maxSpd)
	{
		spd += acc;	
	}
	else
	{
		spd = maxSpd;
	}
		
	move_towards_point(destX, destY, spd);	
	
}

image_angle = dir;

if (distance_to_object(objPlayer) <= 200)
{
	state = scrHunt;
}