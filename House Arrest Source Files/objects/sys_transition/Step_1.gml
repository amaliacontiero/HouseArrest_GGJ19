/// @description  Timer increase
// Make sure that stripe_hor and stripe_ver finish their animation properly
if (kind != transition.stripe_hor && kind != transition.stripe_ver) {
    step++;
    
    if (step > time) { instance_destroy(); }
}

/// Slide Effect Destroy
// If any of the surfaces don't exists, jump to the next room
if (kind == transition.left || kind == transition.right || kind == transition.up || kind == transition.down) {
    if (!surface_exists(surf_start) || !surface_exists(surf_end)) {
        if (room != next_room) { room_goto(next_room); }
        instance_destroy();
    }
}

/// Stripe Effect - Move the stripes
if (kind == transition.stripe_hor || kind == transition.stripe_ver) {
    if (anim) {
        // Moves each stripe with their individual speed. Same speed for left and right stripe
        for (var i = stripes; i > 0; i--) {  
            stripe_one[i] += stripe_spd[i];
            stripe_two[i] -= stripe_spd[i];
        }
    
        // Increase timer
        timer += width / time;
        
        // Check if the transition is halfways done
        if (timer + width > __view_get( e__VW.WPort, 0 ) / 2 && !change) { 
            room_goto(next_room);
            change = true;
        }
        
        // Destroy instance if transition is done
        if (timer > __view_get( e__VW.WPort, 0 )) { instance_destroy(); }
    }
}

/// Expanding Circle
if (kind == transition.circle) {
    var ww = display_get_gui_width() + (display_get_gui_width() / 6);

    if (circle_expand) { circle_radius += (ww / (time/2)); }
    if (circle_radius >= ww && circle_expand) { circle_expand = false; room_goto(next_room); }
}

