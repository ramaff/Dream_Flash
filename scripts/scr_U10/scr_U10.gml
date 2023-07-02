// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// Weapon Use


function scr_U10(){
	
   if global.U[10] > 0 {
	
		var room_center = room_width / 2;
		var effect_diameter = global.roomSizeX + 256;
	
		while (global.U10count >= 3) and global.currentweapon < 700 and global.currentweapon > 0 {
			Shot_XX = room_center - (effect_diameter / 2) + random(effect_diameter) - x;
		    Shot_YY = room_center - (effect_diameter / 2) + random(effect_diameter) - y;
		
			scr_Shot_Creation();
		
			global.U10count -= 4;
		}
		global.U10count += global.U[10];
   }
}