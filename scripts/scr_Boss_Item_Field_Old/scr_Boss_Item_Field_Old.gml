// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Boss_Item_Field_Old(roomType){
	fieldSpawn = 1;
	var strChoose = 0;
	var vitChoose = 0;
	var essChoose = 0;
	var dexChoose = 0;
	var perChoose = 0;
	var staChoose = 0;
		
	var highestStat = scr_Highest_Stat_Calc();
		
	var chooseVal1 = choose(1,2,3,4,5);
	var chooseVal2 = chooseVal1;
	while(chooseVal2 = chooseVal1) {
		chooseVal2 = choose(1,2,3,4,5);
	}
		
	if global.soultransformedstate != "None" {
		var chooseVal1 = choose(1,2,3,4,5,6);
		var chooseVal2 = chooseVal1;
		while(chooseVal2 = chooseVal1) {
			chooseVal2 = choose(1,2,3,4,5,6);
		}	
	}
		
	var down1 = 1;
	var down2 = 2;
		
	if global.currentchapter = 3 and global.currentroom > 20 {
		down1 = 0.25;
		down2 = 0.5;
	}
		
	if roomType == "Super Boss" {
		chooseVal1 = 0;
		chooseVal2 = 0;
	}
		
	if chooseVal1 = 1 {
		global.strFieldSpawn -= down1;
		if highestStat = "str" {
			global.strFieldSpawn -= down1 * 0.4;
		}
	}
	if chooseVal1 = 2 {
		global.vitFieldSpawn -= down1;
		if highestStat = "vit" {
			global.vitFieldSpawn -= down1 * 0.4;
		}
	}
	if chooseVal1 = 3 {
		global.essFieldSpawn -= down1;
		if highestStat = "ess" {
			global.essFieldSpawn -= down1 * 0.4;
		}
	}
	if chooseVal1 = 4 {
		global.dexFieldSpawn -= down1;
		if highestStat = "dex" {
			global.dexFieldSpawn -= down1 * 0.4;
		}
	}
	if chooseVal1 = 5 {
		global.perFieldSpawn -= down1;
		if highestStat = "per" {
			global.perFieldSpawn -= down1 * 0.4;
		}
	}
	if chooseVal1 = 6 {
		global.staFieldSpawn -= down1;
		if highestStat = "sta" {
			global.staFieldSpawn -= down1 * 0.4;
		}
	}
		
	if chooseVal2 = 1 {
		global.strFieldSpawn -= down2;
		if highestStat = "str" {
			global.strFieldSpawn -= down2 * 0.4;
		}
	}
	if chooseVal2 = 2 {
		global.vitFieldSpawn -= down2;
		if highestStat = "vit" {
			global.vitFieldSpawn -= down2 * 0.4;
		}
	}
	if chooseVal2 = 3 {
		global.essFieldSpawn -= down2;
		if highestStat = "ess" {
			global.essFieldSpawn -= down2 * 0.4;
		}
	}
	if chooseVal2 = 4 {
		global.dexFieldSpawn -= down2;
		if highestStat = "dex" {
			global.dexFieldSpawn -= down2 * 0.4;
		}
	}
	if chooseVal2 = 5 {
		global.perFieldSpawn -= down2;
		if highestStat = "per" {
			global.perFieldSpawn -= down2 * 0.4;
		}
	}
	if chooseVal2 = 6 {
		global.staFieldSpawn -= down2;
		if highestStat = "sta" {
			global.staFieldSpawn -= down2 * 0.4;
		}
	}
		
		if global.strFieldSpawn <= 0 {
			global.strFieldSpawn +=	16;
			strChoose = 1;
		}
		
		if global.vitFieldSpawn <= 0 {
			global.vitFieldSpawn +=	16;
			vitChoose = 1;
		}
		
		if global.essFieldSpawn <= 0 {
			global.essFieldSpawn +=	16;
			essChoose = 1;
		}
		
		if global.dexFieldSpawn <= 0 {
			global.dexFieldSpawn +=	16;
			dexChoose = 1;
		}
		
		if global.perFieldSpawn <= 0 {
			global.perFieldSpawn +=	16;
			perChoose = 1;
		}
		
		if global.staFieldSpawn <= 0 {
			global.staFieldSpawn +=	16;
			staChoose = 1;
		}
		
	if strChoose = 1 and (vitChoose = 1 || essChoose = 1 || dexChoose = 1 || perChoose = 1 || staChoose = 1) {
		if global.strFieldSpawn <= global.vitFieldSpawn and global.strFieldSpawn <= global.essFieldSpawn and global.strFieldSpawn <= global.dexFieldSpawn and global.strFieldSpawn <= global.perFieldSpawn {
			vitChoose = 0;
			essChoose = 0;
			dexChoose = 0;
			perChoose = 0;
			staChoose = 0;
		}
	}
	if vitChoose = 1 and (strChoose = 1 || essChoose = 1 || dexChoose = 1 || perChoose = 1 || staChoose = 1) {
		if global.vitFieldSpawn <= global.strFieldSpawn and global.vitFieldSpawn <= global.essFieldSpawn and global.vitFieldSpawn <= global.dexFieldSpawn and global.vitFieldSpawn <= global.perFieldSpawn {
			strChoose = 0;
			essChoose = 0;
			dexChoose = 0;
			perChoose = 0;
			staChoose = 0;
		}
	}
	if essChoose = 1 and (strChoose = 1 || vitChoose = 1 || dexChoose = 1 || perChoose = 1 || staChoose = 1) {
		if global.essFieldSpawn <= global.strFieldSpawn and global.essFieldSpawn <= global.vitFieldSpawn and global.essFieldSpawn <= global.dexFieldSpawn and global.essFieldSpawn <= global.perFieldSpawn {
			strChoose = 0;
			vitChoose = 0;
			dexChoose = 0;
			perChoose = 0;
			staChoose = 0;
		}
	}
	if dexChoose = 1 and (strChoose = 1 || vitChoose = 1 || essChoose = 1 || perChoose = 1 || staChoose = 1) {
		if global.dexFieldSpawn <= global.strFieldSpawn and global.dexFieldSpawn <= global.vitFieldSpawn and global.dexFieldSpawn <= global.essFieldSpawn and global.dexFieldSpawn <= global.perFieldSpawn {
			strChoose = 0;
			vitChoose = 0;
			essChoose = 0;
			perChoose = 0;
			staChoose = 0;
		}
	}
	if perChoose = 1 and (strChoose = 1 || vitChoose = 1 || essChoose = 1 || dexChoose = 1 || staChoose = 1) {
		if global.perFieldSpawn <= global.strFieldSpawn and global.perFieldSpawn <= global.vitFieldSpawn and global.perFieldSpawn <= global.essFieldSpawn and global.perFieldSpawn <= global.dexFieldSpawn {
			strChoose = 0;
			vitChoose = 0;
			essChoose = 0;
			dexChoose = 0;
			staChoose = 0;
		}
	}
	if staChoose = 1 and (strChoose = 1 || vitChoose = 1 || essChoose = 1 || dexChoose = 1 || perChoose = 1) {
		if global.perFieldSpawn <= global.strFieldSpawn and global.perFieldSpawn <= global.vitFieldSpawn and global.perFieldSpawn <= global.essFieldSpawn and global.perFieldSpawn <= global.dexFieldSpawn {
			strChoose = 0;
			vitChoose = 0;
			essChoose = 0;
			dexChoose = 0;
			perChoose = 0;
		}
	}
		
		if strChoose = 1 {
		    Floor_Layout_Control.Flash[global.currentroom,0] = "Strength Field"
		} else if vitChoose = 1 {
		    Floor_Layout_Control.Flash[global.currentroom,0] = "Vitality Field"
		} else if essChoose = 1 {
		    Floor_Layout_Control.Flash[global.currentroom,0] = "Essence Field"
		} else if dexChoose = 1 {
		    Floor_Layout_Control.Flash[global.currentroom,0] = "Dexterity Field"
		} else if perChoose = 1 {
		    Floor_Layout_Control.Flash[global.currentroom,0] = "Perception Field"
		} else if staChoose = 1 {
		    Floor_Layout_Control.Flash[global.currentroom,0] = "State Field"
		} else {
		    Floor_Layout_Control.Flash[global.currentroom,0] = "Normal"
		}
        
	if Floor_Layout_Control.Flash[global.currentroom,0] = "Normal" {
	    //instance_create(x,y,Normal_Room_Start_Control)
	} else {
	    global.orbit[0] = 0;
	    global.orbit[1] = 0;
	    global.orbit[2] = 0;
	    global.orbit[3] = 0;
	    global.orbit[999] = -1000;
            
	    for(j = 1; j <= 13; j++) {
	        Floor_Layout_Control.Flash[global.currentroom,6 + j] = "00"; 
	    }
        
	    itemNumChoice = 2 + floor((global.soulhope + random(100 + global.soulhope * 3)) / 100);
	    itemNumPick = 1;
		var class = Floor_Layout_Control.Flash[global.currentroom,0];
	    for(j = 1; j <= itemNumChoice; j++) {
			i = global.currentroom;
	        Floor_Layout_Control.Flash[global.currentroom,6+j] = scr_Class_Item_Choose(class,0);
	    }
	    Floor_Layout_Control.Flash[global.currentroom,19] = scr_Stat_Up_Choose(class);
	    field = Floor_Layout_Control.Flash[global.currentroom,0];
	    for(i = 1; i <= 13; i++) {
	        item[i] = Floor_Layout_Control.Flash[global.currentroom,6+i];
	    }
            
	    scr_Item_Spawn(field, item[1], item[2], item[3], item[4], item[5], item[6], item[7], item[8], item[9], item[10], item[11], item[12], item[13]);

	}
}