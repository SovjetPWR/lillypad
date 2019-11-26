///@param buffer

var buffer = argument0;
buffer_seek(buffer, buffer_seek_start, 0);

var msg_type = buffer_read(buffer,buffer_u8);
var msg_ip  = buffer_read(buffer, buffer_string);

switch(msg_type)
{
	case msgType.SERVER_UPDATE:
	{
		var client_number  = buffer_read(buffer, buffer_u32);
		
		for(var i=0; i<client_number; i++)
		{
			var ip = buffer_read(buffer, buffer_string);
			var xx = buffer_read(buffer, buffer_u32);
			var yy = buffer_read(buffer, buffer_u32);
			var tot = buffer_read(buffer, buffer_u32);
		
			var player = ds_map_find_value(player_list,ip)
			show_debug_message("reciving = "+string(ip))
		
			if is_undefined(player)
			{
				player = instance_create_depth(500,500,0,obj_player_client)
				ds_map_add(player_list,ip,player)
			}
			
			player.x = xx;
			player.y = yy;
			player.tot = tot;
		}
		
		break;
	}
	
}
