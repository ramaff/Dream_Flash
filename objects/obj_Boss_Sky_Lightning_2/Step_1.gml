    //scr_Room_Depth(0.05);
	
	if bulletfade = 0 {
		//timeL = 100;	
		exit;
	}
	
	//var timeL = alarm[0];
	//var sizeF = 1;
	
	if alarm[0] = 15 {
		scr_Lightning_To_Target(spr_Boss_Sky_Lightning,x,y-64,x,y-864,4,64,image_blend, 30, true)
		with instance_create(x,y,obj_Smart_Home_Bullet) {
		    scr_Bullet_Replicate_Properties();
			bulletsize = 0.5;
			image_xscale = bulletsize;
			image_yscale = bulletsize;
			bulletblend = c_white;
			image_blend = c_white
		    sprite_index = spr_Glowy_Yellow_Shot;
		    bulletspeed = 1.5 + random(2.5);
		    bulletpower = global.stagedamage;
		    speed = bulletspeed;
		    direction = random(360);
		    bulletlifespan = 60 + random(90);
		    alarm[0] = bulletlifespan;
		}
	} 
	if alarm[0] <= 4 {
		image_alpha -= image_alpha / max(1, alarm[0]);	
	}