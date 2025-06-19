/// @description Insert description here
// You can write your code in this editor
var price = ceil((5 + (global.currentchapter * 5)) / ((3 + global.T[1]) / 4));

if global.soulflash >= price {
	with obj_Item_Parent {
		/*if itemVal != "A00" and itemVal != "B00" and itemVal != "C00" and itemVal != "D00" and itemVal != "E00" and itemVal != "F00" { */
			if is_string(itemVal) {
			    var itemNum = string_digits(itemVal);
			    var itemGroup = string_letters(itemVal);
			    var tempNum = 0;
			
				var itemform = 0;
				
				var ppool = global.a_item_pool;

				if itemGroup = "I" || itemVal = "A00" || itemVal = "B00" || itemVal = "C00" || itemVal = "D00" || itemVal = "E00" || itemVal = "F00" {
			        ppool = scr_Get_Item_Pool_From_Letter("I")
			    } else {
					ppool = scr_Get_Item_Pool_From_Letter(itemGroup)	
				}
			    

				itemVal = scr_Pool_Pick(ppool);
			} else {
				
				itemVal = scr_Weapon_Item_Choose();
			}
		/*} */
		scr_Initial_Item_Memory_Get()
	}
	global.soulflash -= price;
}