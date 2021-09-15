/// @desc check if the button is pressed

if (obj_button.pressed) {
	if (image_angle < 90) {
		image_angle += 1;
	}
} else {
	if (image_angle > 0) {
		image_angle -= 1;
	}
}