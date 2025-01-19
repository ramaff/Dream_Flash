// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Pool_Refill(pool){
	var i = 0;
	var letter = "A"
	var totalitems = 1;
	var minitems = 1;
	
	if pool = global.a_item_pool {
		letter = "A"
		totalitems = 14;
	}
	if pool = global.b_item_pool {
		letter = "B"
		totalitems = 14;
	}
	if pool = global.c_item_pool {
		letter = "C"
		totalitems = 14;
	}
	if pool = global.d_item_pool {
		letter = "D"
		totalitems = 14;
	}
	if pool = global.e_item_pool {
		letter = "E"
		totalitems = 14;
	}
	if pool = global.f_item_pool {
		letter = "F"
		totalitems = 10;
	}
	if pool = global.g_item_pool {
		letter = "G"
		totalitems = 6;
	}
	if pool = global.h_item_pool {
		letter = "H"
		totalitems = 17;
	}
	if pool = global.i_item_pool {
		letter = "I"
		totalitems = 30;
		if instance_exists(obj_Soul_Parent) {
			if global.soultransformedstate != "None" {
				totalitems = 36;	
			}
		}
	}
	if pool = global.j_item_pool {
		letter = "J"
		totalitems = 8;
	}
	if pool = global.k_item_pool {
		letter = "K"
		totalitems = 8;
		minitems = 3;
	}
	if pool = global.l_item_pool {
		letter = "L"
		totalitems = 5;
	}
	if pool = global.m_item_pool {
		letter = "M"
		totalitems = 25;
	}
	if pool = global.n_item_pool {
		letter = "N"
		totalitems = 4;
	}
	if pool = global.oa_item_pool {
		letter = "OA"
		totalitems = 6;
	}
	if pool = global.ob_item_pool {
		letter = "OB"
		totalitems = 6;
	}
	if pool = global.oc_item_pool {
		letter = "OC"
		totalitems = 6;
	}
	if pool = global.p_item_pool {
		letter = "P"
		totalitems = 10;
	}
	if pool = global.q_item_pool {
		letter = "Q"
		totalitems = 5;
	}
	if pool = global.r_item_pool {
		letter = "R"
		totalitems = 6;
	}
	if pool = global.s_item_pool {
		letter = "S"
		totalitems = 6;
	}
	if pool = global.t_item_pool {
		letter = "T"
		totalitems = 4;
	}
	if pool = global.u_item_pool {
		letter = "U"
		totalitems = 9;
	}
	if pool = global.v_item_pool {
		letter = "V"
		totalitems = 9;
	}
	if pool = global.w_item_pool {
		letter = "W"
		totalitems = 5;
	}
	if pool = global.xa_item_pool {
		letter = "XA"
		totalitems = 6;
	}
	if pool = global.xb_item_pool {
		letter = "XB"
		totalitems = 6;
	}
	if pool = global.xc_item_pool {
		letter = "XC"
		totalitems = 6;
	}
	
	if pool == global.simpleWeaponPool || pool == global.complexWeaponPool || pool == global.masterfulWeaponPool {
		letter = "Weapon"	
	}


	if letter != "Weapon" {
		for(i = totalitems; i >= minitems; i--) {
			if i > 9 {
				ds_list_add(pool, letter + string(i));
			} else {
				ds_list_add(pool, letter + "0" + string(i));
			}
		}
	} else {
		var weaponList = [];
		if pool = global.simpleWeaponPool {
			weaponList = [1,2,3,4,5,6,7,10,11,12,51,101,102,103,107,110,151,152,201,202,203,210,301,302,303,309,401,402,406,409,414,501,502,601,603]
		}
		if pool = global.complexWeaponPool {
			weaponList = [8,9,15,16,52,54,104,105,108,109,111,112,114,116,204,205,207,209,211,212,213,304,306,307,308,310,311,313,314,403,405,407,408,410,411,503,504,505,604,605]
		}
		if pool = global.masterfulWeaponPool {
			weaponList = [13,14,53,113,115,153,206,312,404,412,413]
		}
		for(i = array_length(weaponList) - 1; i >= 0; i--) {
			ds_list_add(pool, weaponList[i]);
		}
	}
	

	if letter = "I" {
		repeat(6) {
			ds_list_add(global.i_item_pool, "A00");
			ds_list_add(global.i_item_pool, "B00");
			ds_list_add(global.i_item_pool, "C00");
			ds_list_add(global.i_item_pool, "D00");
			ds_list_add(global.i_item_pool, "E00");
			if instance_exists(obj_Soul_Parent) {
				if global.soultransformedstate != "None" {
					ds_list_add(global.i_item_pool, "F00");
				}
			}
		}
	}
	if letter = "J" {
		if !scr_State_Recollection_Unlocked() {
			ds_list_delete(global.j_item_pool, ds_list_find_index(global.j_item_pool, "J06"))
		}
	}
	if letter = "K" {
		if !scr_State_Recollection_Unlocked() {
			ds_list_delete(global.k_item_pool, ds_list_find_index(global.k_item_pool, "K08"))
		}
	}
	

}