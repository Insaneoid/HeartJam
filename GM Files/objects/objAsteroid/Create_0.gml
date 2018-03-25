/// @description Initialise Movement
dir  = irandom(359);
spd  = irandom_range(1, 5.7) + 0.3;
rot	 = irandom_range(0.7, 1.4);
image_index = choose(0, 1, 2);


sys = part_system_create();
p1 = part_type_create();
part_type_shape(p1,pt_shape_smoke);
part_type_size(p1,1,1,-0.01,0);
part_type_scale(p1,0.50,0.50);
part_type_color3(p1,4210752,12632256,5789784);
part_type_speed(p1,0.30,1,0,0);
part_type_direction(p1,0,359,0,1);
part_type_blend(p1,0);
part_type_life(p1,20,60);
