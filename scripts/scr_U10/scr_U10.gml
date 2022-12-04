// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// Weapon Use


function scr_U10(){
	while (global.U[10] > 0 and global.U10count >= 3) and global.currentweapon < 700 and global.currentweapon > 0 {
		Shot_XX = (room_width / 2 ) - (global.roomSizeX / 2) + random(global.roomSizeX) - x;
	    Shot_YY = (room_height / 2 ) - (global.roomSizeY / 2) + random(global.roomSizeY) - y;
		
		scr_Shot_Creation();
		
		global.U10count -= 4;
	}
	if global.U[10] > 0 {
		global.U10count += global.U[10];	
	}
}