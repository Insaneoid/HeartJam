/// @description Insert description here
// You can write your code in this editor

audio_play_sound(explosion, 1, false);
part_particles_create(Sname, x, y, particle1, 20);

if !(audio_is_playing(explosion))
{
instance_destroy(other);
instance_destroy(self);
}