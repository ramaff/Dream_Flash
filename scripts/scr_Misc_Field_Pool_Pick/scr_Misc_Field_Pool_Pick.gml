// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Misc_Field_Pool_Pick(){
	var type = choose(1,1,1,2,2,2,3,4,5,6,7,8,9,10);
	var itemcount = 3;
	
	type = 1 + irandom(68);
	// Exlcude J K L N
	// 3+12+12+7+6+3+3+10+8+5
	
	if type <= itemcount { /// G
		return scr_Pool_Pick(global.GItemPool);
	}
	itemcount += 12;
	if type <= itemcount {
		return scr_Pool_Pick(global.HItemPool);
	}
	itemcount += 12;
	if type <= itemcount {
		return scr_Pool_Pick(global.MItemPool);
	}
	itemcount += 7;
	if type <= itemcount { /// P
		return scr_Pool_Pick(global.PItemPool);
	}
	itemcount += 6;
	if type <= itemcount { /// R
		return scr_Pool_Pick(global.RItemPool);
	}
	itemcount += 3;
	if type <= itemcount { /// S
		return scr_Pool_Pick(global.SItemPool);
	}
	itemcount += 3;
	if type <= itemcount { /// T
		return scr_Pool_Pick(global.TItemPool);
	}
	itemcount += 10;
	if type <= itemcount { /// U
		return scr_Pool_Pick(global.UItemPool);
	}
	itemcount += 8;
	if type <= itemcount { /// V
		return scr_Pool_Pick(global.VItemPool);
	}
	itemcount += 5;
	if type <= itemcount { /// W
		return scr_Pool_Pick(global.WItemPool);
	}
}