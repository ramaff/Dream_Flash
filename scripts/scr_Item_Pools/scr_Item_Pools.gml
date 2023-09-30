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
	
	/*
	global.AItemPool = [];
	global.BItemPool = [];
	global.CItemPool = [];
	global.DItemPool = [];
	global.EItemPool = [];
	global.FItemPool = [];
	global.GItemPool = [];
	global.HItemPool = [];
	global.IItemPool = [];
	global.JItemPool = [];
	global.KItemPool = [];
	global.LItemPool = [];
	global.MItemPool = [];
	global.NItemPool = [];
	global.OAItemPool = [];
	global.OBItemPool = [];
	global.OCItemPool = [];
	global.PItemPool = [];
	global.QItemPool = [];
	global.RItemPool = [];
	global.SItemPool = [];
	global.TItemPool = [];
	global.UItemPool = [];
	global.VItemPool = [];
	global.WItemPool = [];
	global.XAItemPool = [];
	global.XBItemPool = [];
	global.XCItemPool = [];
	global.YItemPool = [];
	global.ZItemPool = [];
	
	global.simpleWeaponPool = [];
	global.complexWeaponPool = [];
	global.masterfulWeaponPool = []; */
	
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
	//scr_Pool_Refill(global.Y_item_pool);
	//scr_Pool_Refill(global.Z_item_pool);
	
	scr_Pool_Refill(global.simpleWeaponPool);
	scr_Pool_Refill(global.complexWeaponPool);
	scr_Pool_Refill(global.masterfulWeaponPool);
	
	//scr_Pool_Refill();
	
	/*
	
	// Emotion Item Pool
	
	var i = 36;
	for(i = 36; i > 0; i--) {
		if i > 9 {
			ds_list_add(global.IItemPool, "I" + string(i));
		} else {
			ds_list_add(global.IItemPool, "I0" + string(i));
		}
	}
	ds_list_add(global.IItemPool, "A00");
	ds_list_add(global.IItemPool, "B00");
	ds_list_add(global.IItemPool, "C00");
	ds_list_add(global.IItemPool, "D00");
	ds_list_add(global.IItemPool, "E00");
	ds_list_add(global.IItemPool, "F00");
	
	// Other Pools
	
	for(i = 14; i > 0; i--) {
		if i > 9 {
			ds_list_add(global.AItemPool, "A" + string(i));
			ds_list_add(global.BItemPool, "B" + string(i));
			ds_list_add(global.CItemPool, "C" + string(i));
			ds_list_add(global.DItemPool, "D" + string(i));
			ds_list_add(global.EItemPool, "E" + string(i));
		} else {
			ds_list_add(global.AItemPool, "A0" + string(i));
			ds_list_add(global.BItemPool, "B0" + string(i));
			ds_list_add(global.CItemPool, "C0" + string(i));
			ds_list_add(global.DItemPool, "D0" + string(i));
			ds_list_add(global.EItemPool, "E0" + string(i));
		}
	}

	for(i = 10; i > 0; i--) {
		if i > 9 {
			ds_list_add(global.FItemPool, "F" + string(i));
		} else {
			ds_list_add(global.FItemPool, "F0" + string(i));
		}
	}
	
	for(i = 6; i > 0; i--) {
		ds_list_add(global.GItemPool, "G0" + string(i));
	}
	
	for(i = 16; i > 0; i--) {
		if i > 9 {
			ds_list_add(global.HItemPool, "H" + string(i));
		} else {
			ds_list_add(global.HItemPool, "H0" + string(i));
		}
	}
	
	for(i = 8; i > 0; i--) {
		ds_list_add(global.JItemPool, "J0" + string(i));
	}
	
	for(i = 8; i > 2; i--) {
		ds_list_add(global.KItemPool, "K0" + string(i));
	}
	
	for(i = 5; i > 0; i--) {
		ds_list_add(global.LItemPool, "L0" + string(i));
	}
	
	for(i = 25; i > 0; i--) {
		if i > 9 {
			ds_list_add(global.MItemPool, "M" + string(i));
		} else {
			ds_list_add(global.MItemPool, "M0" + string(i));
		}
	}
	
	for(i = 4; i > 0; i--) {
		ds_list_add(global.NItemPool, "N0" + string(i));
	}
	
	for(i = 4; i > 0; i--) {
		ds_list_add(global.OAItemPool, "OA0" + string(i));
		ds_list_add(global.OBItemPool, "OB0" + string(i));
		ds_list_add(global.OCItemPool, "OC0" + string(i));
	}
	
	for(i = 8; i > 0; i--) {
		ds_list_add(global.PItemPool, "P0" + string(i));
	}
	
	for(i = 6; i > 0; i--) {
		ds_list_add(global.RItemPool, "R0" + string(i));
	}
	
	for(i = 3; i > 0; i--) {
		ds_list_add(global.SItemPool, "S0" + string(i));
		ds_list_add(global.TItemPool, "T0" + string(i));
	}
	
	for(i = 10; i > 0; i--) {
		if i > 9 {
			ds_list_add(global.UItemPool, "U" + string(i));
		} else {
			ds_list_add(global.UItemPool, "U0" + string(i));
		}
	}
	
	for(i = 8; i > 0; i--) {
		ds_list_add(global.VItemPool, "V0" + string(i));
	}
	
	for(i = 5; i > 0; i--) {
		ds_list_add(global.WItemPool, "W0" + string(i));
	}
	
	for(i = 4; i > 0; i--) {
		ds_list_add(global.XAItemPool, "XA0" + string(i));
		ds_list_add(global.XBItemPool, "XB0" + string(i));
		ds_list_add(global.XCItemPool, "XC0" + string(i));
	}
	
	*/
	
	
}