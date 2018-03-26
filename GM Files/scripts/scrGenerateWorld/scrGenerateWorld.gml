///scrGenerateThings

randomise()

centre_x = room_width div 2;
centre_y = room_height div 2;

radius	 = centre_y + (centre_x div 5);
radiusP	 = 0

instance_create_depth(centre_x, centre_y, 2, objCam);
instance_create_depth(centre_x, centre_y, 2, objPlayer);

max_enemies		= 80;
max_planets		= 50;
max_parts		= 70;
max_asteroids	= 80;

for (i = 0; i < 6; i++)
{
	
	radiusP	= radius - (centre_x div 5) * i - 1;
	
	//enemies
	for (var j = 0; j < max_enemies; j++)
	{
		var len	  = irandom_range(radius, radiusP);
		var dir   = random_range(0, 359);
		var x_pos = lengthdir_x(len, dir) + centre_x;
		var y_pos = lengthdir_y(len, dir) + centre_y;
	
		instance_create_depth(x_pos, y_pos, -5, objEnemy);
	}
	//planets 
	for (var j = 0; j < max_planets; j++)
	{
		var len	  = irandom_range(radius, radiusP);
		var dir   = random_range(0, 359);
		var x_pos = lengthdir_x(len, dir) + centre_x;
		var y_pos = lengthdir_y(len, dir) + centre_y;
		min_p = false
		
		if (i < 2)
		{
			instance_create_depth(x_pos, y_pos, 0, objPlanet);
			min_p = true;
		}
		if (min_p == false)
		{
			instance_create_depth(x_pos, y_pos, 0, objPlanet);
		}
	}
	
	//parts
	for (var j = 0; j < max_parts; j++)
	{
		var len	  = irandom_range(radius, radiusP);
		var dir   = random_range(0, 359);
		var x_pos = lengthdir_x(len, dir) + centre_x;
		var y_pos = lengthdir_y(len, dir) + centre_y;
		var odds  = 8;
		if (irandom(odds) == odds)
		{
			instance_create_depth(x_pos, y_pos, -5, objParts);
		}
	}
	//asteroids
	for (var j = 0; j < max_asteroids; j++)
	{
		var len	  = irandom_range(radius, radiusP);
		var dir   = random_range(0, 359);
		var x_pos = lengthdir_x(len, dir) + centre_x;
		var y_pos = lengthdir_y(len, dir) + centre_y;

		instance_create_depth(x_pos, y_pos, -5, objAsteroid);
	}
}