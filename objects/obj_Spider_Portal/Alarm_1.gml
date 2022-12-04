/// @description Insert description here
// You can write your code in this editor
    minion_count = 1;
    minion_type = noone;
    minion_power = 10;
    minion_knockdefense = 0;
    minion_movespeed = 1;
    minion_attackspeed = 1;
    minion_accuracy = 0;    
    minion_defense = 0;
    minion_bulletspeed = bulletspeed;
    minion_knockbackforce = 0;
    minion_contactdamage = 7;
    
    bossattackspeedmax = 0;
    
    minion_count = 1;
    minion_type = obj_Phase_Spider;
    minion_health = 25;
    minion_maxhealth = minion_health;
	
	scr_Minion_Shot_Stats();
	
	champ = 0;
    
    scr_Minion_Spawn();

alarm[1] = 60;