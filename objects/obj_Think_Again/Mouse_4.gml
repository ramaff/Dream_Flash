/// @description Insert description here
// You can write your code in this editor
var price = ceil((5 + (global.currentchapter * 5)) / ((3 + global.N[2]) / 4));

if global.soulflash >= price {
	with obj_Item_Parent {
		/*if itemVal != "A00" and itemVal != "B00" and itemVal != "C00" and itemVal != "D00" and itemVal != "E00" and itemVal != "F00" { */
			if is_string(itemVal) {
			    var itemNum = string_digits(itemVal);
			    var itemGroup = string_letters(itemVal);
			    var tempNum = 0;
			
				var itemform = 0;
				
				var ppool = global.AItemPool;
	
			    if itemGroup = "A" and itemVal != "A00" {
			        ppool = global.AItemPool;
			    }
			    if itemGroup = "B" and itemVal != "B00" {
			        ppool = global.BItemPool;
			    }
			    if itemGroup = "C" and itemVal != "C00" {
			        ppool = global.CItemPool;
			    }
			    if itemGroup = "D" and itemVal != "D00" {
			        ppool = global.DItemPool;
			    }
			    if itemGroup = "E" and itemVal != "E00" {
			        ppool = global.EItemPool;
			    }
			    if itemGroup = "F" and itemVal != "F00" {
			        ppool = global.FItemPool;
			    }
			    if itemGroup = "G" {
			        ppool = global.GItemPool;
			    }
			    if itemGroup = "H" {
			        ppool = global.HItemPool;
			    }
				if itemGroup = "I" || itemVal = "A00" || itemVal = "B00" || itemVal = "C00" || itemVal = "D00" || itemVal = "E00" || itemVal = "F00" {
			        ppool = global.IItemPool;
			    }
			    if itemGroup = "J" {
			        ppool = global.JItemPool;
			    }
			    if itemGroup = "K" {
			        ppool = global.KItemPool;
			    }
				if itemGroup = "L" {
			        ppool = global.RItemPool;
			    }
			    if itemGroup = "M" {
			        ppool = global.MItemPool;
			    }
				if itemGroup = "N" {
			        ppool = global.NItemPool;
			    }
				if itemGroup = "P" {
			        ppool = global.PItemPool;
			    }
				if itemGroup = "OA" {
			        ppool = global.OAItemPool;
			    }
				if itemGroup = "OB" {
			        ppool = global.OBItemPool;
			    }
				if itemGroup = "OC" {
			        ppool = global.OCItemPool;
			    }
			    if itemGroup = "R" {
			        ppool = global.RItemPool;
			    }
				if itemGroup = "S" {
			        ppool = global.SItemPool;
			    }
				if itemGroup = "T" {
			        ppool = global.TItemPool;
			    }
				if itemGroup = "U" {
			        ppool = global.UItemPool;
			    }
				if itemGroup = "V" {
			        ppool = global.VItemPool;
			    }
				if itemGroup = "W" {
			        ppool = global.WItemPool;
			    }
				if itemGroup = "XA" {
			        ppool = global.XAItemPool;
			    }
				if itemGroup = "XB" {
			        ppool = global.XBItemPool;
			    }
				if itemGroup = "XC" {
			        ppool = global.XCItemPool;
			    }

				/*
				if itemNum > 0 {
					if itemform <= 9 {
						itemVal = itemGroup + "0" + string(itemform);
					} else {
						itemVal = itemGroup + string(itemform);
					}
				} */
				itemVal = scr_Pool_Pick(ppool);
			} else {
				
				itemVal = scr_Weapon_Item_Choose();
			}
		/*} */
		scr_Initial_Item_Memory_Get()
	}
	global.soulflash -= price;
}