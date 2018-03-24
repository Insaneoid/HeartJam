/// scrHunt(Object)
var range = distance_to_object(objPlayer);

dir = point_direction(x, y, objPlayer.x, objPlayer.y);

if (range <= 150)
{
	move_towards_point(objPlayer.x, objPlayer.y, spd);
}
else
{
	state = scrWander;	
}

image_angle = dir - 90;