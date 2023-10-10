// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Get_Item_Pools(_letter = false){
	if _letter {
		return ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "OA", "OB", "OC", "P", "Q", "R", "S", "T", "U", "V", "W", "XA", "XB", "XC"]
	} else {
		return [global.a_item_pool, 
				global.b_item_pool, 
				global.c_item_pool, 
				global.d_item_pool, 
				global.e_item_pool, 
				global.f_item_pool, 
				global.g_item_pool, 
				global.h_item_pool, 
				global.i_item_pool, 
				global.j_item_pool, 
				global.k_item_pool, 
				global.l_item_pool, 
				global.m_item_pool, 
				global.n_item_pool, 
				global.oa_item_pool, 
				global.ob_item_pool, 
				global.oc_item_pool, 
				global.p_item_pool, 
				global.q_item_pool,
				global.r_item_pool,
				global.s_item_pool, 
				global.t_item_pool, 
				global.u_item_pool, 
				global.v_item_pool, 
				global.w_item_pool, 
				global.xa_item_pool, 
				global.xb_item_pool, 
				global.xc_item_pool];
	}
}