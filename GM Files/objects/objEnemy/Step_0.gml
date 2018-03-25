/// @description 

if (instance_exists(objPlayer))
{
	if (distance_to_point(objPlayer.x, objPlayer.y) < 400)
	{
		if (distance_to_point(objPlayer.x, objPlayer.y) >= 200)
		{
			move_towards_point(objPlayer.x, objPlayer.y, spd);
		}
		else if (cooldown <= 0)
		{
			instance_create_depth(x, y, 0, objBulletE);
			audio_play_sound(shooty, 3, false);
			cooldown = 160 + irandom_range(-15, 15);
		}
		else
		{
			x=x;
			y=y;
		}
	}
	var dir = point_direction(x, y, objPlayer.x, objPlayer.y);
	image_angle = dir+270;
}

cooldown -= 1;




