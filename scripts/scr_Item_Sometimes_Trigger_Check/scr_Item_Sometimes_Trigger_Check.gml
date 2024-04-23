// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Item_Sometimes_Trigger_Check(_item_amount, _proc_out_of){

	var _procs = floor(_item_amount / _proc_out_of);
	var _proc_mod = _item_amount mod _proc_out_of;
	
	if global.currentweapon = 14 {
		if sWeaponTicker mod (15 * _proc_out_of) < (_proc_mod * 15) {
			_procs += 1;
		}
	} else {
		if sWeaponTicker mod _proc_out_of < _proc_mod {
			_procs += 1;
		}
	}
	
	return _procs

}