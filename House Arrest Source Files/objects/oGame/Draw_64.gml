var vw = 2112;
var vh = 1188;



if global.game_state=1
{  
	
draw_set_font(font01);draw_set_halign(fa_center);draw_set_valign(fa_middle);
draw_text(vw/2,(vh/5)*2,"Congratulations")	
draw_set_alpha(sarcasm_alpha)
draw_text(vw/2,(vh/5)*3,"You never left the house")
draw_set_alpha(1);
}

if global.game_state=-1
{  
	
draw_set_font(font01);draw_set_halign(fa_center);draw_set_valign(fa_middle);
draw_text(vw/2,(vh/5)*2,"You Died")	
draw_set_alpha(sarcasm_alpha)
draw_text(vw/2,(vh/5)*3,"It was inevitable")
draw_set_alpha(1);
}

//Player Data
with oPlayer
{
var vw = 2112;
var vh = 1188;
	
if sleepiness <=30 { draw_sprite(sprRedGlow,0,100,50) }
draw_sprite(sprIcons,0,100,50)
draw_healthbar(100,30,(vw/4)-50,70,sleepiness,c_black,c_red,c_blue,0,true,true);

if hunger <=30 { draw_sprite(sprRedGlow,0,(vw/4)+100,50) }
draw_sprite(sprIcons,1,(vw/4)+100,50)
draw_healthbar((vw/4)+100,30,(vw/4)*2-50,70,hunger,c_black,c_red,c_maroon,0,true,true);

if filth <=30 { draw_sprite(sprRedGlow,0,(vw/4)*2+100,50) }
draw_sprite(sprIcons,2,(vw/4)*2+100,50)
draw_healthbar((vw/4)*2+100,30,(vw/4)*3-50,70,filth,c_black,c_red,c_green,0,true,true);

if boredom <=30 { draw_sprite(sprRedGlow,0,(vw/4)*3+100,50) }
draw_sprite(sprIcons,3,(vw/4)*3+100,50)
draw_healthbar((vw/4)*3+100,30,(vw/4)*4-50,70,boredom,c_black,c_red,c_gray,0,true,true);

draw_set_font(font0);draw_set_halign(fa_left);
draw_text(20,100,"Enemies left "+string(global.enemies_left))
}

if global.game_state=-5
{  draw_sprite(sTitleScreen,0,0,0); }