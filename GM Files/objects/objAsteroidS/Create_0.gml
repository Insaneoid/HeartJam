/// @description Initialise Movement
dir  = irandom(359);
spd  = (irandom_range(1, 5.7) + 0.3) * 1.2;
rot	 = (irandom_range(0.7, 1.4)) * 1.37;
image_index = choose(0, 1, 2);
image_xscale = 0.5;
image_yscale = 0.5;