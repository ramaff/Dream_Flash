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
	
		var _pool_letter = scr_Pick_Pool_Letter()
		pool = scr_Get_Item_Pool_From_Letter(_pool_letter)
		itemVal = scr_Pool_Pick(pool);
		flashcost = 0;
		shop = 0;
	
		scr_Initial_Item_Memory_Get();
		scr_Item_Click(1, true);
		
	}
	
	global.soulflash -= price;
	
	instance_destroy();
	
}
