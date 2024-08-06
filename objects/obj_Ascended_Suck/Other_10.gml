/// @description Insert description here
// You can write your code in this editor

if instance_exists(target) {
	if target.Charge_Hold > 0 {
		if target.Shot_Charge_Power > 0 {
			var _power_per_essence = target.Shot_Charge_Power / target.Charge_Essence
			var _size_per_essence = target.Shot_Charge_Size / target.Charge_Essence
			target.Charge_Power += _power_per_essence
			target.Charge_Size = scr_Sqrt_Add(target.Charge_Size, _size_per_essence);
		}
	} else {
		scr_Refresh_Soul(1);
	}
}

instance_destroy()
