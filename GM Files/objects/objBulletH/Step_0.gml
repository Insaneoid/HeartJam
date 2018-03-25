/// @description 
if (instance_exists(target))
{
	if (dir != point_direction(x, y, target.x, target.y))
	{
		if (dir >  point_direction(x, y, target.x, target.y))
		{
			dir -= 5;
		}
		else if (dir < point_direction(x, y, target.x, target.y))
		{
			dir += 5;
		}	
	}
	x += lengthdir_x(16, dir);
	y += lengthdir_y(16, dir);
}
else
{
	instance_destroy(self);	
}

particle1 = part_type_create();
part_type_shape(particle1,pt_shape_disk);
part_type_size(particle1,0.10,0.10,0,0);
part_type_scale(particle1,0.50,0.50);
part_type_color3(particle1,c_blue,4227327,8454143);
part_type_alpha1(particle1,1);
part_type_speed(particle1,1,1,0,0);
part_type_direction(particle1,0,359,0,0);
part_type_gravity(particle1,0,270);
part_type_orientation(particle1,0,0,0,0,1);
part_type_blend(particle1,1);
part_type_life(particle1,1,7);

part_particles_create(Sname5, x, y, particle1, 10);

if (distance_to_object(objPlayer) > 500)
{
	instance_destroy()
}