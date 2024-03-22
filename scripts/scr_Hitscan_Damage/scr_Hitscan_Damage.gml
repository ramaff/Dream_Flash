function scr_Hitscan_Damage(argument0, argument1) {
	/*
	var uHit = argument0;
	var mRange = argument1;


	sadd = global.soulshotamountaddchance + irandom(99);

	if sadd >= 100 {
	    Shot_Count += 1;
	}
	Shot_Count += global.soulshotamountadd + global.soulshotamountaddtemp;

	if Shot_Count > 1 {
	    if Shot_Spread < 1 {
	        Shot_Spread = 10;
	    }
	}

	//var hlength = 0;

	Shot_Current_Count = 0;

	repeat(Shot_Count) {
        
	    var xx = x;
	    var yy = y;
	
		var ddir = -(Shot_Spread * (Shot_Count - 1) / 2) + (-(Shot_Accuracy / 2) + random(Shot_Accuracy)) + Shot_Direction_Offset;
    
	    if Shot_Mouse = 1 {
	        angle = point_direction(x,y,mouse_x,mouse_y);  
	    } else {
	        angle = Shot_Direction;
	    }
    
	   angle += ddir * ((40 + random(global.soulparanoia)) / 40) / saccuracy;
	
		var length = 0;
    
	    //var hit_again = ds_list_find_index(gembeam_hits, id);
	    //if hit_again = -1 and gemBeamHeat > 0
		if uHit = 1 {
		    while(!collision_point(xx + lengthdir_x(length,angle),yy + lengthdir_y(length,angle),obj_The_Border,true,true)) {
		        length += 10;
		    }
		} else {
			while(!collision_point(xx + lengthdir_x(length,angle),yy + lengthdir_y(length,angle),obj_The_Border,true,true) and !collision_point(xx + lengthdir_x(length,angle),yy + lengthdir_y(length,angle),obj_Boss_Parent,true,true)) {
				length += 10;
		    }
		
		}
	
		length += 24;
    
		if length >= mRange {
			length = mRange;	
		}
	
		//length = 2000;
    
	    //blength[Shot_Current_Count] = length;
	    //bArrlength[Shot_Current_Count] = length;
    
	    shot_stats.Shot_Powermax = (Shot_Power + spoweradd) * ((10 + spowerfactor + sattackfactorbuffamount) / 10) * spower / 10 * ((100 + global.soulstrength + global.soulstrengthTemp) / 100);
	    shot_stats.Shot_Power = shot_stats.Shot_Powermax;
	    shotPowerLevel = Shot_Power;
	    shotarmourpierce = Shot_Armour_Pierce + sarmourpierce;
    
	    shotcritchance = Shot_Crit_Chance + scritaddchance;
	    shotcritmultiple = Shot_Crit_Multiple + scritadd;
    
	    shotimaginary = Shot_Imaginary;
	    shotsharpandsolid = Shot_Sharp_And_Solid;
	    shotexplosive = Shot_Explosive;
	    shotmagical = Shot_Magical;
	    shotenergy = Shot_Energy;
    
	    shotweaken = Shot_Weaken;
	    shotweakentime = Shot_Weaken_Time;
	    shotpoison = Shot_Poison / 10 * spower * ((100 + global.soulstrength + global.soulstrengthTemp) / 100);
	    shotpoisontime = Shot_Poison_Time;
	    shotpoisonticks = Shot_Poison_Ticks;
	    shotbleed = Shot_Bleed / 10 * spower * ((100 + global.soulstrength + global.soulstrengthTemp) / 100);
	    shotbleedtime = Shot_Bleed_Time;
	    shotbleedticks = Shot_Bleed_Ticks;
	    shotfire = Shot_Fire / 10 * spower * ((100 + global.soulstrength + global.soulstrengthTemp) / 100);
	    shotfiretime = Shot_Fire_Time;
	    shotfireticks = Shot_Fire_Ticks;
	    shotfreezetype = Shot_Freeze_Type;
	    shotfreeze = Shot_Freeze;
	    shotfreezetime = Shot_Freeze_Time;
	
		shotknockback = other.Shot_Knockback * other.sshotknockback / 10;
	
		var bdir = angle;
	
		var bEff = spr_Pop_Flash;
		var bT = 10;
		var ang = 1;
		var bHit = 0;
		var eHit = 0;
		var lHit = 1;
			
		if other.Shot_Sprite = spr_Exploding_Sniper_Streak_Shot {
			bEff = spr_Explosion_Effect;
			bT = 16;
			ang = 0;
			bHit = 1;
			lHit = 0;
		}
		if other.Shot_Sprite = spr_Sharp_Shooter_Streak_Shot {
			bEff = spr_Snipe_Flash;
			bHit = 0;
			eHit = 1;
			lHit = 1;
		}
		if other.Shot_Sprite = spr_Soul_Strike_Start {
			bEff = spr_Snipe_Flash;
			lHit = 0;
			bHit = 1;
		}
	
		var sSize = Shot_Size;
	
		with (obj_Boss_Parent) {
		
			if collision_line(other.x,other.y,other.x + lengthdir_x(length,bdir),other.y + lengthdir_y(length,bdir),self,false,false) || collision_line(other.x + lengthdir_x(10, bdir + 90),other.y + lengthdir_x(10, bdir + 90),other.x + lengthdir_x(length,bdir),other.y + lengthdir_y(length,bdir),self,false,false) || collision_line(other.x + lengthdir_x(10, bdir - 90),other.y + lengthdir_x(10, bdir - 90),other.x + lengthdir_x(length,bdir),other.y + lengthdir_y(length,bdir),self,false,false) {
		        scr_Boss_Self_Damage_Calc();
			
				if other.shotknockback >= bossknockdefense {
	                bossknockbackdirection = bdir;
	                bossknockback = (other.shotknockback - bossknockdefense);
	                bossknockbacktime = 5;
	            }	
			
				if bHit = 1 {
					with instance_create(x,y,obj_Weapon_Effect) {
						sprite_index = bEff;
						image_xscale = sSize;
						image_yscale = sSize;
						if ang = 1 {
							image_angle = bdir;
						}
						moveUp = 0;
						alarm[0] = bT;
					}
				}
				if lHit = 1 {
					with instance_create(other.x + lengthdir_x(length,bdir),other.y + lengthdir_y(length,bdir),obj_Weapon_Effect) {
						sprite_index = bEff;
						image_xscale = sSize;
						image_yscale = sSize;
						if ang = 1 {
							image_angle = bdir;
						}
						moveUp = 0;
						alarm[0] = bT;
					}
				}
			
			}
	    }
		
		if eHit = 1 {
			with instance_create(other.x + lengthdir_x(length,bdir),other.y + lengthdir_y(length,bdir),obj_Weapon_Effect) {
				sprite_index = bEff;
				image_xscale = other.Shot_Size;
				image_yscale = other.Shot_Size;
				if ang = 1 {
					image_angle = bdir;
				}
				moveUp = 0;
				alarm[0] = bT;
			}
		}
		

		//if eHit = 1 {
			with instance_create(x ,y ,obj_Hitscan_Effect) {
				sprite_index = other.Shot_Sprite;
				lsize = length;
				size = other.Shot_Size;
				image_xscale = size;
				image_yscale = size;
				angle = bdir;
			}
		//}
    
		if Shot_Burst_Type = 1 {
		
			//scr_Default_Weapon_Stats();
				
			soulshotmouse = 0;
			soulshotdirection = 0;
    
			Shot_Count = Shot_Burst_Amount;
		
			Shot_Spread = 360 / Shot_Count;
			Shot_Accuracy = 360 / Shot_Count;
    
			Shot_Sprite = Shot_Duplicate_Sprite;
			Shot_Type = obj_Lesser_Soul_Shot;
    
			Shot_Speed = Shot_Speed;
			Shot_Power = Shot_Burst_Power;
			Shot_Knockback = 0;
			Shot_Lifespan = Shot_Lifespan;
	
			Shot_Size = 0.5;
		
			Shot_Burst_Type = 0;
			Shot_Burst_Power = 0;
	
			Shot_Point_Angle = 1;
		
			Shot_XX = lengthdir_x(length,bdir);
			Shot_YY = lengthdir_y(length,bdir);
		
			//Shot_Mouse = 0;
    
			scr_Shot_Creation();
		
		}
	
	
	    bdir += Shot_Spread;
	    Shot_Current_Count++;

		}
		*/


}
