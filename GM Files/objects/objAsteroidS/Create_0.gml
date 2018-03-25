/// @description Initialise Movement
dir  = irandom(359);
spd  = (irandom_range(1, 5.7) + 0.3) * 1.2;
rot	 = (irandom_range(0.7, 1.4)) * 1.37;
image_index = choose(0, 1, 2);
image_xscale = 0.5;
image_yscale = 0.5;

sys1 = part_system_create();
p2 = part_type_create();
part_type_shape(p2,pt_shape_smoke);
part_type_size(p2,1,1,-0.01,0);
part_type_scale(p2,0.50,0.50);
part_type_color3(p2,4210752,12632256,5789784);
part_type_speed(p2,0.30,1,0,0);
part_type_direction(p2,0,359,0,1);
part_type_blend(p2,0);
part_type_life(p2,20,60);
