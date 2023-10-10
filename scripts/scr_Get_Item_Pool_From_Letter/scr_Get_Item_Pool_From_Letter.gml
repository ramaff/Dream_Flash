// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Get_Item_Pool_From_Letter(pool){
	
	var pool_name = global.a_item_pool;
	switch(pool) {
	
		case "A":
			pool_name = global.a_item_pool;
			break;
		case "B":
			pool_name = global.b_item_pool;
			break;
		case "C":
			pool_name = global.c_item_pool;
			break;
		case "D":
			pool_name = global.d_item_pool;
			break;
		case "E":
			pool_name = global.e_item_pool;
			break;
		case "F":
			pool_name = global.f_item_pool;
			break;
		case "G":
			pool_name = global.g_item_pool;
			break;
		case "H":
			pool_name = global.h_item_pool;
			break;
		case "I":
			pool_name = global.i_item_pool;
			break;
		case "J":
			pool_name = global.j_item_pool;
			break;
		case "K":
			pool_name = global.k_item_pool;
			break;
		case "L":
			pool_name = global.l_item_pool;
			break;
		case "M":
			pool_name = global.m_item_pool;
			break;
		case "N":
			pool_name = global.n_item_pool;
			break;
		case "OA":
			pool_name = global.oa_item_pool;
			break;
		case "OB":
			pool_name = global.ob_item_pool;
			break;
		case "OC":
			pool_name = global.oc_item_pool;
			break;
		case "P":
			pool_name = global.p_item_pool;
			break;
		case "Q":
			pool_name = global.q_item_pool;
			break;
		case "R":
			pool_name = global.r_item_pool;
			break;
		case "S":
			pool_name = global.s_item_pool;
			break;
		case "T":
			pool_name = global.t_item_pool;
			break;
		case "U":
			pool_name = global.u_item_pool;
			break;
		case "V":
			pool_name = global.v_item_pool;
			break;
		case "W":
			pool_name = global.w_item_pool;
			break;
		case "XA":
			pool_name = global.xa_item_pool;
			break;
		case "XB":
			pool_name = global.xb_item_pool;
			break;
		case "XC":
			pool_name = global.xc_item_pool;
			break;
		
	}
	
	return pool_name;

}