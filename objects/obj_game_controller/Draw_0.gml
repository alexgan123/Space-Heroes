draw_sprite(spr_healthbar, 0, 260, 50);
draw_sprite(spr_healthbar, 0, 260, 120);
draw_sprite(spr_healthbar, 0, 260, 190);


var hp_relative = hp / hp_max;
if (hp_relative >= 0 && hp_relative <= 0.06) {
    draw_sprite_part(spr_barGreen_horizontalLeft, 0, 0, 0, 29 * hp_relative / 0.06, 57, 16, 22);
}
else if (hp_relative >= 0.06 && hp_relative <= 0.117) {
    draw_sprite(spr_barGreen_horizontalLeft, 0, 30, 50);
    draw_sprite_part(spr_barGreen_horizontalRight, 0, 0, 0, 29 * (hp_relative - 0.06) / 0.057, 57, 44, 22);
}
else if (hp_relative >= 0.117 && hp_relative <= 1) {
    draw_sprite(spr_barGreen_horizontalLeft, 0, 30, 50);
    draw_sprite_part(spr_barGreen_horizontalMid, 0, 0, 0, 432 * (hp_relative - 0.117) / (1 - 0.117), 57, 45, 22);
    draw_sprite(spr_barGreen_horizontalRight, 0, 58 + (432 * (hp_relative - 0.117) / (1 - 0.117)), 50);
}
else if (hp_relative >= 1) {
    draw_sprite(spr_barGreen_horizontalLeft, 0, 30, 50);
    draw_sprite(spr_barGreen_horizontalMid, 0, 260, 50);
    draw_sprite(spr_barGreen_horizontalRight, 0, 58 + 432, 50);
}


var attack_relative = attack / attack_max;
if (attack_relative >= 0 && attack_relative <= 0.06) {
    draw_sprite_part(spr_barRed_horizontalLeft, 0, 0, 0, 29 * attack_relative / 0.06, 57, 16, 92);
}
else if (attack_relative >= 0.06 && attack_relative <= 0.117) {
    draw_sprite(spr_barRed_horizontalLeft, 0, 30, 120);
    draw_sprite_part(spr_barRed_horizontalRight, 0, 0, 0, 29 * (attack_relative - 0.06) / 0.057, 57, 44, 92);
}
else if (attack_relative >= 0.117 && attack_relative <= 1) {
    draw_sprite(spr_barRed_horizontalLeft, 0, 30, 120);
    draw_sprite_part(spr_barRed_horizontalMid, 0, 0, 0, 432 * (attack_relative - 0.117) / (1 - 0.117), 57, 45, 92);
    draw_sprite(spr_barRed_horizontalRight, 0, 58 + (432 * (attack_relative - 0.117) / (1 - 0.117)), 120);
}
else if (attack_relative >= 1) {
    draw_sprite(spr_barRed_horizontalLeft, 0, 30, 120);
    draw_sprite(spr_barRed_horizontalMid, 0, 260, 120);
    draw_sprite(spr_barRed_horizontalRight, 0, 58 + 432, 120);
}

var defense_relative = defense / defense_max;
if (defense_relative >= 0 && defense_relative <= 0.06) {
    draw_sprite_part(spr_barBlue_horizontalLeft, 0, 0, 0, 29 * defense_relative / 0.06, 57, 16, 162);
}
else if (defense_relative >= 0.06 && defense_relative <= 0.117) {
    draw_sprite(spr_barBlue_horizontalLeft, 0, 30, 190);
    draw_sprite_part(spr_barBlue_horizontalRight, 0, 0, 0, 29 * (defense_relative - 0.06) / 0.057, 57, 44, 162);
}
else if (defense_relative >= 0.117 && defense_relative <= 1) {
    draw_sprite(spr_barBlue_horizontalLeft, 0, 30, 190);
    draw_sprite_part(spr_barBlue_horizontalMid, 0, 0, 0, 432 * (defense_relative - 0.117) / (1 - 0.117), 57, 45, 162);
    draw_sprite(spr_barBlue_horizontalRight, 0, 58 + (432 * (defense_relative - 0.117) / (1 - 0.117)), 190);
}


draw_text_custom(260, 50, string(ceil(hp)) + " Health", font_small, c_white, fa_center, fa_middle);
draw_text_custom(260, 120, string(ceil(attack)) + " Attack", font_small, c_white, fa_center, fa_middle);
draw_text_custom(260, 190, string(ceil(defense)) + " Defense", font_small, c_white, fa_center, fa_middle);