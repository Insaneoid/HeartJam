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