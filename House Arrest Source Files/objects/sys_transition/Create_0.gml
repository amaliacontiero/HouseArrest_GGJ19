/// @description  Initialize Variables
// Transition Variables
next_room = noone;                      // Which room to go to
kind = transition.fade;                 // Which transition to use
xx = -1;                                // The players new X position (optional)
yy = -1;                                // The players new Y position (optional)
step = 0;                               // Current step of transition
time = 60;                              // Time the transition uses (optional)

// Fade Variables
alpha = 0;
fade = 1;

/// Slide Effect Transition
// Surfaces
surf_start = surface_create(surface_get_width(application_surface),surface_get_height(application_surface));
surf_end = surface_create(surface_get_width(application_surface),surface_get_height(application_surface));
    
surface_set_target(surf_start);
draw_clear(c_black);                                // Draw blank on surface
draw_enable_alphablend(false);                      // Removes alpha values, as image is opaque
draw_set_colour_write_enable(true,true,true,false); // Same as above
draw_surface(application_surface,0,0);              // Draws the first room onto surf_start
draw_set_colour_write_enable(true,true,true,true);  // Re-enable alpha
draw_enable_alphablend(true);                       // Same as above
surface_reset_target();                             // Reset the surface to application_surface

/// Stripe Effect Transition
stripes = 100;                              // Total amount of stripes
anim = false;                               // Used to change the time if needed
change = false;                             // True when half time has passed
height = __view_get( e__VW.HPort, 0 ) / stripes;           // Height of each stripe
width = __view_get( e__VW.WPort, 0 ) + (__view_get( e__VW.WPort, 0 ) / 5);// The width of each stripe
timer = -width;                             // Timer will work as the slowest stripe

// Define all necessary arrays
stripe_one[stripes] = 0;                    // X position for stripe on left side
stripe_two[stripes] = 0;                    // X position for stripe on right side
length[stripes] = 0;                        // Y position for each stripe
stripe_spd[stripes] = 0;                    // Random speed for each stripe

// Alarm is used to change the time to the new one and start transition
alarm[0] = 1;

/// Expanding Circle Transition
circle_radius = 0.01;      // Circle Radius
circle_expand = true;      // Circle Expansion

