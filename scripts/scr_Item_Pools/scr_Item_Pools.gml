// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Item_Pools(){
	// Game Start Somewhere?
	
	global.AItemPool = ds_list_create();
	global.BItemPool = ds_list_create();
	global.CItemPool = ds_list_create();
	global.DItemPool = ds_list_create();
	global.EItemPool = ds_list_create();
	global.FItemPool = ds_list_create();
	global.GItemPool = ds_list_create();
	global.HItemPool = ds_list_create();
	global.IItemPool = ds_list_create();
	global.JItemPool = ds_list_create();
	global.KItemPool = ds_list_create();
	global.LItemPool = ds_list_create();
	global.MItemPool = ds_list_create();
	global.NItemPool = ds_list_create();
	global.OAItemPool = ds_list_create();
	global.OBItemPool = ds_list_create();
	global.OCItemPool = ds_list_create();
	global.PItemPool = ds_list_create();
	global.QItemPool = ds_list_create();
	global.RItemPool = ds_list_create();
	global.SItemPool = ds_list_create();
	global.TItemPool = ds_list_create();
	global.UItemPool = ds_list_create();
	global.VItemPool = ds_list_create();
	global.WItemPool = ds_list_create();
	global.XAItemPool = ds_list_create();
	global.XBItemPool = ds_list_create();
	global.XCItemPool = ds_list_create();
	global.YItemPool = ds_list_create();
	global.ZItemPool = ds_list_create();
	
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
	
	scr_Pool_Refill(global.AItemPool);
	scr_Pool_Refill(global.BItemPool);
	scr_Pool_Refill(global.CItemPool);
	scr_Pool_Refill(global.DItemPool);
	scr_Pool_Refill(global.EItemPool);
	scr_Pool_Refill(global.FItemPool);
	scr_Pool_Refill(global.GItemPool);
	scr_Pool_Refill(global.HItemPool);
	scr_Pool_Refill(global.IItemPool);
	scr_Pool_Refill(global.JItemPool);
	scr_Pool_Refill(global.KItemPool);
	scr_Pool_Refill(global.LItemPool);
	scr_Pool_Refill(global.MItemPool);
	scr_Pool_Refill(global.NItemPool);
	scr_Pool_Refill(global.OAItemPool);
	scr_Pool_Refill(global.OBItemPool);
	scr_Pool_Refill(global.OCItemPool);
	scr_Pool_Refill(global.PItemPool);
	//scr_Pool_Refill(global.QItemPool);
	scr_Pool_Refill(global.RItemPool);
	scr_Pool_Refill(global.SItemPool);
	scr_Pool_Refill(global.TItemPool);
	scr_Pool_Refill(global.UItemPool);
	scr_Pool_Refill(global.VItemPool);
	scr_Pool_Refill(global.WItemPool);
	scr_Pool_Refill(global.XAItemPool);
	scr_Pool_Refill(global.XBItemPool);
	scr_Pool_Refill(global.XCItemPool);
	//scr_Pool_Refill(global.YItemPool);
	//scr_Pool_Refill(global.ZItemPool);
	
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