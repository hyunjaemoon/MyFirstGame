// @desc Drawing the Text Box

// Draw Textbox
draw_sprite_ext(spr_textbox, 0, x, y, xscale, yscale, 0, c_white, 1);

// Draw Text 
text = "Hello World"
draw_set_font(fnt_text);
draw_set_color(c_black);
draw_text_ext(x, y, text, stringHeight, boxWidth);

