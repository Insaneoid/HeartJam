draw_sprite(sprHud, 0, 0, 1526-275);	

//Lights on hud
if (instance_exists(objPlayer))
{
	if (objPlayer.shieldA > 0) 
	{
		shieldL = draw_sprite(sprHudLight, 0, 0, 1526-275);
	}
	else if (sprite_exists(shieldL) && objPlayer.shieldA == 0)
	{
		sprite_delete(shieldL);
	}

	if (objPlayer.thrust > 0) 
	{
		draw_sprite(sprHudLight, 3, 0, 1526-275);
	}
	else if (sprite_exists(thrustL) && objPlayer.thrust == 0)
	{
		sprite_delete(thrustL);
	}

	if (objPlayer.gun > 0) 
	{
		draw_sprite(sprHudLight, 1, 0, 1526-275);
	}
	else if (sprite_exists(gunL) && objPlayer.gun == 0)
	{
		sprite_delete(gunL);
	}

	if (objPlayer.scanner > 0) 
	{
		draw_sprite(sprHudLight, 2, 0, 1526-275);
	}
	else if (sprite_exists(scanL) && objPlayer.scanner == 0)
	{
		sprite_delete(scanL);
	}
}