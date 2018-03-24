/// @description Insert description here
// You can write your code in this editor

x = objPlayer.x;
y = objPlayer.y;

viewX = camera_get_view_x(view_camera[0]);
viewY = camera_get_view_y(view_camera[0]);
viewX += irandom_range(-shake, shake);
viewY += irandom_range(-shake, shake);
shake *= 0.9;
camera_set_view_pos(view_camera[0], viewX, viewY);

