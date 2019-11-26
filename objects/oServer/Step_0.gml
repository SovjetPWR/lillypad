for(var i=0; i<instance_number(oPlayer); i++)
{
	var pl = instance_find(oPlayer,i)
	
	for(var s=0; s<ds_list_size(sockets); s++)
	{
		var so = ds_list_find_value(sockets, s)
		
		sendRemoteEntity(so, updateType.X, pl.id, pl.x)
		sendRemoteEntity(so, updateType.Y, pl.id, pl.y)
		sendRemoteEntity(so, updateType.IMAGE, pl.id, pl.image_index)
		sendRemoteEntity(so, updateType.SPRITE, pl.id, pl.sprite_index)
	}
	
}