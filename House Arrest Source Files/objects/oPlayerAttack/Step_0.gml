


var inst = instance_place(x, y, oParEnemyEntity);

if up_attack and inst != noone
{audio_play_sound(sndPunch2,0,0);}
else
{audio_play_sound(sndPunch1,0,0);}

while inst != noone
	{
	inst.hp -= damage;
	inst.alarm[2]=60;
	if up_attack
	{
	inst.vx=+10*facing;
	inst.vy=-40;
	}
	else if inst.onGround=false
	{
	inst.vx=+20*facing; inst.vy=-20; oPlayer.vy=-20;
	}
	else
	{	
	inst.vx=+15*facing;
	inst.vy=-10;
	}
   instance_deactivate_object(inst);
   var inst = instance_place(x, y, oParEnemyEntity);
   
   
   }
instance_activate_object(oParEnemyEntity);

instance_destroy();