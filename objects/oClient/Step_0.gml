
if keyboard_check_pressed(ord("D")){sendPlayerUpdate(0,true)}
if keyboard_check_released(ord("D")){sendPlayerUpdate(0,false)}

if keyboard_check_pressed(ord("W")){sendPlayerUpdate(1,true)}
if keyboard_check_released(ord("W")){sendPlayerUpdate(1,false)}

if keyboard_check_pressed(ord("A")){sendPlayerUpdate(2,true)}
if keyboard_check_released(ord("A")){sendPlayerUpdate(2,false)}

if keyboard_check_pressed(ord("S")){sendPlayerUpdate(3,true)}
if keyboard_check_released(ord("S")){sendPlayerUpdate(3,false)}


tot = keyboard_check(ord("D"))+keyboard_check(ord("W"))*2+keyboard_check(ord("A"))*4+keyboard_check(ord("S"))*8
