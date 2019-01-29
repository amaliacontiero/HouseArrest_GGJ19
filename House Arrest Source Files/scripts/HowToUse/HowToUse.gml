/*

        To use, you'll have to add 'room_goto_transition()' to
        the trigger you're using. The trigger in this example
        can be found in 'obj_controller's STEP Event and
        it triggers when you press SPACEBAR.
        
        If you want your players' X and Y position to change,
        you have to uncomment the two last lines of code in 
        'sys_transition's USER Event 0 and change 'obj_player'
        to what your player object is called. Specifics on how
        to use and examples will be shown further down this page.
        
        ------ SPECIFICS FOR PLAYER POSITION CHANGE ------
        
        There is two ways to change the players position here:
        one happens the moment you run 'room_goto_transition',
        while the other one happens when the time is appropriate.
        All of the slide transition (Right, up, left, down) will
        need to change player position immediately to be seamless.
        To do that, just manually change player X and Y value after
        running the script. 
        
        The other transitions, for example Fade,
        will need to be run when the screen is completely covered
        so that the player doesn't randomly jump before the 
        transition happens. To do that, you need to change two of
        'sys_transition's variables; xx and yy. Those will then
        move the player when necessary.
        
        
        ************************ TL;DR ************************
        
        ------ EXAMPLE FOR RIGHT/UP/LEFT/DOWN TRANSITION: ------
        // When the trigger happens (Walk out of screen, into a door etc)
        room_goto_transition(rm_2, transition.left, 60);
        
        obj_player.x = 60;
        obj_player.y = 70;
        
        ------ EXAMPLE FOR EVERY OTHER TRANSITION ------
        // When the trigger happens (Walk out of screen, into a door etc)
        room_goto_transition(rm_2, transition.fade, 60);
        
        // Change player position when changing room
        sys_transition.xx = 60;
        sys_transition.yy = 70;

*/