// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Heart_Item_Pickup_Setup(heart_number = 1, heartHealth = 20) {
	
	Soul_Hearts_Control.heart[global.currentheart + 1, 2] = heart_number
	
	heartHealth = ((heartHealth * ((10 + obj_Soul_Parent.shpfactor) / 10)) + obj_Soul_Parent.shpadd + ((global.soulvitality + global.soulvitalityTemp) / 4));
	global.soulhealth = heartHealth;
	global.soulhealthmax = heartHealth;
	obj_Soul_Parent.shealth = heartHealth;
	obj_Soul_Parent.shealthmax = heartHealth;
	Soul_Hearts_Control.heart[global.currentheart + 1, 3] = heartHealth;
	Soul_Hearts_Control.heart[global.currentheart + 1, 4] = heartHealth;
	
	global.totalhearts++;

}