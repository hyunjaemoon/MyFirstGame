if (place_meeting(x, y, obj_goal)) {
	with(obj_pastplayer) {
		if (place_meeting(x, y, obj_goal)) {
			game_restart();
		}
	}
}