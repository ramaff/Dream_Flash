with (other) {
    if (object_index != obj_Healthy_Thoughts) {
        var hamount = 5;
		
		if obj_Soul_Parent.shealth < obj_Soul_Parent.smaxhealth {
			scr_Heal_Soul(hamount);
		} else {
			scr_Refresh_Soul(hamount * 5);
		}
		
        instance_destroy(other);
		
    }
}

