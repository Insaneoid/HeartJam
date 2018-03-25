/// @description Insert description here
// You can write your code in this editor

image_angle += 0.1;

x += lengthdir_x(spd, dir);
x += lengthdir_y(spd, dir);

if (pick == true)
{
	audio_play_sound(pickup, 5, true);
}