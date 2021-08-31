/// @desc Player's Past Motions
visible = 1-visible;
if (cleared) {
	exit;
}
//Moving Around
key_left = keyboard_check(ord("D"));
key_right = keyboard_check(ord("A"));
key_down = keyboard_check(ord("S"));
key_up = keyboard_check(ord("W"));

var _moveHor = key_left - key_right;
var _moveVer = key_down - key_up;
hsp = _moveHor * spd
vsp = _moveVer * spd

//Time Delay Inputs
if (array_length(delayH) >= delay) {
	newhsp = array_pop(delayH);
	newvsp = array_pop(delayV);
	array_insert(delayH, 0, hsp);
	array_insert(delayV, 0, vsp);
	hsp = newhsp;
	vsp = newvsp;
} else {
	array_insert(delayH, 0, hsp);
	array_insert(delayV, 0, vsp);
	exit;
}

//Collision

if (vsp < 0) {
	sprite_index = spr_maincharup;
} else if (vsp > 0) {
	sprite_index = spr_mainchardown;
} else if (hsp > 0) {
	sprite_index = spr_maincharright;
} else if (hsp < 0) {
	sprite_index = spr_maincharleft;
} else {
	sprite_index = spr_mainchar;
}

if (place_meeting(x+hsp, y, obj_wall)) {
	while (!place_meeting(x+sign(hsp), y, obj_wall)) {
		x = x + sign(hsp)
	}
	hsp = 0;
}
if (place_meeting(x, y+vsp, obj_wall)) {
	while (!place_meeting(x, y+sign(vsp), obj_wall)) {
		y = y + sign(vsp)
	}
	vsp = 0
}
x = x + hsp;
y = y + vsp;