/// @description Insert description here
// You can write your code in this editor
if (string_length(keyboard_string) < maxInput)
{
	message = keyboard_string;
}
else
{
	keyboard_string = message;
}

if (keyboard_check_pressed(vk_enter))
{
	global.name = message;
	instance_destroy();
}