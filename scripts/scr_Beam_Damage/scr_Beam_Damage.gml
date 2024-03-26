function scr_Beam_Damage() {
	/*
	for(i = 0; i < sBeamNumMax; i++) {
	    if bArrBeamLife[i] <= 0 {
	        bArrBeamAlpha[i] = 0;
	        bArrBeamFrame[i] = 0;
	        bArrBeamLife[i] = 0;
	        bShotCount[i] = 0;
        
	        bangle[i] = 0;
	        blength[i] = 0;
	        for(j = 0; j < 100; j++) {
	            bArrangle[i,j] = 0;
	            bArrlength[i,j] = 0;
	            bArrxx[i,j] = 0;
	            bArryy[i,j] = 0;
	            bArrxs[i,j] = 0;
	            bArrys[i,j] = 0;
	        }
	        sBeamNum = i;
	        break;
	    }
	}

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

	bdir = -(Shot_Spread * (Shot_Count - 1) / 2) + (-(Shot_Accuracy / 2) + random(Shot_Accuracy)) + Shot_Direction_Offset;

	Shot_Current_Count = 0;
	bShotCount[sBeamNum] = Shot_Count;

	repeat(Shot_Count) {
	    if Shot_Beam = 1 {
        
	    var xx = x;
	    var yy = y;
    
	    if Shot_Mouse = 1 {
	        angle = point_direction(x,y,mouse_x,mouse_y);  
	    } else {
	        angle = Shot_Direction;
	    }
    
	    angle += bdir * ((40 + random(global.soulparanoia)) / 40) / saccuracy;
	    bangle[Shot_Current_Count] = angle;
	    bArrangle[sBeamNum,Shot_Current_Count] = angle;
	    length = 0;
	    var allBeam = 1;
    
	    with(obj_Gem_Parent) {
	        var hit_again = ds_list_find_index(global.gembeam_hits, id);
	        if hit_again = -1 {
	            allBeam = 0;
	        }
	    }
    
	    //var hit_again = ds_list_find_index(gembeam_hits, id);
	    //if hit_again = -1 and gemBeamHeat > 0
		var count = 0;
	    while(!collision_point(xx + lengthdir_x(length,angle),yy + lengthdir_y(length,angle),obj_The_Border,false,true) and length < 2400 and (!collision_point(xx + lengthdir_x(length,angle),yy + lengthdir_y(length,angle),obj_Gem_Parent,false,true) || allBeam = 1 || count <= 50)) {
	        length += 128;
			count++;
	    }
		while(collision_point(xx + lengthdir_x(length,angle),yy + lengthdir_y(length,angle),obj_The_Border,false,true) and length < 2400 and (!collision_point(xx + lengthdir_x(length,angle),yy + lengthdir_y(length,angle),obj_Gem_Parent,false,true) || allBeam = 1 || count <= 50)) {
	        length -= 64;
			count++;
	    }
		while(!collision_point(xx + lengthdir_x(length,angle),yy + lengthdir_y(length,angle),obj_The_Border,false,true) and length < 2400 and (!collision_point(xx + lengthdir_x(length,angle),yy + lengthdir_y(length,angle),obj_Gem_Parent,false,true) || allBeam = 1 || count <= 50)) {
	        length += 16;
			count++;
	    }
    
	    with(obj_Gem_Parent) {
	        if collision_point(xx + lengthdir_x(other.length + 2,other.angle),yy + lengthdir_y(other.length + 2,other.angle),self,true,false) {
	        var hit_again = ds_list_find_index(global.gembeam_hits, id);
	        if hit_again = -1 {
	            if global.currentweapon = 20 {
	                gemBeamHeat = 1;
	                gemDrawBeam = 2;
					sBeamAlpha = other.sBeamAlpha;
	            } else {
	                gemBeamStandaloneHeat = 1;
	                gemDrawStandaloneBeam = 2;
					bArrBeamAlpha[Shot_Count] = other.bArrBeamAlpha[Shot_Count];
	            }
	            //ds_list_add(global.gembeam_hits, id);  
	        }
	        }
	    }
    
	    //blength[Shot_Current_Count] = length;
	    //bArrlength[Shot_Current_Count] = length;
    
	    finx = xx + lengthdir_x(length,angle);
	    finy = yy + lengthdir_y(length,angle);
    
	    shot_stats.Shot_Powermax = (Shot_Power + spoweradd) * ((10 + spowerfactor + sattackfactorbuffamount) / 10) * spower / 10 * ((100 + global.soulstrength + global.soulstrengthTemp) / 100);
	    shot_stats.Shot_Power = shot_stats.Shot_Powermax;
	    shot_stats.Shot_Power_Level = Shot_Power;
	    shot_stats.Shot_Armour_Pierce = Shot_Armour_Pierce + sarmourpierce;
    
	    shot_stats.Shot_Crit_Chance = Shot_Crit_Chance + scritaddchance;
	    shotcritmultiple = Shot_Crit_Multiple + scritadd;
    
	    shotimaginary = Shot_Imaginary;
	    shotsharpandsolid = Shot_Sharp_And_Solid;
	    shotexplosive = Shot_Explosive;
	    shotmagical = Shot_Magical;
	    shotenergy = Shot_Energy;
    
	    shot_stats.Shot_Weaken = Shot_Weaken;
	    shot_stats.Shot_Weaken_Time = Shot_Weaken_Time;
	    shot_stats.Shot_Poison = Shot_Poison / 10 * spower * ((100 + global.soulstrength + global.soulstrengthTemp) / 100);
	    shot_stats.Shot_Poison_Time = Shot_Poison_Time;
	    shot_stats.Shot_Poison_Ticks = Shot_Poison_Ticks;
	    shot_stats.Shot_Bleed = Shot_Bleed / 10 * spower * ((100 + global.soulstrength + global.soulstrengthTemp) / 100);
	    shot_stats.Shot_Bleed_Time = Shot_Bleed_Time;
	    shot_stats.Shot_Bleed_Ticks = Shot_Bleed_Ticks;
	    shot_stats.Shot_Fire = Shot_Fire / 10 * spower * ((100 + global.soulstrength + global.soulstrengthTemp) / 100);
	    shot_stats.Shot_Fire_Time = Shot_Fire_Time;
	    shot_stats.Shot_Fire_Ticks = Shot_Fire_Ticks;
	    shot_stats.Shot_Freeze_Type = Shot_Freeze_Type;
	    shot_stats.Shot_Freeze = Shot_Freeze;
	    shot_stats.Shot_Freeze_Time = Shot_Freeze_Time;
    
	    with (obj_Boss_Parent) {
    
	        if collision_line(other.x,other.y,other.finx,other.finy,self,false,false) || collision_line(other.x + lengthdir_x(10, other.angle + 90),other.y + lengthdir_x(10, other.angle + 90),other.finx,other.finy,self,false,false) || collision_line(other.x + lengthdir_x(10, other.angle - 90),other.y + lengthdir_x(10, other.angle - 90),other.finx,other.finy,self,false,false) {
	            scr_Boss_Self_Damage_Calc();
	        }
    
	        }
    
	    }
    
	    bdir += Shot_Spread;
	    Shot_Current_Count++;

	}

	*/

}
