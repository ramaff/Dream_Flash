var hamount = 1 * global.B[9];

with (other) {
    if (object_index != obj_Healthy_Thoughts) {
		
		if obj_Soul_Parent.shealth < obj_Soul_Parent.smaxhealth {
			scr_Heal_Soul(hamount);
		} else {
			scr_Refresh_Soul(hamount * 5);
		}
    }
}

if instance_exists(bosstarget) {
	with (bosstarget) {
		bosshealth -= hamount * 5;
		scr_setup_dmg_indicator(x,y, hamount * 5, c_white);
	}
}


instance_destroy();