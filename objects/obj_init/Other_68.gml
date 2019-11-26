if myIpLocal == ""
{
	myIpLocal = ip_local_get()
}


var buffer = async_load[? "buffer"];
buffer_seek(buffer, buffer_seek_start,0);
	
var msg_type = buffer_read(buffer,buffer_u8);

if msg_type = msgType.CLIENT_HI || msg_type = msgType.CLIENT_UPDATE
{
	with(obj_server)
	{
		server_read(buffer)	
	}
	
}
else
{
	with(obj_client)
	{
		client_read(buffer)
	}
}