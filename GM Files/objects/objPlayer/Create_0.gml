/// @description Initialise Variables

//System

// Parts
gun		= 0;
gunP	= 0;
gunO	= 0;

shield	= 0;
shieldP	= 0;
shieldO = 0;

thrust	= 1;
thrustP	= 0;
thrustO = 1;

scanner	= 0;
scannerP= 0;
scannerO= 0;

active	= gun+shield+thrust+scanner;

// Stats
energy		= 3;
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


Sname = part_system_create();