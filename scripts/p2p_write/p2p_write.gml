//encode mouse position and transmit
buffer_seek(send_buffer, buffer_seek_start,0);
buffer_write(send_buffer, buffer_u8,1); //id. Use different ones for different msg types
buffer_write(send_buffer, buffer_u32,obj_player.x);//mousepos
buffer_write(send_buffer, buffer_u32,obj_player.y);
buffer_write(send_buffer, buffer_u32,obj_player.tot);
network_send_udp(socket,remote_ip,remote_port,send_buffer,buffer_tell(send_buffer));