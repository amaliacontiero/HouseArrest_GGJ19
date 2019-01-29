if (sprite_index == sPlayerJab or sprite_index == sPlayerUppercut)
    attacking = false;
    
if (sprite_index == sPlayerRoll) {
    if (!attacking)
        alarm[1] = -1;
            
    state = IDLE;
}

