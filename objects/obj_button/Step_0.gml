hovered = position_meeting(mouse_x, mouse_y, id);

// Handle mouse states
if (hovered) {
    if (mouse_check_button_pressed(mb_left)) {
        held = true;
    }
    if (mouse_check_button_released(mb_left) && held) {
        held = false;
        onClick();
        audio_play_sound(snd_click, 0, false);
    }
} else {
    if (mouse_check_button_released(mb_left)) held = false;
}
