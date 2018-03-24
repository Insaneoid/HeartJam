/// @description Manage Equip

if distance_to_point(objPlayer.x, objPlayer.y < 20)
{
	identify = 1;
}
else
{
	identify = 0;
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