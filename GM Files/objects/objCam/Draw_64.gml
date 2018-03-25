draw_sprite(sprHud, 0, 0, 1526-275);	

//Lights on hud
if (instance_exists(objPlayer))
{
	if (objPlayer.shield == 1) 
	{
		draw_sprite(sprHudLight, 0, 0, 1526-275);
	}
	else if (sprite_exists(shieldL) && objPlayer.shield == 0)
	{
		sprite_delete(shieldL);
	}

	if (objPlayer.thrust == 1) 
	{
		draw_sprite(sprHudLight, 3, 0, 1526-275);
	}
	else if (sprite_exists(thrustL) && objPlayer.thrust == 0)
	{
		sprite_delete(thrustL);
	}

	if (objPlayer.gun == 1) 
	{
		draw_sprite(sprHudLight, 1, 0, 1526-275);
	}
	else if (sprite_exists(gunL) && objPlayer.gun == 0)
	{
		sprite_delete(gunL);
	}

	if (objPlayer.scanner == 1) 
	{
		draw_sprite(sprHudLight, 2, 0, 1526-275);
	}
	else if (sprite_exists(scanL) && objPlayer.scanner == 0)
	{
		sprite_delete(scanL);
	}
	
	if (objPlayer.shield == 2) 
	{
		draw_sprite(sprHudLightPlus, 0, 0, 1526-275);
	}
	else if (sprite_exists(shieldL) && objPlayer.shield == 0)
	{
		sprite_delete(shieldL);
	}

	if (objPlayer.thrust == 2) 
	{
		draw_sprite(sprHudLightPlus, 3, 0, 1526-275);
	}
	else if (sprite_exists(thrustL) && objPlayer.thrust == 0)
	{
		sprite_delete(thrustL);
	}

	if (objPlayer.gun == 2) 
	{
		draw_sprite(sprHudLightPlus, 1, 0, 1526-275);
	}
	else if (sprite_exists(gunL) && objPlayer.gun == 0)
	{
		sprite_delete(gunL);
	}
	
	if (objPlayer.energy == 3)
	{
		draw_sprite(sprHudPower, 0, 0, 1526-275);
	}
	
	if (objPlayer.energy == 2)
	{
		draw_sprite(sprHudPower, 1, 0, 1526-275);
	}
	
		if (objPlayer.energy == 1)
	{
		draw_sprite(sprHudPower, 2, 0, 1526-275);
	}
	
		if (objPlayer.energy == 0)
	{
		draw_sprite(sprHudPower, 3, 0, 1526-275);
	}
	
	if (objPlayer.shieldO > 0)
	{
		draw_sprite(sprHudLum, 0, 0, 1526-275);
	}
	
	if (objPlayer.thrustO > 0)
	{
		draw_sprite(sprHudLum, 3, 0, 1526-275);
	}
	if (objPlayer.gunO > 0)
	{
		draw_sprite(sprHudLum, 1, 0, 1526-275);
	}
	if (objPlayer.scannerO > 0)
	{
		draw_sprite(sprHudLum, 2, 0, 1526-275);
	}
}