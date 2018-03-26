xx = room_width/2 - 500;
yy = 250;

draw_set_font(fnt1);
draw_set_halign(fa_left);
draw_set_valign(fa_center);

for (i = 0; i<10; i++)
{
    yy += 70;
    draw_text(xx, yy, string(global.score_array[i, 0]))
    draw_text(xx + 800, yy, string(global.score_array[i, 1]));
}

draw_set_font(fnt11);
draw_text(xx, 100, "    Scoreboard");