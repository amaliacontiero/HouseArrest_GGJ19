/// @description  Update surfaces for Slide transition
if (kind == transition.left || kind == transition.right || kind == transition.up || kind == transition.down) {
    surface_set_target(surf_end);
    draw_clear(c_black);
    draw_enable_alphablend(false);
    draw_set_colour_write_enable(true,true,true,false);
    draw_surface(application_surface,0,0);
    draw_set_colour_write_enable(true,true,true,true);
    draw_enable_alphablend(true);
    surface_reset_target();
}

