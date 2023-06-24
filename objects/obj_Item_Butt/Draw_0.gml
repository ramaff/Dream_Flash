image_speed = 0;
var spriteSize = 0.5;

if weapon = 1 {
	var weapSpr = spr_Soul_Shot_Art;
	
	if variable_struct_exists(global.weapon_stats, string(itemVal)) {
		current_weapon_stats = variable_struct_get(global.weapon_stats, string(itemVal))
	}
	if variable_struct_exists(current_weapon_stats, "Recollection_Sprite") {
		weapSpr = asset_get_index(current_weapon_stats.Recollection_Sprite)
		if weapSpr = -1 {
			weapSpr = spr_Soul_Shot_Art;	
		}
	}
	
	draw_sprite_ext(weapSpr,0,x,y,spriteSize,spriteSize,0,c_white,1);
} else {
	var itemSpr = spr_Soul_Shot_Art;
	
	if variable_struct_exists(global.item_stats, string(itemVal)) {
		current_item_stats = variable_struct_get(global.item_stats, string(itemVal))
	
		if variable_struct_exists(current_item_stats, "recollectionSprite") {
			itemSpr = asset_get_index(current_item_stats.recollectionSprite)
			if itemSpr = -1 {
				itemSpr = spr_Soul_Shot_Art;	
			}
		}
	
		draw_sprite_ext(itemSpr,0,x,y,spriteSize,spriteSize,0,c_white,1);
	}
}


draw_sprite_ext(spr_Soul_Item_Border,0,x,y,0.5,0.5,0,c_white,1);