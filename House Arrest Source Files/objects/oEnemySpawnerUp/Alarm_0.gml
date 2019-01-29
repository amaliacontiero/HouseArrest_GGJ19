if oPlayer.y<room_height/2 and global.enemies_left>0 and global.game_state!=-5
{
global.enemies_left-=1;
instance_create(x,y,choose(oEnemyPlayerSleep,oEnemyPlayerHunger,oEnemyPlayerFilth,oEnemyPlayerBored));
}
alarm[0]=60*random_range(2,5);