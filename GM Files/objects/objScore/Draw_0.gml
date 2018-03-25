/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);
draw_set_font(fnt1);


for (var k = 0; k < 11; k++)
{
	draw_text(x, y+(k*70), string(ds_list_find_value(namSorted, k)));
	draw_text(x+200, y+(k*70), ds_list_find_value(pointSorted, k));
	draw_text(x+400, y+(k*70), string(ds_list_find_value(nam, k)));
	draw_text(x+500, y+(k*70), ds_list_find_value(point, k));
}