// Increase HP of the player by amount
// If HP is already over the maximum, don't do anything
function player_heal(amount) {
    if (obj_game_controller.hp < obj_game_controller.hp_max) {
        obj_game_controller.hp += amount;
        obj_game_controller.hp = clamp(obj_game_controller.hp, 0, obj_game_controller.hp_max);
    }
}

// Decrease HP of the player by amount
function player_damage(amount) {
    obj_game_controller.hp -= amount;
    obj_game_controller.hp = clamp(obj_game_controller.hp, 0, obj_game_controller.hp_max);
}

// Increase Attack of the player by amount
// If Attack is already over the maximum, don't do anything
function player_attack_buff(amount) {
    if (obj_game_controller.attack < obj_game_controller.attack_max) {
        obj_game_controller.attack += amount;
        obj_game_controller.attack = clamp(obj_game_controller.attack, 0, obj_game_controller.attack_max);
    }
}

// Decrease Attack of the player by amount
function player_attack_nerf(amount) {
    obj_game_controller.attack -= amount;
    obj_game_controller.attack = clamp(obj_game_controller.attack, 0, obj_game_controller.attack_max);
}

// Increase Defense of the player by amount
// If Defense is already over the maximum, don't do anything
function player_defense_buff(amount) {
    if (obj_game_controller.defense < obj_game_controller.defense_max) {
        obj_game_controller.defense += amount;
        obj_game_controller.defense = clamp(obj_game_controller.defense, 0, obj_game_controller.defense_max);
    }
}

// Decrease Defense of the player by amount
function player_defense_nerf(amount) {
    obj_game_controller.defense -= amount;
    obj_game_controller.defense = clamp(obj_game_controller.defense, 0, obj_game_controller.defense_max);
}

