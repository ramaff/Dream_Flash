// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Stat_Field_Check(){
	var field = global.floor[global.currentroom,0];
	
	if field = "Normal" || field = "Boss" {
		if global.souldespair >= global.desFieldSpawn {
			global.desFieldSpawn += 10;
			global.floor[global.currentroom,0] = "Despair Field";
			scr_Stat_Up_Indication(12, true);
		} else if global.soulparanoia >= global.parFieldSpawn {
			global.parFieldSpawn += 10;
			global.floor[global.currentroom,0] = "Paranoia Field";
			scr_Stat_Up_Indication(11, true);
		} else if global.soulloathing >= global.loaFieldSpawn {
			global.loaFieldSpawn += 10;
			global.floor[global.currentroom,0] = "Loathing Field";
			scr_Stat_Up_Indication(10, true);
		} else if global.soulvanity >= global.assFieldSpawn {
			global.assFieldSpawn += 10;
			global.floor[global.currentroom,0] = "Assurance Field";
			scr_Stat_Up_Indication(9, true);
		} else if global.soulbliss >= global.blsFieldSpawn {
			global.blsFieldSpawn += 10;
			global.floor[global.currentroom,0] = "Bliss Field";
			scr_Stat_Up_Indication(8, true);
		} else if global.soulhope >= global.hopFieldSpawn {
			global.hopFieldSpawn += 10;
			global.floor[global.currentroom,0] = "Hope Field";
			scr_Stat_Up_Indication(7, true);
		} else if global.soulstrength >= global.strFieldSpawn {
			global.strFieldSpawn += 8;
			global.floor[global.currentroom,0] = "Strength Field";
			scr_Stat_Up_Indication(1, true);
		} else if global.soulvitality >= global.vitFieldSpawn {
			global.vitFieldSpawn += 8;
			global.floor[global.currentroom,0] = "Vitality Field";
			scr_Stat_Up_Indication(2, true);
		} else if global.soulessence >= global.essFieldSpawn {
			global.essFieldSpawn += 8;
			global.floor[global.currentroom,0] = "Essence Field";
			scr_Stat_Up_Indication(3, true);
		} else if global.souldexterity >= global.dexFieldSpawn {
			global.dexFieldSpawn += 8;
			global.floor[global.currentroom,0] = "Dexterity Field";
			scr_Stat_Up_Indication(4, true);
		} else if global.soulperception >= global.perFieldSpawn {
			global.perFieldSpawn += 8;
			global.floor[global.currentroom,0] = "Perception Field";
			scr_Stat_Up_Indication(5, true);
		} else if global.soulstate >= global.staFieldSpawn {
			global.staFieldSpawn += 8;
			global.floor[global.currentroom,0] = "State Field";
			scr_Stat_Up_Indication(6, true);
		} else if instance_number(obj_Item_Parent) = 0 {
			global.floor[global.currentroom,0] = "Normal";
		}
	}
	if instance_number(obj_Item_Parent) = 0 and field != "Normal" and field != "Boss" and instance_number(obj_Potential_For_Anything) = 0 {
		global.floor[global.currentroom,0] = "Normal";
	}
}