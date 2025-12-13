instance_destroy(obj_Recollection_Butt);
instance_destroy(obj_Recollection_Info_Butt);

with(obj_Recollection_Butt) {
	instance_destroy();	
}
with(obj_Recollection_Info_Butt) {
	instance_destroy();	
}

with (obj_Recollection_Category_Butt) {
	selected = false;
}

numOfButts = 0;
if cat = 1 {
    global.recollectCategory = "Weapons";
    numOfButts = array_length(struct_get_names(global.weapon_stats));
	Print_DF("Weapon Count: " + string(numOfButts))
}
if cat = 2 {
    global.recollectCategory = "Items";
    numOfButts = array_length(struct_get_names(global.item_stats)); // Technically there is 1 additional item than this number <- wtf was this guy talking about
	Print_DF("Item Count: " + string(numOfButts))
}
if cat = 3 {
    global.recollectCategory = "Bosses";
    numOfButts = array_length(struct_get_names(global.boss_stats));
	Print_DF("Boss Count: " + string(numOfButts))
}
if scr_State_Recollection_Unlocked() {
	if cat = 4 {
	    global.recollectCategory = "State";
	    numOfButts = array_length(struct_get_names(global.state_info));
	}
	if cat = 5 {
	    global.recollectCategory = "Information";
		numOfButts = array_length(struct_get_names(global.tutorial_info));
	}
} else {
	if cat = 4 {
		global.recollectCategory = "Information";	
		numOfButts = array_length(struct_get_names(global.tutorial_info));
	}
}

buttNum = 0;

var _weapon_ids = struct_get_names(global.weapon_stats);
var _item_ids = struct_get_names(global.item_stats);
var _boss_ids = struct_get_names(global.boss_stats);
var _state_ids = struct_get_names(global.state_info);

array_sort(_weapon_ids, function(a, b)
{
    return real(a) > real(b);
})

array_sort(_item_ids, true)
array_sort(_boss_ids, true)
array_sort(_state_ids, true)

var _i = 0
var _j = 0

instance_destroy(obj_Dream_Cursor)
var _cursor = instance_create(mouse_x,mouse_y,obj_Dream_Cursor);

if global.recollectCategory = "Weapons" {
    for(_i = 0; _i < (numOfButts / 3); _i++) {
        for(_j = 0; _j < 3; _j++) {
            var _index = (_i * 3) + _j;
			
			if _index >= numOfButts {
				break;
			}
			
            with instance_create(camera_get_view_x(view) + 144 + 90 * _j,camera_get_view_y(view) + 208 + 96 * _i,obj_Recollection_Butt) {
                //buttNum = other.buttNum;
                //itemVal = _weapon_ids[_index]
				itemVal = scr_Recollection_Panel_Assign(_weapon_ids, _index);
				scr_Assign_Memory();
				
				_cursor.menu_grid[_j, _i] = id;
            }
        }
    }
	if cat = 1 {
		selected = true;	
	} 
}

with (_cursor) {
	
	max_x = 2;
	max_y = floor(other.numOfButts / 3) - 1;
			
	xx = 0;
	yy = 0;
	target_button = menu_grid[0, 0];
	event_user(1);
}

if global.recollectCategory = "Items" {
    for(_i = 0; _i < (numOfButts / 3); _i++) {
        for(_j = 0; _j < 3; _j++) {
            var _index = (_i * 3) + _j;
			if _index >= numOfButts {
				break;
			}

	        with instance_create(camera_get_view_x(view) + 144 + 90 * _j, camera_get_view_y(view) + 208 + 96 * _i,obj_Recollection_Butt) {

				itemVal = scr_Recollection_Panel_Assign(_item_ids, _index);
	            //scr_Recollection_Panel_Assign();
				scr_Assign_Memory();
	        }
        }
    }
	if cat = 2 {
		selected = true;	
	} 
}


if global.recollectCategory = "Bosses" {
    for(_i = 0; _i < numOfButts; _i++) {
        with instance_create(camera_get_view_x(view) + 176,camera_get_view_y(view) + 248 + 80 * _i,obj_Recollection_Butt) {
			if _i mod 2 = 0 {
				x += 120;
			}
			sprite_index = spr_Boss_Border;
            itemVal = scr_Recollection_Panel_Assign(_boss_ids, _i);
			scr_Assign_Memory();
        }
    }
	if cat = 3 {
		selected = true;	
	} 
}

if global.recollectCategory = "State" {
    for(_i = 0; _i < numOfButts; _i++) {
        with instance_create(camera_get_view_x(view) + 176,camera_get_view_y(view) + 248 + 80 * _i,obj_Recollection_Butt) {
			if _i mod 2 = 0 {
				x += 120;
			}
            sprite_index = spr_Boss_Border;
            itemVal = scr_Recollection_Panel_Assign(_state_ids, _i);
			scr_Assign_Memory();
        }
    }
	if cat = 4 {
		selected = true;	
	} 
}

if global.recollectCategory = "Information" {
    for(_i = 0; _i < numOfButts; _i++) {
        with instance_create(camera_get_view_x(view) + 176,camera_get_view_y(view) + 248 + 80 * _i,obj_Recollection_Butt) {
			if _i mod 2 = 0 {
				x += 120;
			}
            sprite_index = spr_Boss_Border;
            itemVal = scr_Recollection_Panel_Assign([], _i);
			scr_Assign_Memory();
        }
    }
	if cat = 5 {
		selected = true;	
	} 
}

if !instance_exists(obj_Recollection_Scroll_Bar) {
	instance_create(camera_get_view_x(view) + 80,camera_get_view_y(view) + 144,obj_Recollection_Scroll_Bar);
}