function scr_Class_Item_Choose(_classform,counter) {
	var _itype = noone;
    
    switch (_classform) {
    	case "Strength Field": _itype = scr_Pool_Pick(global.a_item_pool) break;
        case "Vitality Field": _itype = scr_Pool_Pick(global.b_item_pool) break;
        case "Essence Field": _itype = scr_Pool_Pick(global.c_item_pool) break;
        case "Dexterity Field": _itype = scr_Pool_Pick(global.d_item_pool) break;
        case "Perception Field": _itype = scr_Pool_Pick(global.e_item_pool) break;
        case "State Field": _itype = scr_Pool_Pick(global.f_item_pool) break;
        case "Hope Field": _itype = scr_Pool_Pick(global.oa_item_pool) break;
        case "Bliss Field": _itype = scr_Pool_Pick(global.ob_item_pool) break;
        case "Assurance Field": _itype = scr_Pool_Pick(global.oc_item_pool) break;
        case "Loathing Field": _itype = scr_Pool_Pick(global.xa_item_pool) break;
        case "Paranoia Field": _itype = scr_Pool_Pick(global.xb_item_pool) break;
        case "Despair Field": _itype = scr_Pool_Pick(global.xc_item_pool) break;
    }

	return _itype;
}
