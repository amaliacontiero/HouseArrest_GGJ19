/// @description  Variables

// Inherit oParEntity variables
event_inherited();
pl_distance=random_range(170,220)
facing = 1;
hp=10; 
// Movement ///////////////////////////////////////////////////////////////////

groundAccel = 0.75;
groundFric  = 0.5;
airAccel    = 0.75;
airFric     = 0.01;
vxMax       = 3;
vyMax       = 30;
jumpHeight  = 35;
gravNorm    = 1.5;
gravSlide   = 0.25; 

clingTime   = 2.0;

// Misc ///////////////////////////////////////////////////////////////////////

// States
IDLE     = 10;
RUN      = 11;
JUMP     = 12;
ROLL     = 13;

// Initialize properties
state  = IDLE;
facing = image_xscale; // Change xscale in editor to adjust initial facing

// For squash + stretch
xscale = 1;
yscale = 1;

///////////////////////////////////////////////////////////////////////////////

attacking = false;
blocking  = false;




//fallTime = 0;
//fallMax  = 28;


