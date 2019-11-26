globalvar IP, IP_LOCAL;

IP = ""
IP_LOCAL = ""

ip_start()
ip_local_start()


enum dataType
{
	PLAYER_POSITION,
	ENTITY_UPDATE,
	PLAYER_IMAGE,
	PLAYER_NAME,
}


enum updateType
{
	X,
	Y,
	NAME,
	SPRITE,
	IMAGE,
	DESTROY
}


surface_resize(application_surface,480,270)