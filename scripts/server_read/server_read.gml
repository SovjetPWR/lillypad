///@param buffer

var buffer = argument0
buffer_seek(buffer, buffer_seek_start, 0);

var msg_type = buffer_read(buffer,buffer_u8);
var msg_ip  = buffer_read(buffer, buffer_string);

switch(msg_type)
{
	case msgType.CLIENT_HI:
	{
		ds_map_add(player_list,msg_ip,instance_create_depth(500,500,0,obj_player_server))
		
		break;
	}
	
	case msgType.CLIENT_UPDATE:
	{
		var xx = buffer_read(buffer, buffer_u32);
		var yy = buffer_read(buffer, buffer_u32);
		var tot = buffer_read(buffer, buffer_u32);
		
		var player = ds_map_find_value(player_list,msg_ip)
		player.x = xx;
		player.y = yy;
		player.tot = tot;
		
		server_write()
		break;
	}
}
