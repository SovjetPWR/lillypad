draw_text(x,y,"server")

draw_text(x,y+20,"player num : "+string(ds_map_size(player_list)))

var key = ds_map_find_first(player_list)
for(var i=0; i<ds_map_size(player_list); i++)
{
	draw_text(x,y+50+20*i,string(key))
	
	key = ds_map_find_next(player_list, key)
}

