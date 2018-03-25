/// @description Initialise Variables

//System
depth	= -10;

// Parts
gun		= 0;
gunO	= 1;

shield	= 0;
shieldO = 1;
shieldA = 0;

thrust	= 1;
thrustO = 1;

scanner	= 0;
scannerO= 1;

active	= gun+shield+thrust+scanner;
killme	= noone;


// Stats
energyMax	= 3;
energy		= energyMax;
maxSpd		= 10;
spd			= 0;
acc			= 0.15;
fric		= 0.07;
dir			= 0;
shieldCool	= 10;

//particles

particle1 = part_type_create();
part_type_shape(particle1,pt_shape_flare);
part_type_size(particle1,0.01,0.3,-0.15,1);
part_type_color3(particle1,255,33023,8454143);
part_type_scale(particle1, 0.5, 0.5);
part_type_speed(particle1,4.24,7.62,0.13,5);
part_type_gravity(particle1,0,270);
part_type_orientation(particle1,64,146,0.40,10,0);
part_type_blend(particle1,1);
part_type_life(particle1,6,16);

particle0 = part_type_create();
part_type_shape(particle0,pt_shape_flare);
part_type_size(particle0,0.10,0.50,0,0);
part_type_color3(particle0,255,33023,8454143);
part_type_alpha1(particle0,1);
part_type_speed(particle0,0.50,1.20,0,1);
part_type_direction(particle0,0,359,0,0);
part_type_blend(particle0,1);
part_type_life(particle0,15,50);


Sname1 = part_system_create();

//start popup
alarm[1] = 30;