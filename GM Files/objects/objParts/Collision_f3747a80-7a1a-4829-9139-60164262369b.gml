/// @description Manage Equip

if (objPlayer.scanner == 1)
{
	scrTextBox("Spacebar:" + string(item), 1, x, y);
}

with (other)
{
	if (keyboard_check_pressed(vk_space))
	{
		switch (other.item)
		{
			case "Gun":
				gunO	= 1;
				gun		= 1;
			break;
			case "Scanner":
				scannerO = 1;
				scanner	 = 1;
			break;
			case "Shield":
				shieldO = 1;
				shield	= 1;
			break;
			case "Gun+":
				gunO = 2;
				gun  = 2;
			break
			case "Shield+":
				shieldO = 2
				shield  = 2;
			break;
			case "Thruster+":
				thrustO = 2;
				thrust  = 2;
			break;
		}
		
		instance_destroy(other);
	}
}