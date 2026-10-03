function scr_H14() {

	if global.currentheart > 0 {
		if global.currenthearttype = 14 {
			if instance_exists(obj_Boss_Parent) {
				scr_Beast_Maw_Use();
			}
		}
	}

}
