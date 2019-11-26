///@param init

var init = argument0

clear_buffer()

if init == true
{
	buffer_write(send_buffer, buffer_u8, msgType.CLIENT_HI); 
	buffer_write(send_buffer, buffer_string, myIpLocal+":"+string(idRandom)); 
}
else
{
	
	buffer_write(send_buffer, buffer_u8, msgType.CLIENT_UPDATE); 
	buffer_write(send_buffer, buffer_string,myIpLocal+":"+string(idRandom)); 
	buffer_write(send_buffer, buffer_u32,player_x);
	buffer_write(send_buffer, buffer_u32,player_y);
	buffer_write(send_buffer, buffer_u32,tot);
}

network_send_udp(socket, remote_ip,remote_port, send_buffer, buffer_tell(send_buffer));