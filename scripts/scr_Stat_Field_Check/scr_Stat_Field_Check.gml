// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Stat_Field_Check(){
	var field = Floor_Layout_Control.Flash[global.currentroom,0];
	
	if field = "Normal" || field = "Boss" {
		if global.souldespair >= global.desFieldSpawn {
			global.desFieldSpawn += 10;
			Floor_Layout_Control.Flash[global.currentroom,0] = "Despair Field";
		} else if global.soulparanoia >= global.parFieldSpawn {
			global.parFieldSpawn += 10;
			Floor_Layout_Control.Flash[global.currentroom,0] = "Paranoia Field";
		} else if global.soulloathing >= global.loaFieldSpawn {
			global.loaFieldSpawn += 10;
			Floor_Layout_Control.Flash[global.currentroom,0] = "Loathing Field";
		} else if global.soulvanity >= global.assFieldSpawn {
			global.assFieldSpawn += 10;
			Floor_Layout_Control.Flash[global.currentroom,0] = "Assurance Field";
		} else if global.soulbliss >= global.blsFieldSpawn {
			global.blsFieldSpawn += 10;
			Floor_Layout_Control.Flash[global.currentroom,0] = "Bliss Field";
		} else if global.soulhope >= global.hopFieldSpawn {
			global.hopFieldSpawn += 10;
			Floor_Layout_Control.Flash[global.currentroom,0] = "Hope Field";
		} else if global.soulstrength >= global.strFieldSpawn {
			global.strFieldSpawn += 8;
			Floor_Layout_Control.Flash[global.currentroom,0] = "Strength Field";
		} else if global.soulvitality >= global.vitFieldSpawn {
			global.vitFieldSpawn += 8;
			Floor_Layout_Control.Flash[global.currentroom,0] = "Vitality Field";
		} else if global.soulessence >= global.essFieldSpawn {
			global.essFieldSpawn += 8;
			Floor_Layout_Control.Flash[global.currentroom,0] = "Essence Field";
		} else if global.souldexterity >= global.dexFieldSpawn {
			global.dexFieldSpawn += 8;
			Floor_Layout_Control.Flash[global.currentroom,0] = "Dexterity Field";
		} else if global.soulperception >= global.perFieldSpawn {
			global.perFieldSpawn += 8;
			Floor_Layout_Control.Flash[global.currentroom,0] = "Perception Field";
		} else if global.soulstate >= global.staFieldSpawn {
			global.staFieldSpawn += 8;
			Floor_Layout_Control.Flash[global.currentroom,0] = "State Field";
		} else if instance_number(obj_Item_Parent) = 0 {
			Floor_Layout_Control.Flash[global.currentroom,0] = "Normal";
		}
	}
	if instance_number(obj_Item_Parent) = 0 and field != "Normal" and field != "Boss" and instance_number(obj_Potential_For_Anything) = 0 {
		Floor_Layout_Control.Flash[global.currentroom,0] = "Normal";
	}
}