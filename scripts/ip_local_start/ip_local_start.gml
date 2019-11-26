randomize();
var a = irandom_range(49152,65535);
var host = network_create_server(network_socket_udp, a, 5);


var tsock = network_create_socket(network_socket_udp);
var tbuff = buffer_create(32, buffer_fixed, 1);
buffer_fill(tbuff, 0, buffer_bool, 0, 32);
network_send_broadcast(tsock, a, tbuff, buffer_get_size(tbuff));
network_destroy(tsock);
buffer_delete(tbuff);
