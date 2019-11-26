///process_packet(buffer)
var buffer = argument0;
var msg_id = buffer_read(buffer,buffer_u8);
var type  = buffer_read(buffer, buffer_u32);

switch(type)
{
	case 0:
	{
		var ip = buffer_read(buffer, buffer_u32);
		ds_map_add(player_list,ip,instance_create_depth(500,500,0,obj_player))
	}
	
	case 1:
	{
		var xx = buffer_read(buffer, buffer_u32);
		var yy = buffer_read(buffer, buffer_u32);

		//do something with that mouse position
		instance_create_depth(xx,yy,0,obj_circle);
	}
	
	case 2:
	{
		var ip = buffer_read(buffer, buffer_u32);
		var xx = buffer_read(buffer, buffer_u32);
		var yy = buffer_read(buffer, buffer_u32);
		var tot = buffer_read(buffer, buffer_u32);
		
		var player = ds_map_find_value(player_list,ip)
		
		player.x = xx;
		player.y = yy;
		player.tot = tot;
	}
}
