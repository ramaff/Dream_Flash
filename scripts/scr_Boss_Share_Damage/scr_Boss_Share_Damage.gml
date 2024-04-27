// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Boss_Share_Damage(_boss = minionbossparent, _stored_hp = boss_stored_health, _current_hp = bosshealth) {

	var _damage = _stored_hp - _current_hp
	
	if _damage <= 0 {
		return	
	}
	
	if instance_exists(_boss) {
		with (_boss) {
			bosshealth -= _damage;
			scr_Damage_Indicator(0, _damage, 1)
		}
	}
	
	boss_stored_health = _current_hp

}