globalvar IP, IP_LOCAL;

IP = ""
IP_LOCAL = ""

ip_start()
ip_local_start()


enum dataType
{
	ENTITY_UPDATE,
	PLAYER_INIT,
	PLAYER_UPDATE,
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