var type = network_socket_udp;
socket = network_create_socket(type);//no port since the client doesn’t care

//Server IP and port, needed to send packets
remote_ip = get_string("Inserisci indirizzo IP",myIpLocal)
remote_port = 8080;

idRandom = irandom(900000)

//Make a buffer to hold packet data
var size = 100;
var type = buffer_fixed;
var alignment = 1;
send_buffer = buffer_create(size,type,alignment);

player_list = ds_map_create()


player_x = 500
player_y = 500

vel = 4

key_sx =  keyboard_check(ord("A"))
key_dx =  keyboard_check(ord("D"))
key_up =  keyboard_check(ord("W"))
key_dw =  keyboard_check(ord("S"))

tot = 0

client_write(true)