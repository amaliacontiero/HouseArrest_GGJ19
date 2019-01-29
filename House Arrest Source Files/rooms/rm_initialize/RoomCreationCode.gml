/*************************************************************
**                                                          **
**    The enumarator (transition) is important for the      **
**    transitions to work. Remember to add it to your       **
**    own project in an initialize object or room.          **
**                                                          **
**************************************************************/
enum transition {
    fade,
    right,
    up,
    left,
    down,
    stripe_hor,
    stripe_ver,
    circle
}

room_goto_next();