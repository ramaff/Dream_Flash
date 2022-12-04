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
	var pool = global.AItemPool;
	
	repeat(2) {
		var poolPick = 1 + irandom(26);
	
		switch(poolPick) {
			case 1:
				pool = global.AItemPool;
				break;
			case 2:
				pool = global.BItemPool;
				break;
			case 3:
				pool = global.CItemPool;
				break;
			case 4:
				pool = global.DItemPool;
				break;
			case 5:
				pool = global.EItemPool;
				break;
			case 6:
				pool = global.FItemPool;
				break;
			case 7:
				pool = global.GItemPool;
				break;
			case 8:
				pool = global.HItemPool;
				break;
			case 9:
				pool = global.IItemPool;
				break;
			case 10:
				pool = global.JItemPool;
				break;
			case 11:
				pool = global.KItemPool;
				break;
			case 12:
				pool = global.LItemPool;
				break;
			case 13:
				pool = global.MItemPool;
				break;
			case 14:
				pool = global.NItemPool;
				break;
			case 15:
				pool = global.OAItemPool;
				break;
			case 16:
				pool = global.OBItemPool;
				break;
			case 17:
				pool = global.OCItemPool;
				break;
			case 18:
				pool = global.PItemPool;
				break;
			case 19:
				pool = global.RItemPool;
				break;
			case 20:
				pool = global.SItemPool;
				break;
			case 21:
				pool = global.TItemPool;
				break;
			case 22:
				pool = global.UItemPool;
				break;
			case 23:
				pool = global.VItemPool;
				break;
			case 24:
				pool = global.WItemPool;
				break;
			case 25:
				pool = global.XAItemPool;
				break;
			case 26:
				pool = global.XBItemPool;
				break;
			case 27:
				pool = global.XCItemPool;
				break;
			default:
				pool = global.AItemPool;
		}
		itemVal = scr_Pool_Pick(pool);
		flashcost = 0;
		shop = 0;
	
		scr_Initial_Item_Memory_Get();
		scr_Item_Click(true);
		
		
	}
	
	global.soulflash -= price;
	
	instance_destroy();
	
}
