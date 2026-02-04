function scr_D12_Activate() {
	// Location Soul Item Step Before Event

	if global.D[12] > 0 and sWindGustTime < 8 {
	    sWindGustTime = 8;
		
		var color = make_color_rgb(126, 255, 0);
		
		scr_Particle_Burst(obj_Spiral_Wind_Part, spr_Soul_Big_Bit, color, color, 4, 12, 0, 90, 0, 0.4, 30, true)
		scr_Particle_Burst(obj_Spiral_Wind_Part_Alt, spr_Soul_Big_Bit, color, color, 4, 12, 0, 90, 0, 0.4, 30, true)
		
		scr_Disk_Effect(20, 0.5, color);
		scr_Disk_Effect(20, 0.9, color);
		
	}



}
