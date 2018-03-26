draw_set_font(fnt1);
draw_sprite(sprite_index,image_index,x,y);
draw_set_halign(fa_center); //draw it in the middle of the sprite
draw_set_valign(fa_center);
xx = x+ 250;
yy = y +60;
if (txt == "")
{
    draw_text(xx,yy,"Name");
}
else
{
    if (blink == false) || (selected == false)
    {
        draw_text(xx,yy,txt); //draw the text
    }
    else
    {
        draw_text(xx,yy,txt + "|"); //draw the text with a "|" in the end
    }
}

draw_set_halign(fa_left); //reset the halign
draw_set_valign(fa_top);