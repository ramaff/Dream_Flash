function scr_Weapon_Item_Change(_i = 0) {
	itemform = Soul_Weapons_Control.weapon[_i].weapon_id;

	global.floor[global.currentroom,itemData] = itemform;
	
	global.Weap[itemform]--;

	with instance_create(1024,576, obj_Item_Parent) {
	    weapon = 1;
		itemID = other.itemID;
	    itemVal = other.itemform;
	    itemData = other.itemData;
	    itemOrbit = other.itemOrbit;
	    path_start(Item_Path,0.25,path_action_continue,1)
	    path_position = other.path_position
	    if other.shop = 1 {
	        shop = 0;
	        flashcost = 0;
	        feelcost = 0;
	        dreamcost = 0;
	        nightmarecost = 0;
        
	        path_start(Shop_Path,0.25,path_action_continue,1)
	        path_position = other.path_position
        
	        global.floor[global.currentroom,itemData] = itemVal + 0.1;
	    } else {
			shop = 0;
	        flashcost = 0;
	        feelcost = 0;
	        dreamcost = 0;
	        nightmarecost = 0;
	        global.floor[global.currentroom,itemData] = itemVal;
	        if global.floor[global.currentroom,0] = "Shop" {
	            global.floor[global.currentroom,itemData] = itemVal + 0.1;
	            path_start(Shop_Path,0.25,path_action_continue,1);
	            path_position = other.path_position;
	        }
	    }
		scr_Initial_Item_Memory_Get()
	}
	
	scr_State_Weapon_Progress(itemform, -1);
	

	exit;



}
