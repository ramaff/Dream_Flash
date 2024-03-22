function scr_Shot_Creation() {
	
	scr_Spike_Soul_Extra();
	scr_Casting_Soul_Manual_Synergy();
	scr_Scrub_Soul_Weapon_Mod();
	
	scr_E10();
	scr_A12();
	scr_D06();
	scr_A08();
	scr_D11();
	//scr_V09_Add_old();
	
	scr_OB06();
	scr_OC06();
	scr_XB02();
	scr_XA06();
	scr_XA06();
	
	
	// Note
	
	// Seems that making stubborn + multitasking not do insane multiplication
	// would require that Shot_Default_Count only gets set initially and not for each barrage shot?
	// So add a boolean to each script signifying if its a stubborn barrage or not?
	
	////

	//show_debug_message(string(Shot_Count))
	//show_debug_message(string(Shot_Repetition[bi]))
	
	var _cw = current_weapon_stats;
	
	if Shot_Repetition[bi] >= 1 {
		_cw.Shot_Count = _cw.Shot_Default_Count[bi];
	}

	repeat(_cw.Shot_Count) {
		sadd = global.soulshotamountaddchance + irandom(99);

		if sadd >= 100 {
		    _cw.Shot_Count += 1;
		}
	}

	_cw.Shot_Count += global.soulshotamountadd + global.soulshotamountaddtemp;

	scr_D10();
	
	scr_XB05_Shot_Mod();

	if _cw.Shot_Count > 1 {
	    if _cw.Shot_Spread < 10 and _cw.Shot_Spread >= 0 {
	        _cw.Shot_Spread = 10;
	    }
	}

	dir = -(_cw.Shot_Spread * (_cw.Shot_Count - 1) / 2) + (-(_cw.Shot_Accuracy / 2) + random(_cw.Shot_Accuracy)) + _cw.Shot_Direction_Offset;

	Shot_Current_Count = 0;

	
	actual_shot_direction = 0;
	
	if _cw.Shot_Mouse {
		actual_shot_direction = point_direction(x, y, mouse_x, mouse_y);
		if _cw.Shot_XX != 0 || _cw.Shot_YY != 0 {
			actual_shot_direction = point_direction(x + _cw.Shot_XX, y + _cw.Shot_YY, mouse_x ,mouse_y);
		}
	} else if !_cw.Shot_Mouse {
		actual_shot_direction = _cw.Shot_Direction;
	} else if soulshotmouse = 0 {
		actual_shot_direction = soulshotdirection;
	}
	if _cw.Shot_Boss_Aim {
		if instance_exists(obj_Boss_Parent) {
			actual_shot_direction = point_direction(x,y,instance_nearest(x,y,obj_Boss_Parent).x,instance_nearest(x,y,obj_Boss_Parent).y);
		}
	}
	
	if Shot_Repetition[bi] == Shot_Repetition_Max[bi] {
		Shot_Repetition_Stats[bi] = current_weapon_stats
		Shot_Repetition_Direction[bi] = actual_shot_direction
	}
	
	if Shot_Repetition[bi] >= 1 {
		_cw.Shot_Direction = Shot_Repetition_Direction[bi];
	}

	repeat(_cw.Shot_Count) {
	    if Weapon_Vomit = 1 {
	        dir = (-(_cw.Shot_Accuracy / 2) + random(_cw.Shot_Accuracy));
	    }
		actual_shot_direction = 0;
	    xx = 0;
	    yy = 0;
		
		if _cw.Shot_Mouse {
			actual_shot_direction = point_direction(x, y, mouse_x, mouse_y);
			if _cw.Shot_XX != 0 || _cw.Shot_YY != 0 {
				actual_shot_direction = point_direction(x + _cw.Shot_XX, y + _cw.Shot_YY, mouse_x ,mouse_y);
			}
		} else if !_cw.Shot_Mouse {
		    actual_shot_direction = _cw.Shot_Direction;
		} else if soulshotmouse = 0 {
			actual_shot_direction = soulshotdirection;
		}

		if _cw.Shot_Boss_Aim {
			if instance_exists(obj_Boss_Parent) {
				actual_shot_direction = point_direction(x,y,instance_nearest(x,y,obj_Boss_Parent).x,instance_nearest(x,y,obj_Boss_Parent).y);
		 	}
		}
		var shotdirectionaddition = dir * ((40 + random(global.soulparanoia)) / 40) / saccuracy;
		actual_shot_direction += shotdirectionaddition + _cw.Shot_Angle_Relative;
		
		actual_shot_direction += scr_XA03_Weapon_Mod();
		
		
	   // if Shot_Forward = 1 {
			var forward = 16;
			//if Shot_Forward_Amount = 0 {
			forward = _cw.Shot_Forward_Amount;	
			//}
	        xx = lengthdir_x(forward,actual_shot_direction);
	        yy = lengthdir_y(forward,actual_shot_direction);
			
			if (obj_Soul_Parent.scurrentstate = "Bleeding" and Weapon_Melee = 0) {
		        xx = lengthdir_x(50,actual_shot_direction);
		        yy = lengthdir_y(50,actual_shot_direction);
			}
	    //} 
		
	    if _cw.Shot_XX != 0 || _cw.Shot_YY != 0 {
	        xx = _cw.Shot_XX;
	        yy = _cw.Shot_YY;
	    }
	    if Weapon_Soul_Maintain = 1 {
	        Weapon_X_Maintain = xx;
	        Weapon_Y_Maintain = yy;
	    }
	
		if _cw.Shot_Ground = 1 {
			inscheck = 1
			scr_Check_Shot_Ground();	
		
			if inscheck = 0 {
				//exit;	
			}
		}
	
		scr_Weapon_Part_Create();
		
		var mechFac = 1 + scr_Mechanical_Shot_Add();
		var speedFac = 1;
		if mechFac > 1 and _cw.Shot_XX = 0 and _cw.Shot_YY = 0 {
			_cw.Shot_Direction = point_direction(x,y,mouse_x,mouse_y) 
			if _cw.Shot_Direction < 90 || _cw.Shot_Direction > 270 {
				xx = 50;	
				yy = 3;
				if _cw.Shot_Direction > 60 and _cw.Shot_Direction < 90 {
					_cw.Shot_Direction = 60;	
				}
				if _cw.Shot_Direction < 300 and _cw.Shot_Direction > 270 {
					_cw.Shot_Direction = 300;	
				}
			} else {
				xx = -50;
				yy = 6;
				if _cw.Shot_Direction > 240 {
					_cw.Shot_Direction = 240;	
				}
				if _cw.Shot_Direction < 120 {
					_cw.Shot_Direction = 120;	
				}
			}
		}
		
		
		var shxx = x + xx;
		var shyy = y + yy;
		
		scr_E14_Shot_Mod();
		
		scr_XB05_Shot_Stats();
		
		repeat(mechFac) {
			
		    with instance_create(shxx, shyy, _cw.Shot_Type) {
		        scr_Default_Shot_Stats();
				
				shot_stats = json_parse(json_stringify(other.Shot_Stats));
        
				shotorigin = obj_Soul_Parent;
		        target = noone;
		        sprite_index = asset_get_index(shot_stats.Shot_Sprite);
		        shot_stats.Shot_Size = shot_stats.Shot_Size * ((1 + other.sshotsizefactor) / 1);
		        image_xscale = shot_stats.Shot_Size;
		        image_yscale = shot_stats.Shot_Size;
		        shot_stats.Shot_Speed = (shot_stats.Shot_Speed + other.sshotspeedaddition) * (shot_stats.Weapon_Vomit_Min_Speed + random(shot_stats.Weapon_Vomit_Max_Speed - shot_stats.Weapon_Vomit_Min_Speed)) * other.sshotspeed / 10;
		        shot_stats.Shot_Powermax = (shot_stats.Shot_Power + other.spoweradd) * ((10 + other.spowerfactor + other.sattackfactorbuffamount) / 10) * other.spower / 10 * scr_Class_Stat_Damage_Multiplier();
		        shot_stats.Shot_Power = shot_stats.Shot_Powermax;
		        shotPowerLevel = shot_stats.Shot_Power;
		        shotknockback = shot_stats.Shot_Knockback * other.sshotknockback / 10;
		        shotarmourpierce = shot_stats.Shot_Armour_Pierce + other.sarmourpierce;
				direction = other.actual_shot_direction;
		        //
				
		        if mechFac > 1 {
					shot_stats.Shot_Speed = shot_stats.Shot_Speed * speedFac;
					direction = shot_stats.Shot_Direction;
				}
				speed = shot_stats.Shot_Speed;
		        shot_stats.Shot_Life_Span = shot_stats.Shot_Lifespan * (shot_stats.Weapon_Vomit_Min_Life + random(shot_stats.Weapon_Vomit_Max_Life - shot_stats.Weapon_Vomit_Min_Life)) * ((10 + other.sshotlifefactor) / 10);
				if shot_stats.Shot_Life_Span < 1 {
					shot_stats.Shot_Life_Span = 1;	
				}
		        alarm[0] = shot_stats.Shot_Life_Span;
		        scr_Extra_Shot_Stats();
		        scr_Weapon_Direction_List();
			
				shot_stats.Shot_Timer = shot_stats.Shot_Life_Span;
			
		        shotmelee = shot_stats.Weapon_Melee;
		        if shot_stats.Shot_Wave_Time > 0 {
		            alarm[9] = shot_stats.Shot_Wave_Time;
		        }
		        shot_stats.Shot_Size_Max = shot_stats.Shot_Size;
		        if shot_stats.Shot_Grow > 0 {
		            image_xscale = shot_stats.Shot_Grow_Size;
		            image_yscale = shot_stats.Shot_Grow_Size;
		        }
		        if shot_stats.Shot_Air_Target = 1 {
		            x = obj_Astral_Indicator.x;
		            y = obj_Astral_Indicator.y + 8 - (shot_stats.Shot_Speed * 45);
		            direction = 270;
		            direction += shotdirectionaddition;
		        }
				if shot_stats.Shot_Mouse_Origin = 1 {
					x = obj_Astral_Indicator.x;
		            y = obj_Astral_Indicator.y;
				}
				if shot_stats.Shot_Movement = 0 {
					speed = 0;	
				}
				if shot_stats.Shot_Light = 1 {
					with instance_create(x,y,obj_LightS) {
						target = other.id;
						lightsize = other.shot_stats.Shot_Light_Size;
						//lightsize = 1;
					}
				}
			
				//scr_Shot_Particle_Setup();
		
				alarm[2] = 1;
				if alarm[0] < 1 {
					alarm[0] = 1;	
				}
				alarm[3] = 15;
			
				//scr_Beam_Create(shxx,shyy);
				scr_Initial_Beam_Shot_Setup(x,y);
				
				if shot_stats.Shot_Point_Angle {
					image_angle = direction;
				}
				
				if shot_stats.Shot_Angle_Relative != 0 {
					image_angle = point_direction(x,y,mouse_x,mouse_y) + shot_stats.Shot_Angle_Relative;	
				}
				
				if shot_stats.Shot_Image_Direction != -1 {
					image_angle = shot_stats.Shot_Image_Direction;
				}
				
		    }
			speedFac += 0.4;
		}
    
	    dir += _cw.Shot_Spread;
	    Shot_Current_Count++;
	}

	if _cw.Shot_Power > 0 {
		scr_Soul_Stretch("Horizontal", sqrt(_cw.Shot_Power) / 20);
	}
	if _cw.Shot_Weapon_Lean != 0 {
		speed = _cw.Shot_Weapon_Lean;
		friction = 1;
		direction = point_direction(x,y,mouse_x,mouse_y);
	}
   



}
