///@param socket
///@param command
///@param id
///@param data

buffer_seek(buffer, buffer_seek_start, 0)
buffer_write(buffer, buffer_u8, dataType.ENTITY_UPDATE)
buffer_write(buffer, buffer_u8, argument1)	//second command
buffer_write(buffer, buffer_u16, argument2)	//id of entity

switch(argument1)
{
	case updateType.X :
	{
		buffer_write(buffer, buffer_s16, argument3)
		break;
	}
	case updateType.Y :
	{
		buffer_write(buffer, buffer_s16, argument3)
		break;
	}
	case updateType.NAME :
	{
		buffer_write(buffer, buffer_string, argument3)
		break;
	}
	case updateType.SPRITE :
	{
		buffer_write(buffer, buffer_u16, argument3)
		break;
	}
	case updateType.IMAGE :
	{
		buffer_write(buffer, buffer_u8, argument3)
		break;
	}
	case updateType.DESTROY :
	{
		buffer_write(buffer, buffer_u8, argument3)
		break;
	}
	
}

network_send_packet(argument0, buffer, buffer_tell(buffer))