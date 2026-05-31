/// @description Insert description here
// You can write your code in this editor

if !thrusting {
	exit;	
}

var _boss = other.id;

if !variable_struct_get(bosses_hit, _boss.id) {
	variable_struct_set(bosses_hit, _boss.id, _boss.id)
	
	scr_Super_Bleed_Boss(_boss, 4, ceil(20 / global.soulheartboost), round(30 * global.soulheartboost))
	
}