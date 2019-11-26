port = 45000
max_clients = 4

port = get_string("Inserisci porta",45000)

server = network_create_server(network_socket_tcp, port, max_clients)

clients = ds_map_create()
sockets = ds_list_create()

buffer = buffer_create(1024,buffer_grow,1)