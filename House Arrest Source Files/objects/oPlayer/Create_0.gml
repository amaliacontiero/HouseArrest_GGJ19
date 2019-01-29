/// @description  Variables

// Inherit oParEntity variables
event_inherited();

invincible=false;

facing = 1;

// Movement ///////////////////////////////////////////////////////////////////

groundAccel = 1.00;
groundFric  = 2.00;
airAccel    = 0.75;
airFric     = 0.01;
vxMax       = 15;
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

boredom=80;
filth=80;
sleepiness=80;
hunger=80;

combo_place=1;

health=100;

//fallTime = 0;
//fallMax  = 28;


