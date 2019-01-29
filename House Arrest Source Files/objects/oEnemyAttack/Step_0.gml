var inst = instance_place(x, y, oPlayer);
while inst != noone
   {
	if inst.state != inst.ROLL and inst.invincible=false
	{
	inst.boredom-=boredom_damage;
	inst.filth-=filth_damage;
	inst.sleepiness-=sleep_damage;
	inst.hunger-=hunger_damage;
	
	audio_play_sound(sndDamaged,0,0);
	
	inst.vx=+15*facing;
	inst.vy=-10;
	}
   instance_deactivate_object(inst);
   var inst = instance_place(x, y, oPlayer);
   }
instance_activate_object(oPlayer);

instance_destroy();