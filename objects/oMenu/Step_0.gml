if keyboard_check_pressed(vk_down)
{
	menu_current ++
}
if keyboard_check_pressed(vk_up)
{
	menu_current --
}

if menu_current < 0
{
	menu_current = array_length_1d(menu)-1
}
if menu_current > array_length_1d(menu)-1
{
	menu_current = 0
}


if keyboard_check_pressed(vk_enter)
{
	switch(menu_current)
	{
		case 0 :
		{
			instance_create_depth(0,0,0,oServer)
			room_goto_next()
			break;
		}
		case 1 :
		{
			room_goto_next()
			break;
		}
		case 2 :
		{
			game_end()
			break;
		}
	}
}