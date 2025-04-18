/// @description Insert description here
// You can write your code in this editor

alarm[1] = 15;

var damage = (damage_over_time / time) * 15

target.shealth -= damage;
damage_threshold += damage

if damage_threshold >= 1 {
	scr_setup_dmg_indicator(obj_Soul_Parent.x,obj_Soul_Parent.y, 1, c_white)

	damage_threshold -= 1
}