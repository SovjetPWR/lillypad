draw_set_halign(fa_center)
draw_set_font(fon_menu)

for(var i=0; i<array_length_1d(menu); i++)
{
	if menu_current == i
	{draw_set_color(c_red)}
	else
	{draw_set_color(c_white)}
	
	draw_text(room_width/2,90+64*i, menu[i])
}

draw_set_halign(fa_left)