/// @description Insert description here
// You can write your code in this editor
depth = 1;
image_speed  = 0;
image_index = irandom(9);
gameDone = false;

dist  = distance_to_point(room_width div 2, room_height div 2);

habit = clamp(dist div (room_width div 2) * 100 + irandom_range(-20, 20)+20, 0, 100);