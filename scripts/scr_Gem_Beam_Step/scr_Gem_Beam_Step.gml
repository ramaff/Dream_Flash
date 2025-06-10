function scr_Gem_Beam_Step() {
	
	/*
	    scr_Beam_Step();
    
	var hit_again = ds_list_find_index(global.gembeam_hits, id);
	if hit_again = -1 and gemBeamHeat > 0 {
    
	    current_weapon_stats = scr_Setup_Default_Shot_Stats();
    
	    ds_list_add(global.gembeam_hits, id);  

	    Shot_Spread += 0;
	    Shot_Accuracy += 0.1;
	    Shot_Count += 0;
    
	    Shot_Phasing = 1;
    
	    Shot_Sprite = spr_Yellow_Gem_Beam_Shot;
	    sBeamSprite = Shot_Sprite;
	    Shot_Type = obj_Lesser_Soul_Shot;
    
	    Shot_Alpha = 0;
	    Shot_Beam = 1;
    
	    Shot_Mouse = 0;
	    Shot_Direction = point_direction(obj_Soul_Parent.x,obj_Soul_Parent.y,mouse_x,mouse_y);
    
	    if instance_exists(obj_Boss_Parent) {    
	        Shot_Direction = point_direction(x,y,instance_nearest(x,y,obj_Boss_Parent).x,instance_nearest(x,y,obj_Boss_Parent).y);
	    }
	    target = noone;
	    if instance_exists(obj_Gem_Parent) {
	    with(obj_Gem_Parent) {
	        dis = distance_to_object(other);
	        var hit_again = ds_list_find_index(global.gembeam_hits, id);
	        if hit_again = -1 {
	        if other.target == noone || dis < other.target.dis {
	        other.target = id;
	        }
	        }
	    }
	        if target != noone {
	            Shot_Direction = point_direction(x,y,target.x,target.y);
	        } 
	    }
    
	    Shot_Speed = 0;
	    Shot_Power = 1 + (12 * sBeamAlpha);
	    Shot_Knock_Back = 0;
	    Shot_Life_Span = 2;
    
	    Shot_Armour_Pierce += 10;
	    Shot_Pierce += 100;
    
	    scr_Beam_Damage();
    
	    gemBeamHeat--;
    
	    if gemBeamHeat <= 0 {
	        gemBeamHeat = 0;
	    }
    
	}

	var hit_again = ds_list_find_index(global.gembeam_hits, id);
	if hit_again = -1 and gemBeamStandaloneHeat > 0 {
    
	    current_weapon_stats = scr_Setup_Default_Shot_Stats();
    
	    ds_list_add(global.gembeam_hits, id);  

	    Shot_Spread += 0;
	    Shot_Accuracy += 0.1;
	    Shot_Count += 0;
    
	    Shot_Phasing = 1;
    
	    Shot_Sprite = spr_Yellow_Gem_Beam_Shot;
	    sBeamSprite = Shot_Sprite;
	    Shot_Type = obj_Lesser_Soul_Shot;
    
	    Shot_Alpha = 0;
	    Shot_Beam = 1;
    
	    Shot_Mouse = 0;
	    Shot_Direction = point_direction(obj_Soul_Parent.x,obj_Soul_Parent.y,mouse_x,mouse_y);
    
	    if instance_exists(obj_Boss_Parent) {    
	        Shot_Direction = point_direction(x,y,instance_nearest(x,y,obj_Boss_Parent).x,instance_nearest(x,y,obj_Boss_Parent).y);
	    }
	    target = noone;
	    if instance_exists(obj_Gem_Parent) {
	    with(obj_Gem_Parent) {
	        dis = distance_to_object(other);
	        var hit_again = ds_list_find_index(global.gembeam_hits, other.id);
	        if hit_again = -1 {
	        if other.target == noone || dis < other.target.dis {
	        other.target = id;
	        }
	        }
	    }
	        if target != noone {
	            Shot_Direction = point_direction(x,y,target.x,target.y);
	        } 
	    }
    
	    Shot_Speed = 0;
	    Shot_Power = 16;
	    Shot_Knock_Back = 0;
	    Shot_Life_Span = 2;
    
	    Shot_Armour_Pierce += 10;
	    Shot_Pierce += 100;
    
	    scr_Beam_Damage();
    
	    gemBeamStandaloneHeat--;
    
	    if gemBeamStandaloneHeat <= 0 {
	        gemBeamStandaloneHeat = 0;
	    }
    
	}
	*/


}
