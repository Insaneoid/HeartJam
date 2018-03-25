/// @description Insert description here
// You can write your code in this editor

image_angle += 0.1;

x += lengthdir_x(spd, dir);
x += lengthdir_y(spd, dir);

if (distance_to_object(objPlayer) < 500)
{
	part_particles_create(Sname3, x, y, particle1, 1);
}

move_wrap(true, true, 100);