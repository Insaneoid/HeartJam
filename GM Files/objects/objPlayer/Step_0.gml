/// @description Control

// Local Variables
var shoot = mouse_check_button_pressed(mb_left);

// Control
shieldCool += 1;

if (thrust > 0)
{
	part_type_direction(particle1,dir+180,dir+180,0,0);

	scrPlayerMovement(self);	
}
else
{
	x += lengthdir_x(spd, dir);
	y += lengthdir_y(spd, dir);	
}

if (shoot == 1 && gun > 0)
{
	instance_create_depth(x, y, 0, objBullet);
}

if (shieldCool > 10 && shield > 0)
{
	shield = 1;	
}
else
{	
	shield = 0;
}

// Energy Management

if (keyboard_check_pressed(vk_up)) 
{
	if (gun == 0 && gunO = 1) {gunP = gun; gun = 1} else if (gun > 0 && gunO == 1) {gun = gunP}
}
if (keyboard_check_pressed(vk_down))
{
	if (thrust == 0 && thrustO = 1) {thrustP = thrust; thrust = 1} else if (thrust > 0 && thrustO == 1) {thrust = thrustP}
}
if (keyboard_check_pressed(vk_left))
{
	if (shield == 0 && shieldO == 1) {shieldP = shield; shield = 1} else if (shield > 0 && shieldO == 1) {shield = shieldP}
}
if (keyboard_check_pressed(vk_right))
{
	if (scanner == 0 && scannerO == 1) {scannerP = scanner; scanner = 1} else if (scanner > 0 && scannerO == 1) {scanner = scannerP}
}

// parallax
var _cam_x = camera_get_view_x(view_camera[0]) ;
var _cam_y = camera_get_view_y(view_camera[0]) ;
layer_x("backgrounds_2", _cam_x * 0.25);
layer_y("backgrounds_2", _cam_y * 0.25);