draw_set_halign(fa_center)
draw_set_valign(fa_center)

draw_set_color(c_white)
draw_roundrect(0,0,300,100,0)
draw_set_color(c_black)
draw_text(150,50,"server")

if point_in_rectangle(mouse_x,mouse_y,0,0,300,100) && mouse_check_button_pressed(mb_left)
{
	instance_create_depth(200,500,0,obj_server)
}

draw_set_color(c_white)
draw_roundrect(500,0,800,100,0)
draw_set_color(c_black)
draw_text(650,50,"client")


if point_in_rectangle(mouse_x,mouse_y,500,0,800,100) && mouse_check_button_pressed(mb_left)
{
	instance_create_depth(600,500,0,obj_client)
}

draw_set_color(c_white)