
clear_buffer()


buffer_write(send_buffer, buffer_u8, msgType.SERVER_UPDATE);
buffer_write(send_buffer, buffer_string, myIp); 

var sz = ds_map_size(player_list)
var key = ds_map_find_first(player_list)

buffer_write(send_buffer, buffer_u32, sz); 

for(var i=0; i<sz; i++)
{	
	var current = ds_map_find_value(player_list,key)
	//show_debug_message("sending = "+string(key))
	
	buffer_write(send_buffer, buffer_string,key);
	buffer_write(send_buffer, buffer_u32,current.x);
	buffer_write(send_buffer, buffer_u32,current.y);
	buffer_write(send_buffer, buffer_u32,current.tot);
	
	key = ds_map_find_next(player_list,key)
}


//network_send_udp(socket, myIpLocal, remote_port, send_buffer, buffer_tell(send_buffer));
network_send_broadcast(socket, remote_port, send_buffer, buffer_tell(send_buffer));