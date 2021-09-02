/// @desc Player's Current Motion.
if (cleared) {
	sprite_index = spr_mainchar;
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

if (vsp < 0) {
	if (hsp > 0) {
		sprite_index = spr_maincharupright;
	} else if (hsp < 0) {
		sprite_index = spr_maincharupleft;
	} else {
		sprite_index = spr_maincharup;
	}
} else if (vsp > 0) {
	if (hsp > 0) {
		sprite_index = spr_mainchardownright;
	} else if (hsp < 0) {
		sprite_index = spr_mainchardownleft;
	} else {
		sprite_index = spr_mainchardown;
	}
} else if (hsp > 0) {
	sprite_index = spr_maincharright;
} else if (hsp < 0) {
	sprite_index = spr_maincharleft;
} else {
	sprite_index = spr_mainchar;
}

//Collision
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
