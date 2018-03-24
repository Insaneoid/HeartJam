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
<<<<<<< HEAD
		audio_play_sound(powerDown, 1, false);
=======
>>>>>>> 1246fb0b9e2a4d40f28ff55acebd82b266afb5ee
	}
	
	if (keyboard_check_pressed(vk_up)) 
	{
		if (gun == 0 && gunO > 0) 
		{
			gun = gunO;
<<<<<<< HEAD
			audio_play_sound(clickOn, 2, false);
=======
>>>>>>> 1246fb0b9e2a4d40f28ff55acebd82b266afb5ee
		} 
		else if (gun > 1 && gunO > 0) 
		{
			gun = 0;
<<<<<<< HEAD
			audio_play_sound(clickOff, 2, false);
=======
>>>>>>> 1246fb0b9e2a4d40f28ff55acebd82b266afb5ee
		}
	}
	
	if (keyboard_check_pressed(vk_down))
	{
		if (thrust == 0 && thrustO > 0) 
		{
			thrust = thrustO;
<<<<<<< HEAD
			audio_play_sound(clickOn, 2, false);
=======
>>>>>>> 1246fb0b9e2a4d40f28ff55acebd82b266afb5ee
		} 
		else if (thrust > 0 && thrustO > 0) 
		{
			thrust = 0;
<<<<<<< HEAD
			audio_play_sound(clickOff, 2, false);
=======
>>>>>>> 1246fb0b9e2a4d40f28ff55acebd82b266afb5ee
		}
	}
	
	if (keyboard_check_pressed(vk_left))
	{
		if (shield == 0 && shieldO > 0) 
		{ 
			shield = shieldO;
<<<<<<< HEAD
			audio_play_sound(clickOn, 2, false);
=======
>>>>>>> 1246fb0b9e2a4d40f28ff55acebd82b266afb5ee
			shieldA= 1;
		} 
		else if (shield > 0 && shieldO > 0) 
		{
			shield = 0;
			shieldA= 0;
<<<<<<< HEAD
			audio_play_sound(clickOff, 2, false);
=======
>>>>>>> 1246fb0b9e2a4d40f28ff55acebd82b266afb5ee
		}
	}
	
	if (keyboard_check_pressed(vk_right))
	{
		if (scanner == 0 && scannerO > 0) 
		{ 
			scanner = scannerO;
<<<<<<< HEAD
			audio_play_sound(clickOn, 2, false);
=======
>>>>>>> 1246fb0b9e2a4d40f28ff55acebd82b266afb5ee
		} 
		else if (scanner > 0 && scannerO > 0) 
		{
			scanner = 0;
<<<<<<< HEAD
			audio_play_sound(clickOff, 2, false);
=======
>>>>>>> 1246fb0b9e2a4d40f28ff55acebd82b266afb5ee
		}
	}
}