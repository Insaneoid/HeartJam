/// @description 
if (distance_to_object(objPlayer) < 500)
{
	part_particles_create(sys1, x, y, p2, 30);
	audio_play_sound(explosion, 2, false);
}
instance_destroy(other);
instance_destroy(self);