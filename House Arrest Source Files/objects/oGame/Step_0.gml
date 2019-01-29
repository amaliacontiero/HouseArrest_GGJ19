// Input variables for debug room traversal
var kRestart, kExit, kPrev, kNext;

kRestart = keyboard_check_pressed(ord("R"));
kExit    = keyboard_check_pressed(vk_escape);
kPrev    = keyboard_check_pressed(vk_subtract);
kNext    = keyboard_check_pressed(vk_add);

if (kRestart)
    game_restart();
if (kExit)
    game_end();
    
// Iterate through rooms backward
if (kPrev) {
    if (room == room_first)
        room_goto(room_last);
    else
        room_goto_previous();
}

// Iterate through rooms forwards
if (kNext) {
    if (room == room_last)
        room_goto(room_first);
    else
        room_goto_next();
}

// Toggle touch controls
if (keyboard_check_pressed(ord("P"))) {
    if (instance_exists(oTouchCompatible))
        with (oTouchCompatible)
            instance_destroy();
    else
        instance_create(0, 0, oTouchCompatible);
}

if oPlayer.boredom=0 or oPlayer.hunger=0 or oPlayer.filth=0 or oPlayer.sleepiness=0
{ global.game_state=-1; sarcasm_alpha+=0.02; oPlayer.invincible=true; oPlayer.visible=false; }
else if instance_number(oParEnemyEntity) = 0 and global.enemies_left=0
{ global.game_state=1; sarcasm_alpha+=0.02; } 




