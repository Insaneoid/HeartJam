/// @description Insert description here
// You can write your code in this editor

objCam.shake = 25;
part_particles_create(Sname2, x, y, particle1, 30);
audio_play_sound(explosion, 5, false);

global.points += 1;

rand = irandom(3);
for(i=0;i <rand;i++)
{
	instance_create_depth(x,y,0,objFragments);
}