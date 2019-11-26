socket = network_create_socket(network_socket_tcp)
global.socket = socket

ip = get_string("Inserisci indirizzo IP",IP_LOCAL)
port = get_string("Inserisci porta",45000)

connect = network_connect(socket, ip, port)

buffer = buffer_create(1024,buffer_grow,1)

entities = ds_map_create()

sendPlayerInit(global.name)