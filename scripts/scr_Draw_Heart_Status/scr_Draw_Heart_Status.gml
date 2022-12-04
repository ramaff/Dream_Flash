function scr_Draw_Heart_Status() {
	var hpercent = 100 * (Soul_Hearts_Control.heart[slot,3] / Soul_Hearts_Control.heart[slot,4]);
	var currHeart = Soul_Hearts_Control.heart[slot,2] - frac(Soul_Hearts_Control.heart[slot,2]);
	var surv = frac(Soul_Hearts_Control.heart[slot,2]);

	    if currHeart = 1 {
	        //draw_sprite(spr_Lesser_Heart,0,x,y);
	        //draw_sprite_part(spr_Lesser_Heart,1,0,32 * (1 - (hpercent / 100)),48,32,x-24,y - 16 + 32 * (1 - (hpercent / 100)));
			draw_sprite_ext(spr_Lesser_Heart,0,x,y,0.5,0.5,0,c_white,1);
	        draw_sprite_part_ext(spr_Lesser_Heart,1,0,72 * (1 - (hpercent / 100)),78,72,x-19,y - 18 + 36 * (1 - (hpercent / 100)),0.5,0.5,c_white,1);
	        //draw_sprite(spr_Basic_Heart,round(hpercent / 5),x,y);
	    }
	    if currHeart = 2 {
	        draw_sprite_ext(spr_Regen_Heart,0,x,y,0.5,0.5,0,c_white,1);
	        draw_sprite_part_ext(spr_Regen_Heart,1,0,78 * (1 - (hpercent / 100)),84,78,x-21,y - 19 + 39 * (1 - (hpercent / 100)),0.5,0.5,c_white,1);
	        //draw_sprite(spr_Regen_Heart,round(hpercent / 5),x,y);
	    }
	    if Soul_Hearts_Control.heart[slot,2] = 3 {
	        draw_sprite_ext(spr_Survivor_Heart,0,x,y,0.5,0.5,0,c_white,1);
	        draw_sprite_part_ext(spr_Survivor_Heart,1,0,10 + 72 * (1 - (hpercent / 100)),78,72,x-19,y - 18 + 36 * (1 - (hpercent / 100)),0.5,0.5,c_white,1);
	        //draw_sprite(spr_Survivor_Heart,round(hpercent / 5),x,y);
	    }
	    if Soul_Hearts_Control.heart[slot,2] = 3.01 {
	        draw_sprite_ext(spr_Survivor_Heart,2,x,y,0.5,0.5,0,c_white,1);
	        //draw_sprite(spr_Survivor_Heart,21,x,y);
	    }
	    if Soul_Hearts_Control.heart[slot,2] = 3.02 {
	        draw_sprite_ext(spr_Survivor_Heart,3,x,y,0.5,0.5,0,c_white,1);
	        //draw_sprite(spr_Survivor_Heart,22,x,y);
	    }
	    if currHeart = 4 {
	        draw_sprite_ext(spr_Jumbo_Heart,0,x,y,0.5,0.5,0,c_white,1);
	        draw_sprite_part_ext(spr_Jumbo_Heart,1,0,85 * (1 - (hpercent / 100)),88,85,x-22,y - 21 + 42 * (1 - (hpercent / 100)),0.5,0.5,c_white,1);
	        //draw_sprite_ext(spr_Basic_Heart,round(hpercent / 5),x,y,1.2,1.2,0,c_white,1);
	    }
		/*
	    if currHeart = 5 {
	        draw_sprite_ext(spr_Tough_Heart,0,x,y,0.5,0.5,0,c_white,1);
	        draw_sprite_part_ext(spr_Tough_Heart,1,0,72 * (1 - (hpercent / 100)),78,72,x-19,y - 18 + 36 * (1 - (hpercent / 100)),0.5,0.5,c_white,1);
	        //draw_sprite(spr_Tough_Heart,round(hpercent / 5),x,y);
	    }
		*/
		if currHeart = 5 {
	        draw_sprite_ext(spr_Mechanical_Heart,0,x,y,0.5,0.5,0,c_white,1);
	        draw_sprite_part_ext(spr_Mechanical_Heart,1,0,24 + 74 * (1 - (hpercent / 100)),80,74,x-20,y - 19 + 37 * (1 - (hpercent / 100)),0.5,0.5,c_white,1);
	        //draw_sprite(spr_Tough_Heart,round(hpercent / 5),x,y);
	    }
	    if currHeart = 6 {
	        draw_sprite_ext(spr_Undying_Heart,0,x,y,0.5,0.5,0,c_white,1);
	        draw_sprite_part_ext(spr_Undying_Heart,1,0,78 * (1 - (hpercent / 100)),84,78,x-21,y - 19 + 39 * (1 - (hpercent / 100)),0.5,0.5,c_white,1);
	        //draw_sprite(spr_Undying_Heart,round(hpercent / 5),x,y);
	    }
	    if currHeart = 7 {
	        draw_sprite_ext(spr_Hourglass_Heart,0,x,y,0.5,0.5,0,c_white,1);
	        draw_sprite_part_ext(spr_Hourglass_Heart,1,0,89 * (1 - (hpercent / 100)),84,89,x-21,y - 19 + 49 * (1 - (hpercent / 100)),0.5,0.5,c_white,1);
	        //draw_sprite(spr_Hourglass_Heart,round(hpercent / 5),x,y);
	    }
	    if currHeart = 8 {
	        draw_sprite_ext(spr_Spike_Heart,0,x,y,0.5,0.5,0,c_white,1);
	        draw_sprite_part_ext(spr_Spike_Heart,1,0,21 + 72 * (1 - (hpercent / 100)),78,72,x-20,y - 18 + 36 * (1 - (hpercent / 100)),0.5,0.5,c_white,1);
	        //draw_sprite(spr_Sharp_Heart,round(hpercent / 5),x,y);
	    }
	    if currHeart = 9 {
	        draw_sprite_ext(spr_Bleeding_Heart,0,x,y,0.5,0.5,0,c_white,1);
	        draw_sprite_part_ext(spr_Bleeding_Heart,1,0,27 + 72 * (1 - (hpercent / 100)),91,72,x-19,y - 18 + 36 * (1 - (hpercent / 100)),0.5,0.5,c_white,1);
	        //draw_sprite(spr_Bleeding_Heart,round(hpercent / 5),x,y);
	    }
	    if currHeart = 10 {
	        draw_sprite_ext(spr_Magician_Heart,0,x,y,0.5,0.5,0,c_white,1);
	        draw_sprite_part_ext(spr_Magician_Heart,1,0,121 * (1 - (hpercent / 100)),85,121,x-21,y - 40 + 60 * (1 - (hpercent / 100)),0.5,0.5,c_white,1);
	        //draw_sprite_ext(spr_Magician_Heart,2,x,y,0.5,0.5,0,c_white,1);
	        //draw_sprite(spr_Magician_Heart,round(hpercent / 5),x,y);
	    }
	    if currHeart = 11 {
	        draw_sprite_ext(spr_Rocket_Heart,0,x,y,0.5,0.5,0,c_white,1);
	        draw_sprite_part_ext(spr_Rocket_Heart,1,0,33 + 72 * (1 - (hpercent / 100)),78,72,x-20,y - 18 + 36 * (1 - (hpercent / 100)),0.5,0.5,c_white,1);
	        //draw_sprite(spr_Rocket_Heart,round(hpercent / 5),x,y);
	    }
	    if currHeart = 12 {
	        draw_sprite_ext(spr_Lightning_Heart,0,x,y,0.5,0.5,0,c_white,1);
	        draw_sprite_part_ext(spr_Lightning_Heart,1,0,88 * (1 - (hpercent / 100)),78,88,x-20,y - 18 + 49 * (1 - (hpercent / 100)),0.5,0.5,c_white,1);
	        //draw_sprite(spr_Lightning_Heart,round(hpercent / 5),x,y);
	    }
	    if currHeart = 13 {
	        draw_sprite_ext(spr_Scaley_Heart,0,x,y,0.5,0.5,0,c_white,1);
	        draw_sprite_part_ext(spr_Scaley_Heart,1,0,78 * (1 - (hpercent / 100)),84,78,x-21,y - 19 + 39 * (1 - (hpercent / 100)),0.5,0.5,c_white,1);
	    }
	    if currHeart = 14 {
	        draw_sprite_ext(spr_Beast_Heart,0,x,y,0.5,0.5,0,c_white,1);
	        draw_sprite_part_ext(spr_Beast_Heart,1,0,96 * (1 - (hpercent / 100)),83,96,x-19,y - 24 + 48 * (1 - (hpercent / 100)),0.5,0.5,c_white,1);
	    }
	    if currHeart = 15 {
	        draw_sprite_ext(spr_Rubber_Heart,0,x,y,0.5,0.5,0,c_white,1);
	        draw_sprite_part_ext(spr_Rubber_Heart,1,0,78 * (1 - (hpercent / 100)),84,78,x-21,y - 19 + 39 * (1 - (hpercent / 100)),0.5,0.5,c_white,1);
	    }
	    if currHeart = 16 {
	        draw_sprite_ext(spr_Jello_Heart,0,x,y,0.5,0.5,0,c_white,1);
	        draw_sprite_part_ext(spr_Jello_Heart,1,0,96 * (1 - (hpercent / 100)),78,96,x-19,y - 26 + 48 * (1 - (hpercent / 100)),0.5,0.5,c_white,1);
	    }
		if currHeart = 17 {
	        draw_sprite_ext(spr_Soapy_Heart,0,x,y,0.5,0.5,0,c_white,1);
	        draw_sprite_part_ext(spr_Soapy_Heart,1,0,36 + 72 * (1 - (hpercent / 100)),78,72,x-20,y - 18 + 36 * (1 - (hpercent / 100)),0.5,0.5,c_white,1);
	        //draw_sprite(spr_Rocket_Heart,round(hpercent / 5),x,y);
	    }
		
		if currHeart = 51 {
			draw_sprite_ext(spr_Coping_Heart,0,x,y,0.5,0.5,0,c_white,1);
	        draw_sprite_part_ext(spr_Coping_Heart,1,0,72 * (1 - (hpercent / 100)),78,72,x-19,y - 18 + 36 * (1 - (hpercent / 100)),0.5,0.5,c_white,1);
	    }
		
		if currHeart = 52 {
			draw_sprite_ext(spr_Secure_Heart,0,x,y,0.5,0.5,0,c_white,1);
	        draw_sprite_part_ext(spr_Secure_Heart,1,0,72 * (1 - (hpercent / 100)),78,72,x-19,y - 18 + 36 * (1 - (hpercent / 100)),0.5,0.5,c_white,1);
	    }
		
		if currHeart = 53 {
	        draw_sprite_ext(spr_Seething_Heart,0,x,y,0.5,0.5,0,c_white,1);
	        draw_sprite_part_ext(spr_Seething_Heart,1,0,81 * (1 - (hpercent / 100)),88,81,x-22,y - 20 + 40 * (1 - (hpercent / 100)),0.5,0.5,c_white,1);
	    }
		
	    if currHeart = 103 {
	        draw_sprite_ext(spr_Body_Bag_Heart,0,x,y,0.5,0.5,0,c_white,1);
	        draw_sprite_part_ext(spr_Body_Bag_Heart,1,0,72 * (1 - (hpercent / 100)),78,72,x-19,y - 18 + 36 * (1 - (hpercent / 100)),0.5,0.5,c_white,1);
	        //draw_sprite(spr_Body_Bag_Heart,0,x,y);
	    }
    
	if global.B[4] > 0 and surv > 0 {
		draw_sprite_ext(spr_Heart_Halo,0,x,y-15,0.5,0.5,0,c_white,1);
	}


}
