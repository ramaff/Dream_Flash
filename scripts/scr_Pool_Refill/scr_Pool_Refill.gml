// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Pool_Refill(pool){
	var i = 0;
	var letter = "A"
	var totalitems = 1;
	var minitems = 1;
	
	if pool = global.AItemPool {
		letter = "A"
		totalitems = 14;
	}
	if pool = global.BItemPool {
		letter = "B"
		totalitems = 14;
	}
	if pool = global.CItemPool {
		letter = "C"
		totalitems = 14;
	}
	if pool = global.DItemPool {
		letter = "D"
		totalitems = 14;
	}
	if pool = global.EItemPool {
		letter = "E"
		totalitems = 14;
	}
	if pool = global.FItemPool {
		letter = "F"
		totalitems = 10;
	}
	if pool = global.GItemPool {
		letter = "G"
		totalitems = 6;
	}
	if pool = global.HItemPool {
		letter = "H"
		totalitems = 17;
	}
	if pool = global.IItemPool {
		letter = "I"
		totalitems = 30;
		if instance_exists(obj_Soul_Parent) {
			if global.soultransformedstate != "None" {
				totalitems = 36;	
			}
		}
	}
	if pool = global.JItemPool {
		letter = "J"
		totalitems = 6;
	}
	if pool = global.KItemPool {
		letter = "K"
		totalitems = 8;
		minitems = 3;
	}
	if pool = global.LItemPool {
		letter = "L"
		totalitems = 5;
	}
	if pool = global.MItemPool {
		letter = "M"
		totalitems = 25;
	}
	if pool = global.NItemPool {
		letter = "N"
		totalitems = 4;
	}
	if pool = global.OAItemPool {
		letter = "OA"
		totalitems = 6;
	}
	if pool = global.OBItemPool {
		letter = "OB"
		totalitems = 6;
	}
	if pool = global.OCItemPool {
		letter = "OC"
		totalitems = 6;
	}
	if pool = global.PItemPool {
		letter = "P"
		totalitems = 7;
	}
	if pool = global.RItemPool {
		letter = "R"
		totalitems = 6;
	}
	if pool = global.SItemPool {
		letter = "S"
		totalitems = 3;
	}
	if pool = global.TItemPool {
		letter = "T"
		totalitems = 3;
	}
	if pool = global.UItemPool {
		letter = "U"
		totalitems = 10;
	}
	if pool = global.VItemPool {
		letter = "V"
		totalitems = 8;
	}
	if pool = global.WItemPool {
		letter = "W"
		totalitems = 5;
	}
	if pool = global.XAItemPool {
		letter = "XA"
		totalitems = 6;
	}
	if pool = global.XBItemPool {
		letter = "XB"
		totalitems = 6;
	}
	if pool = global.XCItemPool {
		letter = "XC"
		totalitems = 6;
	}
	
	if pool == global.simpleWeaponPool || pool == global.complexWeaponPool || pool == global.masterfulWeaponPool {
		letter = "Weapon"	
	}


	if letter != "Weapon" {
		for(i = totalitems; i >= minitems; i--) {
			//var index = 0;
			if i > 9 {
				ds_list_add(pool, letter + string(i));
				//var index = letter + string(i)
				//pool[i] = letter + string(i);
			} else {
				ds_list_add(pool, letter + "0" + string(i));
				// index = letter + "0" + string(i);
				//pool[i] = letter + "0" + string(i);
			}
			//pool[index] = index;
			//variable_struct_set(pool, index, index)
		}
	} else {
		var weaponList = [];
		if pool = global.simpleWeaponPool {
			weaponList = [1,2,3,4,5,6,7,10,12,51,101,102,103,104,105,110,151,152,201,202,203,210,301,302,303,309,401,402,403,409,414,501,502,601,602,603]
		}
		if pool = global.complexWeaponPool {
			weaponList = [8,9,11,12,15,16,52,54,107,108,109,111,112,114,115,116,204,205,207,209,211,212,213,304,306,307,308,310,311,312,313,314,404,405,406,407,408,410,411,503,504,505,604,605]
		}
		if pool = global.masterfulWeaponPool {
			weaponList = [13,14,53,113,153,206,412,413]
		}
		for(i = array_length(weaponList) - 1; i >= 0; i--) {
			ds_list_add(pool, weaponList[i]);
			//pool[weaponList[i]] = weaponList[i];
			//variable_struct_set(pool, weaponList[i], weaponList[i])
			//pool[i] = weaponList[i]
		}
	}
	
	ds_list_delete(global.PItemPool, ds_list_find_index(global.PItemPool, "P08"));
	ds_list_delete(global.VItemPool, ds_list_find_index(global.VItemPool, "V05"));
	
	//variable_struct_remove(global.PItemPool, "P08")
	//variable_struct_remove(global.VItemPool, "V05")
	
	/*if pool = global.PItemPool {
		array_delete(global.PItemPool, 7, 1)
	}
	if pool = global.VItemPool {
		array_delete(global.VItemPool, 4, 1)
	} */
	
	if letter = "I" {
		repeat(6) {
			ds_list_add(global.IItemPool, "A00");
			ds_list_add(global.IItemPool, "B00");
			ds_list_add(global.IItemPool, "C00");
			ds_list_add(global.IItemPool, "D00");
			ds_list_add(global.IItemPool, "E00");
			//pool[global.IItemPool] = "A00";
			//pool[global.IItemPool] = "B00";
			//pool[global.IItemPool] = "C00";
			//pool[global.IItemPool] = "D00";
			//pool[global.IItemPool] = "E00";
			//variable_struct_set(global.IItemPool, "A00", "A00")
			//variable_struct_set(global.IItemPool, "B00", "B00")
			//variable_struct_set(global.IItemPool, "C00", "C00")
			//variable_struct_set(global.IItemPool, "D00", "D00")
			//variable_struct_set(global.IItemPool, "E00", "E00")
			//array_push(global.IItemPool, "A00", "B00", "C00", "D00", "E00")
			if instance_exists(obj_Soul_Parent) {
				if global.soultransformedstate != "None" {
					ds_list_add(global.IItemPool, "F00");
					//pool[global.IItemPool] = "F00";
					//variable_struct_set(global.IItemPool, "F00", "F00")
					//array_push(global.IItemPool, "F00")
				}
			}
		}
	}
	
	//show_debug_message(pool)

}