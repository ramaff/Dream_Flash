/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if soul_saved_health != shealth {
	health_bar_alpha = 1;
	
	soul_saved_health = lerp(soul_saved_health, shealth, 0.1);
} else {
	health_bar_alpha -= 0.025;
}

var _xx_offset = (208 * (shealth / smaxhealth))
var _yy = 104;

draw_sprite_part_ext(spr_Figment_Health_Bar, 0, 0, 0, _xx_offset, 104, x - 64, y - _yy, 0.5, 0.5, c_white, health_bar_alpha)
draw_sprite_ext(spr_Figment_Health_Bar, 1, x - 64, y - _yy, 0.5, 0.5, 0, c_white, health_bar_alpha)