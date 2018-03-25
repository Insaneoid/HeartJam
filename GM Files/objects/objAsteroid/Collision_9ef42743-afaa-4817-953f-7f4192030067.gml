/// @description 
part_particles_create(sys, x, y, p1, 30);
audio_play_sound(explosion, 2, false);
instance_create_depth(x + 32, y + 32, 1, objAsteroidS);
instance_create_depth(x - 32, y - 32, 1, objAsteroidS);
instance_destroy(other);
instance_destroy(self);