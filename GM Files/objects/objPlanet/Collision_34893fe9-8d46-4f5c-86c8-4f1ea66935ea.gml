/// @description 

if (other.scanner == 1 && gameDone == false)
{
	if !(instance_exists(objText))
	{
	scrTextBox("Habitability: " + string(habit) + "%\nPress Space to settle here", 1, x, y);	
	}
}


if (keyboard_check_pressed(vk_space) && gameDone == false)
{
	gameDone = true;
	if (instance_exists(objText))
	{
		instance_destroy(objText);
		
		if (habit >= 0 && habit < 20)
		{
			scrTextBox("The planet looks desolate and inhospitible, but you have no\nother choice. You send the becon, and begin to colonize.\nThe planet is harsh, and in one mighty dust storm, every\nmember of your colony perishes.\nMission Failure.", 1, x, y);
		}
		else if (habit >= 20 && habit < 60)
		{
			scrTextBox("You send the beacon, and choose to collonize this world.\nWhile things seem difficult at first, your colony gradually\nstablizes and begins to flourish!\nCongratulations, mission success!", 1, x, y);
		}
		else
		{
			scrTextBox("The planet looks rich in atmosphere, and has liquid water;\nall signs of a perfect world. You send the beacon and begin to\nestablish a settlement. The world provides with abundant oxygen,\nand drinkable water. A true miracle.\nCongratulations, mission success!", 1, x, y);
		}
	}
	else
	{
		scrTextBox("You send the beacon, and choose to collonize this world.\nWhile things seem difficult at first, your colony gradually\nstablizes and begins to flourish!\nCongratulations, mission success!", 1, x, y);
	}
}