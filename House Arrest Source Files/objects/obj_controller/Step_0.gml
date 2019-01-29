/// @description  Check if any keys are being pressed
// Start transition ----- TRIGGER
if (keyboard_check_pressed(vk_space)) {
    if (room == rm_1) { next_room = rm_2; }
    else { next_room = rm_1; }
    room_goto_transition(next_room, kind, time);
}

if (keyboard_check_pressed(ord("F"))) {
    var test = window_get_fullscreen();
    if (test) { window_set_fullscreen(false); }
    else { window_set_fullscreen(true); }
}

// Change transition up
if (keyboard_check_pressed(vk_left)) {
    if (number > 0) { number--; } else { number = lastNumber; }
    kind = number;
    
    event_perform(ev_other, ev_user0);
}

// Change transition down
if (keyboard_check_pressed(vk_right)) {
    if (number < lastNumber) { number++; } else { number = 0; }
    kind = number;
    
    event_perform(ev_other, ev_user0);
}

// Speed up
if (keyboard_check_pressed(vk_up)) { if (time < 150) then time += 5; }

// Speed down
if (keyboard_check_pressed(vk_down)) { if (time > 0) then time -= 5; }

