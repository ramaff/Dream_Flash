function scr_Boss_Beam_Draw() {
	var angle = argument[0];
	var length = argument[1];

	if beam_sprite = spr_Red_Beam {
	    beamSpr = spr_Red_Beam;
	    startSpr = spr_Red_Beam_Start;
	    tipSpr = spr_Red_Beam_Tail;
	}
	
	if beam_sprite = spr_Green_Beam {
	    beamSpr = spr_Green_Beam;
	    startSpr = spr_Green_Beam_Start;
	    tipSpr = spr_Green_Beam_Tail;
	}

	if beam_sprite = spr_Lightning_Beam {
	    beamSpr = spr_Lightning_Beam;
	    startSpr = spr_Lightning_Beam_Start;
	    tipSpr = spr_Lightning_Beam_Tail;
	}


	if beam_sprite = spr_Solid_Red_Beam {
	    beamSpr = spr_Solid_Red_Beam;
	    startSpr = spr_Solid_Red_Beam_Start;
	    tipSpr = spr_Solid_Red_Beam_Tail;
	}

	if beam_sprite = spr_Arcane_Beam {
	    beamSpr = spr_Arcane_Beam;
	    startSpr = spr_Arcane_Beam_Start;
	    tipSpr = spr_Arcane_Beam_Tail;
	}

	if beam_sprite = spr_Hope_Beam {
	    beamSpr = spr_Hope_Beam ;
	    startSpr = spr_Hope_Beam_Start;
	    tipSpr = spr_Hope_Beam_Tail;
	}

	var frame = bossPatternCountMax - bossPatternCount;
	var eframe = frame
	if frame >= 7 {
	    frame = 7;
	}
	
	var truebeamSize = beamSize + scr_Wave(0,0.05,0.25,0);

	draw_sprite_ext(beamSpr,frame,bossxx[i],bossyy[i],length + 0,truebeamSize,angle,c_white,1);
	draw_sprite_ext(startSpr,frame,bossxs[i],bossys[i],truebeamSize,truebeamSize,angle,c_white,1);
	//if frame >= 10 {
	draw_sprite_ext(tipSpr,eframe,bossxx[i]+lengthdir_x(length + 0,angle),bossyy[i]+lengthdir_y(length + 0,angle),truebeamSize,truebeamSize,angle + (current_time * 0.1),c_white,1);
	//}



}
