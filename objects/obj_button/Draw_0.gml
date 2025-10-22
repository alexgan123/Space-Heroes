draw_self();

if (held) {
    image_index = 1;
}
else {
    image_index = 0;   
}

if (hovered) {
    draw_sprite(spr_button_highlight, 0, x, y);
}


draw_text_custom(x, y + (held ? 6 : 0), text, font_small, c_white, fa_center, fa_middle);