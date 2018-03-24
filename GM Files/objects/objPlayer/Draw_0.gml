/// @description Drawing Shite

draw_self();

if (shield > 0)
{
	draw_sprite(sprShield, 0, x, y);
}
else
{
	sprite_delete(killme);
}