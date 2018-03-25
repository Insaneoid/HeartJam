/// @description Insert description here
// You can write your code in this editor

objCam.shake = 15;
part_particles_create(Sname, x, y, particle1, 30);
audio_play_sound(explosion, 5, false);
part_system_destroy(Sname);

