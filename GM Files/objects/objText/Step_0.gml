/// @description Insert description here
// You can write your code in this editor

if(instance_exists(objPlayer))
{
	if (distance_to_object(objPlayer) > 260)
	{
		instance_destroy();
	}
}