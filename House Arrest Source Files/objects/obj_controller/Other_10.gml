/// @description  Define which transition is currently being used
switch (kind) {
    case transition.fade: s_transition = "Fade"; break;
    case transition.right: s_transition = "Slide Right"; break;
    case transition.up: s_transition = "Slide Up"; break;
    case transition.left: s_transition = "Slide Left"; break;
    case transition.down: s_transition = "Slide Down"; break;
    case transition.stripe_hor: s_transition = "Horizontal Stripes"; break;
    case transition.stripe_ver: s_transition = "Vertical Stripes"; break;
    case transition.circle: s_transition = "Expanding Circle"; break;
}

