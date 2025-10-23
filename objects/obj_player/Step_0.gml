var input_x = keyboard_check(vk_right) - keyboard_check(vk_left);
var input_y = keyboard_check(vk_down)  - keyboard_check(vk_up);

var len = sqrt(input_x*input_x + input_y*input_y);
if (len > 0) {
    input_x /= len;
    input_y /= len;
}

x += input_x * obj_game_controller.speed_;
y += input_y * obj_game_controller.speed_;

var half_w = sprite_width  * 0.5;
var half_h = sprite_height * 0.5;

x = clamp(x, half_w, room_width  - half_w);
y = clamp(y, half_h, room_height - half_h);
