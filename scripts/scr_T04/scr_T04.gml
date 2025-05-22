// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_T04(){

	if global.T[4] > 0 and (array_length(global.items) >= 2) {
		
		var itemPick = "";
		
		var j = 1;
            
		for(j = 1; j <= 13; j++) {
		    global.floor[global.currentroom,6 + j] = "00"; 
		}
        
		var itemNumChoice = min(scr_Item_Field_Count(4), array_length(global.items) - 1)
	
		var itemNumPick = 1;
		global.floor[global.currentroom,0] = "Hyper Field"
		var _item = "T04"
		var _picked = []
		while(array_length(_picked) < itemNumChoice) {
			_item = global.items[irandom(array_length(global.items) - 1)]
			if !array_contains(_picked, _item) and _item != "T04" {
				_picked[array_length(_picked)] = _item
			}
		}
		for(j = 1; j <= itemNumChoice; j++) {
		    global.floor[global.currentroom,6+j] = _picked[j - 1]
		}
		var i = 1;
		var item = []
		for(i = 1; i <= 13; i++) {
		    item[i] = global.floor[global.currentroom,6+i];
		}

		scr_Item_Spawn(global.floor[global.currentroom,0], item[1], item[2], item[3], item[4], item[5], item[6], item[7], item[8], item[9], item[10], item[11], item[12], item[13]);
	
		global.T[4]--;
	}

}