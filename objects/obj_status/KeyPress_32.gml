/// @desc check if game cleared

with(obj_player) {
	if (place_meeting(x, y, obj_goal)) {
		with(obj_pastplayer) {
			if (place_meeting(x, y, obj_goal)) {
				obj_textbox.visible = 1
				obj_status.cleared = true;
				//game_restart();
			}
		}
	}
}