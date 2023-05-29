var hit_again = variable_struct_exists(projectile_hits, other.id)
if !hit_again {
	variable_struct_set(projectile_hits, other.id, other.id)
    with(other) {
        if shothomingtype = 0 {
            shothomingtype = 1;
        }
        if shothomingrange < 150 {
            shothomingrange += 150;
        } else {
            shothomingrange += 60;
        }
		shothomingspeed += 2	
        shotspeed += 1.5;
        speed += 1.5;
		
		if (sprite_get_width(sprite_index) <= 69)  and object_index != obj_Beam_Shot {
            sprite_index = spr_Magical_Soul_Shot;
            image_angle = direction;
        }
		if shotsize < 1 {
			shotsize += 0.05;
			image_xscale += 0.05;
			image_yscale += 0.05;
		}
		
        shotimaginary = 0;
        shotsharpandsolid = 0;
        shotmagical = 0;
        shotexplosive = 0;
        shotenergy = 0;
        shotmagical += 1;
	}
	
	scr_Disk_Effect(15, other.image_xscale + 0.25, make_color_rgb(254,69,255))
	scr_Soul_Stretch("Horizontal", 0.2);
}

