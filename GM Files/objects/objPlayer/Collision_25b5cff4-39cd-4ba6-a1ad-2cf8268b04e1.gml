/// @description Insert description here
// You can write your code in this editor

instance_destroy(other);

if (shield == 0)
{
	instance_destroy();
	part_particles_create(Sname1, x, y, particle0, 30);
	audio_play_sound(explosion, 10, false);
}

shield -= 1;
shieldCool = 0;