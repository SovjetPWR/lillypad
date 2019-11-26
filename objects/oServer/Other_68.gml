var event_id = async_load[? "id"]
show_debug_message(event_id)

if server == event_id
{
	var type = async_load[? "type"]
	var sock = async_load[? "socket"]
	
	if type == network_type_connect
	{
		ds_list_add(sockets, sock)
		
		var p = instance_create_layer(100,100+32*sock, "Instances", oPlayer)
		ds_map_add(clients, sock, p)
		
		for(var i=0; i<instance_number(oPlayer); i++)
		{
			var pl = instance_find(oPlayer,i)
			sendRemoteEntity(sock, updateType.X, pl.id, pl.x)
			sendRemoteEntity(sock, updateType.Y, pl.id, pl.y)
			sendRemoteEntity(sock, updateType.NAME, pl.id, pl.name)
		}
	}
	
	if type == network_type_disconnect
	{
		var p = clients[? sock]
		
		if instance_exists(p)
		{
			instance_destroy(p)		
		}
		
		ds_list_delete(sockets, ds_list_find_index(sockets, sock))
		ds_map_delete(clients, sock)
	}
}
else if event_id != global.socket
{
	var sock = async_load[? "id"]
	var buff= async_load[? "buffer"]
	
	buffer_seek(buff, buffer_seek_start, 0)
	var cmd = buffer_read(buff, buffer_u8)
	
	var p = clients[? sock]
	
	switch(cmd)
	{
		case dataType.PLAYER_POSITION :
		{
			with(p)
			{
				var key = buffer_read(buff, buffer_u8)
				var pressed = buffer_read(buff, buffer_u8)
				
				keys[key] = pressed
			}
			
			break;
		}
		case dataType.PLAYER_IMAGE :
		{
			with(p)
			{
				var img = buffer_read(buff, buffer_u8)
				
				switch(img)
				{
					case 1:	 {sprite_index = spr_player_dx;		break;}
					case 3:  {sprite_index = spr_player_up_dx;	break;}
					case 2:  {sprite_index = spr_player_up;		break;}
					case 6:  {sprite_index = spr_player_up_sx;	break;}
					case 4:  {sprite_index = spr_player_sx;		break;}
					case 12: {sprite_index = spr_player_dw_sx;	break;}
					case 8:	 {sprite_index = spr_player_dw;		break;}
					case 9:	 {sprite_index = spr_player_dw_dx;	break;}
				}
			}
			
			break;
		}
		case dataType.PLAYER_NAME:
		{
			var nm = buffer_read(buff, buffer_string)
			p.name = nm
				
			for(var s=0; s<ds_list_size(sockets); s++)
			{
				var so = ds_list_find_value(sockets, s)
		
				sendRemoteEntity(so, updateType.NAME, p.id, p.name)
			}
					
			break;
		}
		
	}
}