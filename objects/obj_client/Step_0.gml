
key_sx =  keyboard_check(ord("A"))
key_dx =  keyboard_check(ord("D"))
key_up =  keyboard_check(ord("W"))
key_dw =  keyboard_check(ord("S"))


tot = key_dx+key_up*2+key_sx*4+key_dw*8


repeat(vel)
{
	if key_up then
	{
		player_y-=1
	}
	if key_dw then
	{
		player_y+=1
	}
	if key_sx then
	{
		player_x-=1
	}
	if key_dx 
	{
		player_x+=1
	}
}


client_write(false)