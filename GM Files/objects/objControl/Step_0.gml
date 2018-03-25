/// @description Debug

audio_play_sound(music, 1, true);

if (keyboard_check_pressed(vk_escape))
{
	room_goto(rmMenu);	
}