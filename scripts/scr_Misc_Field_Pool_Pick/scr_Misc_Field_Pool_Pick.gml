// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Misc_Field_Pool_Pick(){
	//var type = choose(1,1,1,2,2,2,3,4,5,6,7,8,9,10);
	var itemcount = 0;
	
	//var _g_size = ceil(ds_list_size(global.g_item_pool) / 2)
	var _g_size = 0;
	var _h_size = ceil(ds_list_size(global.h_item_pool) / 1.5)
	var _m_size = ceil(ds_list_size(global.m_item_pool) / 2)
	var _p_size = ds_list_size(global.p_item_pool)
	var _q_size = ds_list_size(global.q_item_pool)
	var _r_size = ds_list_size(global.r_item_pool)
	var _s_size = ds_list_size(global.s_item_pool)
	var _u_size = ds_list_size(global.u_item_pool)
	var _v_size = ds_list_size(global.v_item_pool)
	var _w_size = ds_list_size(global.w_item_pool)
	
	var _misc_items = _g_size + _h_size + _m_size + _p_size + _q_size
					  + _r_size + _s_size + _u_size
					   + _v_size + _w_size

	var _type = 1 + irandom(_misc_items - 1);
	// Exlcude J K L N
	// 3+12+12+7+6+3+3+10+8+5
	
	/*itemcount += _g_size
	if _type <= itemcount { /// G
		return scr_Pool_Pick(global.g_item_pool);
	} */
	itemcount += _h_size
	if _type <= itemcount {
		return scr_Pool_Pick(global.h_item_pool);
	}
	itemcount += _m_size
	if _type <= itemcount {
		return scr_Pool_Pick(global.m_item_pool);
	}
	itemcount += _p_size
	if _type <= itemcount { /// P
		return scr_Pool_Pick(global.p_item_pool);
	}
	itemcount += _q_size
	if _type <= itemcount { /// Q
		return scr_Pool_Pick(global.q_item_pool);
	}
	itemcount += _r_size
	if _type <= itemcount { /// R
		return scr_Pool_Pick(global.r_item_pool);
	}
	itemcount += _s_size
	if _type <= itemcount { /// S
		return scr_Pool_Pick(global.s_item_pool);
	}
	itemcount += _u_size
	if _type <= itemcount { /// U
		return scr_Pool_Pick(global.u_item_pool);
	}
	itemcount += _v_size
	if _type <= itemcount { /// V
		return scr_Pool_Pick(global.v_item_pool);
	}
	itemcount += _w_size
	//if _type <= itemcount { /// W
	return scr_Pool_Pick(global.w_item_pool);
	
	//return scr_Misc_Field_Pool_Pick()
	
}