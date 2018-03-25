/// @description 
dir  = irandom(359);
spd  = irandom_range(0.1, 0.5) +0.1;
loot = irandom(100);
item = "Nothing";

depth = 0;

if (loot <= 32)
{
	item = "Gun";	
}
else if (loot = 33 && loot <= 64)
{
	item = "Shield";
}
else if (loot = 65 && loot <= 95)
{
	item = "Scanner";
}
else
{
	item = choose("Gun+", "Shield+", "Thruster+");
}

Sname3 = part_system_create();
 particle1 = part_type_create();
part_type_shape(particle1,pt_shape_smoke);
part_type_size(particle1,0.10,0.10,-0.10,1);
part_type_scale(particle1,0.80,0.80);
part_type_color3(particle1,16711680,16776960,8421504);
part_type_alpha1(particle1,0.50);
part_type_orientation(particle1,0,0,0,0,1);
part_type_blend(particle1,1);
part_type_life(particle1,30,30);

