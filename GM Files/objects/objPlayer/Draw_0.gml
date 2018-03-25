/// @description Drawing Shite

draw_self();

if (shield == 1)
{
	draw_sprite(sprShield, 0, x, y);
}
else if (shield == 2)
{
	draw_sprite(sprShield, 1, x, y);
}
else
{
	sprite_delete(killme);
}
