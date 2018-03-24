/// @description Debug
if (keyboard_check_pressed(vk_space))
{
	room_restart();
}

audio_play_sound(music, 1, true);