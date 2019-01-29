if (sprite_index == sHungerJab)
    attacking = false;
    
if (sprite_index == sPlayerRoll) {
    if (!attacking)
        alarm[1] = -1;
            
    state = IDLE;
}

