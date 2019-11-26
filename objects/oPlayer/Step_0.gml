
hspd = walking_speed*(keys[0]-keys[2])
x += hspd

vspd = walking_speed*(keys[3]-keys[1])
y += vspd

tot = keys[0]+keys[1]*2+keys[2]*4+keys[3]*8


switch(tot)
{
	case 1:	 {sprite_index = spr_player_dx;		break;}
	case 3:  {sprite_index = spr_player_up_dx;	break;}
	case 2:  {sprite_index = spr_player_up;		break;}
	case 6:  {sprite_index = spr_player_up_sx;	break;}
	case 4:  {sprite_index = spr_player_sx;		break;}
	case 12: {sprite_index = spr_player_dw_sx;	break;}
	case 8:	 {sprite_index = spr_player_dw;		break;}
	case 9:	 {sprite_index = spr_player_dw_dx;	break;}
}

