// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Misc_Field_Pool_Pick(){
	//var type = choose(1,1,1,2,2,2,3,4,5,6,7,8,9,10);
	var itemcount = 3;
	
	var _type = 1 + irandom(72);
	// Exlcude J K L N
	// 3+12+12+7+6+3+3+10+8+5
	
	if _type <= itemcount { /// G
		return scr_Pool_Pick(global.g_item_pool);
	}
	itemcount += 12;
	if _type <= itemcount {
		return scr_Pool_Pick(global.h_item_pool);
	}
	itemcount += 12;
	if _type <= itemcount {
		return scr_Pool_Pick(global.m_item_pool);
	}
	itemcount += 7;
	if _type <= itemcount { /// P
		return scr_Pool_Pick(global.p_item_pool);
	}
	itemcount += 4;
	if _type <= itemcount { /// Q
		return scr_Pool_Pick(global.q_item_pool);
	}
	itemcount += 6;
	if _type <= itemcount { /// R
		return scr_Pool_Pick(global.r_item_pool);
	}
	itemcount += 3;
	if _type <= itemcount { /// S
		return scr_Pool_Pick(global.s_item_pool);
	}
	itemcount += 3;
	if _type <= itemcount { /// T
		return scr_Pool_Pick(global.t_item_pool);
	}
	itemcount += 10;
	if _type <= itemcount { /// U
		return scr_Pool_Pick(global.u_item_pool);
	}
	itemcount += 8;
	if _type <= itemcount { /// V
		return scr_Pool_Pick(global.v_item_pool);
	}
	itemcount += 5;
	if _type <= itemcount { /// W
		return scr_Pool_Pick(global.w_item_pool);
	}
}