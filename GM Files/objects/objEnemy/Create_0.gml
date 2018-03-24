/// @description Initialise Variables

spd		= max(2, random(6));
initDir = irandom_range(0, 359);
cooldown = 0;

x += lengthdir_x(1, initDir) * spd;
y += lengthdir_y(1, initDir) * spd;

//particles

Sname = part_system_create();
particle1 = part_type_create();
part_type_shape(particle1,pt_shape_flare);
part_type_size(particle1,0.10,0.50,0,0);
part_type_color3(particle1,255,33023,8454143);
part_type_alpha1(particle1,1);
part_type_speed(particle1,0.50,1.20,0,1);
part_type_direction(particle1,0,359,0,0);
part_type_blend(particle1,1);
part_type_life(particle1,15,50);

