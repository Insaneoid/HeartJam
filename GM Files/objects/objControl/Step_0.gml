/// @description Debug
if (keyboard_check_pressed(vk_space))
{
	instance_create_depth(random(room_width), random(room_height), 0, objBulletE);
}