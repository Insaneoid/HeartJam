/// @description Initialise Bullet Movement
target = instance_nearest(mouse_x, mouse_y, objEnemy);
dir	  = point_direction(x, y, mouse_x, mouse_y);
Sname = part_system_create();