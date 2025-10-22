/// @function draw_text_custom(x, y, text, font, color, halign, valign, outline_color, shadow)
/// @param {real} x                 X position
/// @param {real} y                 Y position
/// @param {string} text            The text to draw
/// @param {font} font              Font resource (can be undefined for default)
/// @param {color} color            Text color
/// @param {string} halign          "left", "center", or "right"
/// @param {string} valign          "top", "middle", or "bottom"

function draw_text_custom(_x, _y, _text, _font, _color, _halign, _valign) {

    // Set new settings
    draw_set_font(_font);
    draw_set_color(_color);

    draw_set_halign(_halign);
    draw_set_valign(_valign);

    // Draw main text
    draw_text(_x, _y, _text);

}
