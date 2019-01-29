/// @description  Draw Transitions
// Temporary variables to have access to GUI Width and Height
var gui_width, gui_height, x1, y1, x2, y2;
gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

// Choose what to draw depending on which "kind" it is
switch (kind) {
    case transition.fade:
        // Change room for Fade transition
        if (step == ceil(time/2)) { event_perform(ev_other, ev_user0); }
        
        // Positioning for the rectangle
        var ww, hh;
        x = __view_get( e__VW.XPort, 0 );
        y = __view_get( e__VW.YPort, 0 );
        gui_width = x + __view_get( e__VW.WPort, 0 );
        gui_height = y + __view_get( e__VW.HPort, 0 );
            
        // Color can be changed if wanted.
        draw_set_color(c_black);
        draw_set_alpha(1 - abs(step - (time/2)) / (time/2));
        draw_rectangle(x, y, gui_width, gui_height, false);
        draw_set_alpha(1);
    break;
    // Slide left
    case transition.left: 
        x1 = (1-step/time) * gui_width; y1 = 0; 
        x2 = (-step/time) * gui_width; y2 = 0;
    break;
    // Slide right
    case transition.right: 
        x1 = (-1+step/time) * gui_width; y1 = 0;
        x2 = (step/time) * gui_width; y2 = 0;
    break;
    // Slide up
    case transition.up: 
        x1 = 0; y1 = (1-step/time) * gui_height;
        x2 = 0; y2 = (-step/time) * gui_height;
    break;
    // Slide down
    case transition.down:
        x1 = 0; y1 = (-1+step/time) * gui_height;
        x2 = 0; y2 = (step/time) * gui_height;
    break;
    // Horizontal Stripes
    case transition.stripe_hor:
        // Sets the color. Can be changed
        draw_set_color(c_black);
        
        // Draws the stripes according to the already defined array variables
        for (var i = stripes; i > 0; i--) {
            draw_rectangle(stripe_one[i], length[i], stripe_one[i] + width, length[i] - height, false);
            draw_rectangle(stripe_two[i], length[i], stripe_two[i] - width, length[i] - height, false);
        }
    break;
    // Vertical Stripes
    case transition.stripe_ver:
        // Sets the color. Can be changed
        draw_set_color(c_black);
    
        // Draws the stripes according to the already defined array variables
        for (var i = stripes; i > 0; i--) {
            draw_rectangle(length[i], stripe_one[i], length[i] - height, stripe_one[i] + width, false);
            draw_rectangle(length[i], stripe_two[i], length[i] - height, stripe_two[i] - width, false);
        }
    break;
    case transition.circle: 
        // Color can be changed to fit your style
        draw_set_color(c_black);
        
        // Only fade out when the circle has expanded
        if (!circle_expand) { draw_set_alpha(1 - abs(step - (time/2)) / (time/2)); }
        draw_circle(gui_width / 2, gui_height / 2, circle_radius, false);
        draw_set_alpha(1);
    break;
}
   
// Drawing the surfaces for the left/right/up/down transitions.
if (kind == transition.left || kind == transition.right || kind == transition.up || kind == transition.down) {
    if (room != next_room) { room_goto(next_room); }
        
    draw_surface_stretched_ext(surf_end, x1, y1, gui_width, gui_height, c_white, 1);
    draw_surface_stretched_ext(surf_start, x2, y2, gui_width, gui_height, c_white, 1);
}

