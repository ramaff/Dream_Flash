/// @description Insert description here
// You can write your code in this editor
	//price = 0;
shop = 1;
weapon = 0;

var price = ceil((5 + (global.currentchapter * 5)) / ((3 + global.OA[3]) / 4));

if global.soulflash >= price {
	
	with (obj_Item_Parent) {
		instance_destroy();
	}
	
	itemVal = "00";
	var pool = global.a_item_pool;
	
	repeat(2) {
		var poolPick = 1 + irandom(26);
	
		/*
		switch(poolPick) {
			case 1:
				pool = global.a_item_pool;
				break;
			case 2:
				pool = global.b_item_pool;
				break;
			case 3:
				pool = global.c_item_pool;
				break;
			case 4:
				pool = global.d_item_pool;
				break;
			case 5:
				pool = global.e_item_pool;
				break;
			case 6:
				pool = global.f_item_pool;
				break;
			case 7:
				pool = global.g_item_pool;
				break;
			case 8:
				pool = global.h_item_pool;
				break;
			case 9:
				pool = global.i_item_pool;
				break;
			case 10:
				pool = global.j_item_pool;
				break;
			case 11:
				pool = global.k_item_pool;
				break;
			case 12:
				pool = global.l_item_pool;
				break;
			case 13:
				pool = global.m_item_pool;
				break;
			case 14:
				pool = global.n_item_pool;
				break;
			case 15:
				pool = global.oa_item_pool;
				break;
			case 16:
				pool = global.ob_item_pool;
				break;
			case 17:
				pool = global.oc_item_pool;
				break;
			case 18:
				pool = global.p_item_pool;
				break;
			case 19:
				pool = global.r_item_pool;
				break;
			case 20:
				pool = global.s_item_pool;
				break;
			case 21:
				pool = global.t_item_pool;
				break;
			case 22:
				pool = global.u_item_pool;
				break;
			case 23:
				pool = global.v_item_pool;
				break;
			case 24:
				pool = global.w_item_pool;
				break;
			case 25:
				pool = global.xa_item_pool;
				break;
			case 26:
				pool = global.xb_item_pool;
				break;
			case 27:
				pool = global.xc_item_pool;
				break;
			default:
				pool = global.a_item_pool;
		}
		*/
		var _pool_letter = scr_Pick_Pool_Letter()
		pool = scr_Get_Item_Pool_From_Letter(_pool_letter)
		itemVal = scr_Pool_Pick(pool);
		flashcost = 0;
		shop = 0;
	
		scr_Initial_Item_Memory_Get();
		scr_Item_Click(true);
		
		
	}
	
	global.soulflash -= price;
	
	instance_destroy();
	
}
