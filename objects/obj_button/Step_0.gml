/// @desc When collided, the button should be on
if (place_meeting(x, y, obj_pastplayer)) {
	if (not pressed) {
		pressed = 1;
		sprite_index = spr_buttonpress;
	}
} else {
	if (pressed) {
		pressed = 0;
		sprite_index = spr_button;
	}
}

