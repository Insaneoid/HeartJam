///scrGenerateThings

randomise()

centre_x = room_width div 2;
centre_y = room_height div 2;

radius = 0;

instance_create_depth(centre_x, centre_y, 2, objPlayer);

odds_enemy	= 10;
odds_part	= 70;
odds_planet = 100;

max_enemies = 50;
max_planets = 100;
max_parts	= 30;

for (var i = 0; i < 3; i++)
	radius = radius * 3 + 200;
for (var j = 0; j < max_enemies; j++)
{
	x_rand = centre_x + irandom_range(-radius, radius);
	y_rand = centre_y + irandom_range(-radius, radius);
	
	if (odds_enemy - (i * 2) = irandom(odds_enemy - (i * 2)) && place_free(x_rand, y_rand))
	{
		instance_create_depth(x_rand, y_rand, -5, objEnemy)
	}
}

radius = 0;

for (var i = 0; i < 3; i++)
	radius = radius * 3 + 2100;
for (var j = 0; j < max_planets; j++)
{
	x_rand = centre_x + irandom_range(-radius, radius);
	y_rand = centre_y + irandom_range(-radius, radius);
	
	if (odds_planet - (i * 5) = irandom(odds_planet - (i * 5)) && place_free(x_rand, y_rand))
	{
		instance_create_depth(x_rand, y_rand, -10, objPlanet)
	}
}
