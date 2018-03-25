/// scrEnergyManagement()
with (objPlayer)
{
	energy = energyMax - active;
	
	if (energy < 0)
	{
		gun	= 0;
		thrust = 0;
		shield = 0;
		shieldA= 0;
		shieldCool = 0;
		scanner = 0;
		audio_play_sound(powerDown, 1, false);
	}
	
	if (keyboard_check_pressed(vk_up)) 
	{
		if (gun == 0 && gunO > 0) 
		{
			gun = gunO;
			audio_play_sound(clickOn, 2, false);
		} 
		else if (gun > 0 && gunO > 0) 
		{
			gun = 0;
			audio_play_sound(clickOff, 2, false);
		}
	}
	
	if (keyboard_check_pressed(vk_down))
	{
		if (thrust == 0 && thrustO > 0) 
		{
			thrust = thrustO;
			audio_play_sound(clickOn, 2, false);
		} 
		else if (thrust > 0 && thrustO > 0) 
		{
			thrust = 0;
			audio_play_sound(clickOff, 2, false);
		}
	}
	
	if (keyboard_check_pressed(vk_left))
	{
		if (shield == 0 && shieldO > 0 && shieldCool > 10) 
		{ 
			shield = shieldO;
			audio_play_sound(clickOn, 2, false);
			shieldA= 1;
		} 
		else if (shield > 0 && shieldO > 0) 
		{
			shield = 0;
			shieldA= 0;
			audio_play_sound(clickOff, 2, false);
		}
	}
	
	if (keyboard_check_pressed(vk_right))
	{
		if (scanner == 0 && scannerO > 0) 
		{ 
			scanner = scannerO;
			audio_play_sound(clickOn, 2, false);
		} 
		else if (scanner > 0 && scannerO > 0) 
		{
			scanner = 0;
			audio_play_sound(clickOff, 2, false);
		}
	}
}