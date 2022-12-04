function scr_D12_Activate() {
	// Location Soul Item Step Before Event

	if global.D[12] > 0 and sWindGustTime < 8 {
	    sWindGustTime = 8;
		
		var color = make_color_rgb(126, 255, 0);
		
		scr_Particle_Burst(obj_Field_Trail, spr_Soul_Big_Bit, color, color, 10, 12, 0, 360, 20, 0.5, 15, false)
		
		scr_Disk_Effect(20, 0.5, color);
		scr_Disk_Effect(20, 0.9, color);
		
	}



}
