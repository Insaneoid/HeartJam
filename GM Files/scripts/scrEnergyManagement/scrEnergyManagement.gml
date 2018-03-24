/// scrEnergyManagement()
with (objPlayer)
{
	energy = energyMax - active;
	
	if (energy < 0)
	{
		gun	= 0;
		thrust = 0;
		shield = 0;
		scanner = 0;
	}
	
	if (keyboard_check_pressed(vk_up)) 
	{
		if (gun == 0 && gunO > 0) 
		{
			gun = gunO;
		} 
		else if (gun > 1 && gunO > 0) 
		{
			gun = 0;
		}
	}
	
	if (keyboard_check_pressed(vk_down))
	{
		if (thrust == 0 && thrustO > 0) 
		{
			thrust = thrustO;
		} 
		else if (thrust > 0 && thrustO > 0) 
		{
			thrust = 0;
		}
	}
	
	if (keyboard_check_pressed(vk_left))
	{
		if (shield == 0 && shieldO > 0) 
		{ 
			shield = shieldO;
			shieldA= 1;
		} 
		else if (shield > 0 && shieldO > 0) 
		{
			shield = 0;
			shieldA= 0;
		}
	}
	
	if (keyboard_check_pressed(vk_right))
	{
		if (scanner == 0 && scannerO > 0) 
		{ 
			scanner = scannerO;
		} 
		else if (scanner > 0 && scannerO > 0) 
		{
			scanner = 0;
		}
	}
}