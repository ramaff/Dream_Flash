function scr_B07() {
	// Location Soul Step Event


	if global.B[7] > 0 {
		
		var chance = irandom(360);
		
	    if chance = 1 and instance_number(obj_Encouragement_Bubble) < 3 {
			with instance_create(x,y,obj_Encouragement_Bubble) {
				size = 0.01;	
				scr_Basic_Teleport();
			}	
		}	
	}
	/*
	part_type_sprite(ptype,spr_Soul_Small_Bit,0,0,0);
	part_type_color1(ptype, c_fuchsia);
	part_type_alpha1(ptype, 1)

	var partcreate = irandom(2);

	if global.B[7] > 0 {
		if instance_exists(obj_Soul_Hurt) and instance_exists(obj_Boss_Parent) {
			if distance_to_object(obj_Soul_Hurt) > 100 and distance_to_object(obj_Boss_Parent) > 100 {
				shealthregenfactor += (0.6 * global.B[7]);
			
				if partcreate = 1 {
					scr_Soul_Part_Summon();
				}
			}
		} else if instance_exists(obj_Boss_Parent) {
			if distance_to_object(obj_Boss_Parent) > 100 {
				shealthregenfactor += (0.6 * global.B[7]);
				if partcreate = 1 {
					scr_Soul_Part_Summon();
				}
			}
		}  */
		/* else if instance_exists(obj_Boss_Parent) {
			shealthregenfactor += (0.6 * global.B[7]);
			if partcreate = 1 {
					scr_Soul_Part_Summon();
				}
		}
		
	}*/



}
