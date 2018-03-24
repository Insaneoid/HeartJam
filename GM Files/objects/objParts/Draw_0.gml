/// @description Draw identify
if (identify = 1)
{
	draw_text(x - 32, y + 64, "Spacebar: " + string(item));
	draw_self();
}
else
{
	draw_self();
}