// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Item_Pools(){
	// Game Start Somewhere?
	
	global.a_item_pool = ds_list_create();
	global.b_item_pool = ds_list_create();
	global.c_item_pool = ds_list_create();
	global.d_item_pool = ds_list_create();
	global.e_item_pool = ds_list_create();
	global.f_item_pool = ds_list_create();
	global.g_item_pool = ds_list_create();
	global.h_item_pool = ds_list_create();
	global.i_item_pool = ds_list_create();
	global.j_item_pool = ds_list_create();
	global.k_item_pool = ds_list_create();
	global.l_item_pool = ds_list_create();
	global.m_item_pool = ds_list_create();
	global.n_item_pool = ds_list_create();
	global.oa_item_pool = ds_list_create();
	global.ob_item_pool = ds_list_create();
	global.oc_item_pool = ds_list_create();
	global.p_item_pool = ds_list_create();
	global.q_item_pool = ds_list_create();
	global.r_item_pool = ds_list_create();
	global.s_item_pool = ds_list_create();
	global.t_item_pool = ds_list_create();
	global.u_item_pool = ds_list_create();
	global.v_item_pool = ds_list_create();
	global.w_item_pool = ds_list_create();
	global.xa_item_pool = ds_list_create();
	global.xb_item_pool = ds_list_create();
	global.xc_item_pool = ds_list_create();
	global.y_item_pool = ds_list_create();
	global.z_item_pool = ds_list_create();
	
	global.simpleWeaponPool = ds_list_create();
	global.complexWeaponPool = ds_list_create();
	global.masterfulWeaponPool = ds_list_create();
	
	scr_Pool_Refill(global.a_item_pool);
	scr_Pool_Refill(global.b_item_pool);
	scr_Pool_Refill(global.c_item_pool);
	scr_Pool_Refill(global.d_item_pool);
	scr_Pool_Refill(global.e_item_pool);
	scr_Pool_Refill(global.f_item_pool);
	scr_Pool_Refill(global.g_item_pool);
	scr_Pool_Refill(global.h_item_pool);
	scr_Pool_Refill(global.i_item_pool);
	scr_Pool_Refill(global.j_item_pool);
	scr_Pool_Refill(global.k_item_pool);
	scr_Pool_Refill(global.l_item_pool);
	scr_Pool_Refill(global.m_item_pool);
	scr_Pool_Refill(global.n_item_pool);
	scr_Pool_Refill(global.oa_item_pool);
	scr_Pool_Refill(global.ob_item_pool);
	scr_Pool_Refill(global.oc_item_pool);
	scr_Pool_Refill(global.p_item_pool);
	scr_Pool_Refill(global.q_item_pool);
	scr_Pool_Refill(global.r_item_pool);
	scr_Pool_Refill(global.s_item_pool);
	scr_Pool_Refill(global.t_item_pool);
	scr_Pool_Refill(global.u_item_pool);
	scr_Pool_Refill(global.v_item_pool);
	scr_Pool_Refill(global.w_item_pool);
	scr_Pool_Refill(global.xa_item_pool);
	scr_Pool_Refill(global.xb_item_pool);
	scr_Pool_Refill(global.xc_item_pool);
	
	scr_Pool_Refill(global.simpleWeaponPool);
	scr_Pool_Refill(global.complexWeaponPool);
	scr_Pool_Refill(global.masterfulWeaponPool);
}