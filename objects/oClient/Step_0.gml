
if keyboard_check_pressed(ord("D")){sendKey(0,true)}
if keyboard_check_released(ord("D")){sendKey(0,false)}

if keyboard_check_pressed(ord("W")){sendKey(1,true)}
if keyboard_check_released(ord("W")){sendKey(1,false)}

if keyboard_check_pressed(ord("A")){sendKey(2,true)}
if keyboard_check_released(ord("A")){sendKey(2,false)}

if keyboard_check_pressed(ord("S")){sendKey(3,true)}
if keyboard_check_released(ord("S")){sendKey(3,false)}


tot = keyboard_check(ord("D"))+keyboard_check(ord("W"))*2+keyboard_check(ord("A"))*4+keyboard_check(ord("S"))*8
