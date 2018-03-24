/// @description Manage Equip

if distance_to_point(objPlayer.x, objPlayer.y < 20)
{
	identify = 1;
	image_blend = make_colour_hsv(255, 255, 255);
}
else
{
	identify = 0;
	image_blend = make_colour_hsv(255, 255, 100);
}

with (other)
{
	if (keyboard_check_pressed(vk_space))
	{
		switch (other.item)
		{
			case "Gun":
				gunO = 1;
			break;
			case "Scanner":
				scannerO = 1;
			break;
			case "Shield":
				shieldO = 1;
			break;
			case "Gun+":
				gunO = 2;
			break
			case "Shield+":
				shieldO = 2
			break;
			case "Thruster+":
				thrustO = 2;
			break;
		}
		
		instance_destroy(other);
	}
}