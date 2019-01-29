/// @description  Stripe Effect - Finish array and start animation
switch (kind) {
    case transition.stripe_hor:
        // Get easy references for all port sizes
        x = __view_get( e__VW.XPort, 0 );
        y = __view_get( e__VW.YPort, 0 );
        var stripe_w = __view_get( e__VW.WPort, 0 );
        var stripe_h = __view_get( e__VW.HPort, 0 );
    
        for (var i = stripes; i > 0; i--) {
            stripe_one[i] = x - width;
            stripe_two[i] = (x + stripe_w) + width;
            length[i] = i * (stripe_h / stripes);
            stripe_spd[i] = random_range(width / time, width / time + (time / 8));
        }
    break;
    case transition.stripe_ver:
        x = __view_get( e__VW.XPort, 0 );
        y = __view_get( e__VW.YPort, 0 );
        var stripe_w = __view_get( e__VW.WPort, 0 );
        var stripe_h = __view_get( e__VW.HPort, 0 );
    
        width = stripe_h + (stripe_h / 5);
        height = stripe_w / stripes;
        timer = y - width;
       
        for (var i = stripes; i > 0; i--) {
            stripe_one[i] = y - width;
            stripe_two[i] = (y + stripe_h) + width;
            length[i] = i * (stripe_w / stripes);
            stripe_spd[i] = random_range(width / time, width / time + (time / 8));
        }
    break;
}

// Animation starts after this is true
anim = true;

