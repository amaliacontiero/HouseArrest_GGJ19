if (sprite_index == sSleepJab)
    attacking = false;
    
if (sprite_index == sPlayerRoll) {
    if (!attacking)
        alarm[1] = -1;
            
    state = IDLE;
}

