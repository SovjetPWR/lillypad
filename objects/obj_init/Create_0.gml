globalvar myIp, myIpLocal;

myIp = ""
myIpLocal = ""

ip_start()
ip_local_start()

enum msgType
{
	NOONE = 0,
	
	CLIENT_HI = 1,
	CLIENT_UPDATE = 2,
	
	SERVER_UPDATE = 10,
}