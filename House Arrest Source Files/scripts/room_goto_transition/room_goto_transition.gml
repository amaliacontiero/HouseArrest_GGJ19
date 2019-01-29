/// @description room_goto_transition(room, transition, [steps]);
/// @param room
/// @param  transition
/// @param  [steps]

/*************************************************************
**                                                          **
**      next_room and kind will have to be changed in       **
**      obj_teleport's Creation Code. Time can also be      **
**      altered, if wanting the transition to be            **
**      faster or slower.                                   **
**                                                          **
*************************************************************/

if (!instance_exists(sys_transition)) {
    with (instance_create(0, 0, sys_transition)) {
        next_room = argument[0]; //The room we want to go to.
        kind = argument[1]; //The transition kind we want to use.
        
        if (argument_count >= 3 && argument[2] > 0) {
            time = argument[2]; //The amount of steps our transition will transpire (default is 30).
        }
    }
}