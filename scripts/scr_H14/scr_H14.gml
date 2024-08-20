function scr_H14() {

	if global.totalhearts > 0 {
		if Soul_Hearts_Control.heart[global.currentheart, 2] = 14 {
			if instance_exists(obj_Boss_Parent) {
				scr_Beast_Maw_Use();
			}
		}
	}


}
