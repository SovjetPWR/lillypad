var event_id = async_load[? "id"]

if socket == event_id
{
	var buff = async_load[? "buffer"]
	
	buffer_seek(buff, buffer_seek_start, 0)
	
	var cmd = buffer_read(buff, buffer_u8)
	
	switch(cmd)
	{
		case dataType.ENTITY_UPDATE :
		{
			var c = buffer_read(buff, buffer_u8)
			var e_id = buffer_read(buff, buffer_u16)
			
			if !ds_map_exists(entities, e_id)
			{
				var p = instance_create_layer(0,0,"Instances",oPlayerRemote)	
				ds_map_set(entities, e_id, p)
			}
			
			var p = entities[? e_id]
			
			switch(c)
			{
				case updateType.X :
				{
					p.x = buffer_read(buff, buffer_s16)
					break;
				}
				case updateType.Y :
				{
					p.y = buffer_read(buff, buffer_s16)
					break;
				}
				case updateType.NAME :
				{
					p.name = buffer_read(buff, buffer_string)
					break;
				}
				case updateType.SPRITE :
				{
					p.sprite_index = buffer_read(buff, buffer_u16)
					break;
				}
				case updateType.IMAGE :
				{
					p.image_index = buffer_read(buff, buffer_u8)
					break;
				}
				case updateType.DESTROY :
				{
					buffer_read(buff, buffer_u8)
					ds_map_delete(entities, e_id)
					instance_destroy(p)
					break;
				}
			}
			break;
		}
	}
}