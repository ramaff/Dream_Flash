function scr_Heart_Reactions() {
	var cHeart = Soul_Hearts_Control.heart[global.currentheart, 2]
	if cHeart = 8 {

	    scr_Default_Weapon_Stats();
		
		/*
	    Shot_Spread += 36;
	    Shot_Accuracy += 36;
	    Shot_Count = 10;
    
	    Shot_Sprite = spr_Spike_Essence_Shot;
	    Shot_Type = obj_Lesser_Soul_Shot;
    
	    Shot_Speed = 4;
	    Shot_Power = 15 * global.soulheartboost;
	    Shot_Knockback = 10;
	    Shot_Lifespan = 200;
		
		Shot_Point_Angle = 1;
	
		Shot_Size = 0.5;
	
		if hitType = "Boss" {
			Shot_Count = 5;
			Shot_Mouse = 0;
			if instance_exists(obj_Boss_Parent) {
			Shot_Direction = point_direction(x,y,instance_nearest(x,y,obj_Boss_Parent).x,instance_nearest(x,y,obj_Boss_Parent).y);
			}
		}
		*/
		
		current_weapon_stats = {
			Shot_Spread: 36,
			Shot_Accuracy: 36,
			Shot_Count: 10,
			Shot_Sprite: "spr_Spike_Essence_Shot",
			Shot_Type: "obj_Lesser_Soul_Shot",
			Shot_Speed: 8,
			Shot_Power: 15 * global.soulheartboost,
			Shot_Knockback: 10,
			Shot_Lifespan: 200,
			Shot_Point_Angle: 1,
			Shot_Size: 0.5
		};
		
		if hitType = "Boss" and instance_exists(obj_Boss_Parent) {
			current_weapon_stats.Shot_Count = 5;
			current_weapon_stats.Shot_Mouse = 0;
			current_weapon_stats.Shot_Direction = point_direction(x,y,instance_nearest(x,y,obj_Boss_Parent).x,instance_nearest(x,y,obj_Boss_Parent).y);
		}
		
		scr_Setup_Weapon_Stats(current_weapon_stats);

	    scr_Shot_Creation();

	}

	if cHeart = 9 {

	    scr_Default_Weapon_Stats();
    
		/*
	    Shot_Spread += 0;
	    Shot_Accuracy += 30;
	    Shot_Count = 6;
    
	    Shot_Sprite = spr_Throwing_Knife_Shot;
	    Shot_Type = obj_Lesser_Soul_Shot;
    
	    Shot_Imaginary -= 1;
	    Shot_Sharp_And_Solid += 1;
    
	    Weapon_Vomit = 1;
	    Weapon_Vomit_Min_Speed = 0.5;
	    Weapon_Vomit_Max_Speed = 1;
    
	    Shot_Speed = 11;
	    Shot_Power = 14 * global.soulheartboost;
	    Shot_Knockback = 10;
	    Shot_Lifespan = 100;
    
	    Shot_Bleed = 4;
	
		Shot_Size = 0.5;
		Shot_Point_Angle = 1;
	
		if hitType = "Boss" {
			Shot_Count = 5;
		}
		*/
		
		current_weapon_stats = {
			Shot_Spread: 0,
			Shot_Accuracy: 30,
			Shot_Count: 6,
			Shot_Sprite: "spr_Throwing_Knife_Shot",
			Shot_Type: "obj_Lesser_Soul_Shot",
			Weapon_Vomit: 1,
		    Weapon_Vomit_Min_Speed: 0.5,
		    Weapon_Vomit_Max_Speed: 1,
			Shot_Speed: 11,
			Shot_Power: 14 * global.soulheartboost,
			Shot_Knockback: 10,
			Shot_Lifespan: 60,
			Shot_Bleed: 4,
			Shot_Point_Angle: 1,
			Shot_Size: 0.5
		};
		
		if hitType = "Boss" and instance_exists(obj_Boss_Parent) {
			current_weapon_stats.Shot_Count = 5;
		}
		
		scr_Setup_Weapon_Stats(current_weapon_stats);
    
	    scr_Shot_Creation();

	}

	if cHeart = 10 {

	    scr_Default_Weapon_Stats();
		
		current_weapon_stats = {
		    Shot_Spread: 0,
		    Shot_Accuracy: 40,
		    Shot_Count: 5,
		    Shot_Sprite: "spr_Magical_Soul_Shot",
		    Shot_Type: "obj_Lesser_Soul_Shot",
		    Weapon_Vomit: 1,
		    Weapon_Vomit_Min_Speed: 0.5,
		    Weapon_Vomit_Max_Speed: 1,
		    Shot_Speed: 8.25,
		    Shot_Power: 17.5 * global.soulheartboost,
		    Shot_Knockback: 10,
		    Shot_Lifespan: 150,
			Shot_Size: 0.5,
		    Shot_Homing_Type: 1,
		    Shot_Homing_Range: 200,
			Shot_Point_Angle: 1
		}
	
		//Shot_Size = 0.5;
	
		if hitType = "Boss" {
			current_weapon_stats.Shot_Count = 4;
		}
    
		scr_Setup_Weapon_Stats(current_weapon_stats);
	    scr_Shot_Creation();

	}

	if cHeart = 11 {

	    scr_Default_Weapon_Stats();
    
		current_weapon_stats = {
		    Shot_Spread: 0,
		    Shot_Accuracy: 30,
		    Shot_Count: 5,
		    Shot_Sprite: "spr_Missile_Shot",
		    Shot_Type: "obj_Lesser_Soul_Shot",
		    Weapon_Vomit: 1,
		    Weapon_Vomit_Min_Speed: 0.5,
		    Weapon_Vomit_Max_Speed: 1,
		    Shot_Speed: 18,
		    Shot_Power: 21 * global.soulheartboost,
		    Shot_Knockback: 10,
		    Shot_Lifespan: 34,
		    Shot_Phasing: 1,
		    Shot_Air_Target: 1,
		    Shot_Impact_Type: 1,
		    Shot_Impact_Size: 90,
		    Shot_Impact_Power: 21,
			Shot_Point_Angle: 1,
			Shot_Size: 0.5,
		}
    
		scr_Setup_Weapon_Stats(current_weapon_stats);
	    scr_Shot_Creation();

	}

	if cHeart = 12 {

	    scr_Default_Weapon_Stats();
    
		current_weapon_stats = {
		    Shot_Spread: 0,
		    Shot_Accuracy: 33,
		    Shot_Count: 8,
		    Shot_Sprite: "spr_Lightning_Bolt_Shot",
		    Shot_Type: "obj_Lesser_Soul_Shot",
		    Weapon_Vomit: 1,
		    Weapon_Vomit_Min_Speed: 0.5,
		    Weapon_Vomit_Max_Speed: 1,
		    Shot_Speed: 17,
		    Shot_Power: 11.5 * global.soulheartboost,
		    Shot_Knockback: 10,
		    Shot_Lifespan: 150,
		    Shot_Phasing: 1,
		    Shot_Air_Target: 1,
			Shot_Size: 0.5,
		}
    
		scr_Setup_Weapon_Stats(current_weapon_stats);
	    scr_Shot_Creation();

	}



}
