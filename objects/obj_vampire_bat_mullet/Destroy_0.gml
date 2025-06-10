/// @description Insert description here
// You can write your code in this editor

if full and bosshealth <= 0 {
	if instance_exists(full_source_id) {
		full_source_id.shealth += 1;

		scr_setup_dmg_indicator(full_source_id.x, full_source_id.y, 1, c_fuchsia, 0)
		
		scr_Particle_Burst(obj_Soul_Target_Trail_Part, spr_Soul_Big_Bit, make_color_rgb(255, 0, 200), make_color_rgb(155, 0, 100), 1, 12 + random(4), 
							   random(360), 0, 0, 0.2 + random(0.2), 90, undefined, undefined, undefined, undefined, full_source_id)
	}
}




