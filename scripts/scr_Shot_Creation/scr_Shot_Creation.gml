function scr_Shot_Creation(_cw = current_weapon_stats, _prime_shot = false) {
	
	scr_Spike_Soul_Extra();
	scr_Casting_Soul_Manual_Synergy(_cw);
	scr_Scrub_Soul_Weapon_Mod(_cw);
	
	scr_E10(_cw);
	scr_A12(_cw);
	scr_D06(_cw);
	scr_A08(_cw);
	scr_D11(_cw);
	
	scr_P09(_cw);
	
	scr_OB06(_cw);
	scr_OC06(_cw);
	scr_XB02(_cw);
	scr_XA06(_cw);
	
	
	// Note
	
	// Seems that making stubborn + multitasking not do insane multiplication
	// would require that Shot_Default_Count only gets set initially and not for each barrage shot?
	// So add a boolean to each script signifying if its a stubborn barrage or not?
	
	////

	repeat(_cw.Shot_Count) {
		sadd = global.soulshotamountaddchance + irandom(99);

		if sadd >= 100 {
		    _cw.Shot_Count += 1;
		}
	}

	_cw.Shot_Count += global.soulshotamountadd + global.soulshotamountaddtemp;

	scr_D10(_cw);
	
	scr_XB05_Shot_Mod(_cw);

	if _cw.Shot_Count > 1 {
	    if _cw.Shot_Spread < 10 and _cw.Shot_Spread >= 0 {
	        _cw.Shot_Spread = 10;
	    }
	}
	
	var _acc_mult = scr_Get_Status_Magnitude_Mult(id, "accuracy_mult")
	if _acc_mult = 0 {
		_acc_mult = 1;	
	}
	_cw.Shot_Accuracy = _cw.Shot_Accuracy / _acc_mult

	var dir = -(_cw.Shot_Spread * (_cw.Shot_Count - 1) / 2) + (-(_cw.Shot_Accuracy / 2) + random(_cw.Shot_Accuracy)) + _cw.Shot_Direction_Offset;

	var _Shot_Current_Count = 0;

	var actual_shot_direction = 0;
	
	var _mx = obj_Astral_Indicator.x;
	var _my = obj_Astral_Indicator.y;
	/*if instance_exists(obj_Astral_Indicator) {
		_mx = obj_Astral_Indicator.x;
		_my = obj_Astral_Indicator.y;
	} */
	
	if _cw.Shot_Mouse {
		actual_shot_direction = point_direction(x, y, _mx, _my);
		if _cw.Shot_XX != 0 || _cw.Shot_YY != 0 {
			actual_shot_direction = point_direction(x + _cw.Shot_XX, y + _cw.Shot_YY, _mx , _my);
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
	
	if Shot_Repetition[bi] >= 1 {
		_cw.Shot_Direction = Shot_Repetition_Direction[bi];
	}
	
	_cw.Shot_Excess_Essence = _cw.Shot_Excess_Essence / _cw.Shot_Count

	repeat(_cw.Shot_Count) {
	    if _cw.Weapon_Vomit = 1 {
	        dir = (-(_cw.Shot_Accuracy / 2) + random(_cw.Shot_Accuracy));
	    }
		actual_shot_direction = 0;
	    var xx = 0;
	    var yy = 0;
		
		if _cw.Shot_Mouse {
			actual_shot_direction = point_direction(x, y, _mx, _my);
			if _cw.Shot_XX != 0 || _cw.Shot_YY != 0 {
				actual_shot_direction = point_direction(x + _cw.Shot_XX, y + _cw.Shot_YY, _mx, _my);
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
		var _shot_direction_add = dir * ((40 + random(global.soulparanoia)) / 40) / saccuracy;
		actual_shot_direction += _shot_direction_add + _cw.Shot_Angle_Relative;
		
		actual_shot_direction += scr_XA04_Weapon_Mod();
		
		
	   // if Shot_Forward = 1 {
			var forward = 16;
			//if Shot_Forward_Amount = 0 {
			forward = _cw.Shot_Forward_Amount;	
			//}
	        xx = lengthdir_x(forward,actual_shot_direction);
	        yy = lengthdir_y(forward,actual_shot_direction);
			
			if (obj_Soul_Parent.scurrentstate = "Bleeding" and _cw.Shot_Melee = 0) {
		        xx = lengthdir_x(50,actual_shot_direction);
		        yy = lengthdir_y(50,actual_shot_direction);
			}
	    //} 
		
	    if _cw.Shot_XX != 0 || _cw.Shot_YY != 0 {
	        xx = _cw.Shot_XX;
	        yy = _cw.Shot_YY;
	    }
	    if _cw.Shot_Soul_Maintain = 1 {
	        _cw.Shot_X_Maintain = xx;
	        _cw.Shot_Y_Maintain = yy;
	    }
		
		var mechFac = 1 + scr_Mechanical_Shot_Add(_cw);
		var speedFac = 1;
		if mechFac > 1 and _cw.Shot_XX = 0 and _cw.Shot_YY = 0 {
			_cw.Shot_Direction = point_direction(x,y, _mx, _my) 
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
		
		scr_E14_Shot_Mod(_cw);
		//scr_Snake_Glitch_Mod(_cw);
		
		scr_XB05_Shot_Stats(_cw, _Shot_Current_Count);
		
		repeat(mechFac) {
			
		    with instance_create_depth(shxx, shyy, _cw.Shot_Depth, asset_get_index(_cw.Shot_Type)) {
		        scr_Default_Shot_Variables();
				
				shot_stats = variable_clone(_cw);
        
				shot_stats.Prime_Shot = _prime_shot
				shot_stats.Shot_Origin = obj_Soul_Parent;
		        target = noone;
		        sprite_index = asset_get_index(shot_stats.Shot_Sprite);
		        shot_stats.Shot_Size = shot_stats.Shot_Size * scr_Soul_Size_Factor_Calc(other);
		        shot_stats.Shot_Speed = (shot_stats.Shot_Speed + other.sshotspeedaddition) * (shot_stats.Weapon_Vomit_Min_Speed + random(shot_stats.Weapon_Vomit_Max_Speed - shot_stats.Weapon_Vomit_Min_Speed)) * other.sshotspeed / 10;
		        shot_stats.Shot_Power_Max = (shot_stats.Shot_Power + other.spoweradd) * scr_Soul_Power_Factor_Calc(other);
		        shot_stats.Shot_Power = shot_stats.Shot_Power_Max;
		        shot_stats.Shot_Knock_Back = shot_stats.Shot_Knock_Back * other.sshotknockback / 10;
		        shot_stats.Shot_Armour_Pierce = shot_stats.Shot_Armour_Pierce + other.sarmourpierce;
				direction = actual_shot_direction;
		        //
				
		        if mechFac > 1 {
					shot_stats.Shot_Speed = shot_stats.Shot_Speed * speedFac;
					direction = shot_stats.Shot_Direction;
				}
				speed = shot_stats.Shot_Speed;
		        shot_stats.Shot_Life_Span = shot_stats.Shot_Life_Span * (shot_stats.Weapon_Vomit_Min_Life + random(shot_stats.Weapon_Vomit_Max_Life - shot_stats.Weapon_Vomit_Min_Life)) * ((10 + other.sshotlifefactor) / 10);
				if shot_stats.Shot_Life_Span < 1 {
					shot_stats.Shot_Life_Span = 1;	
				}
		        alarm[0] = shot_stats.Shot_Life_Span;
				alarm[1] = 1;
		        scr_Extra_Shot_Stats(_Shot_Current_Count);
			
				////shot_stats.Shot_Timer = shot_stats.Shot_Life_Span;
			
		        shot_stats.Shot_Melee = shot_stats.Shot_Melee;
		        if shot_stats.Shot_Wave_Time > 0 {
		            alarm[9] = shot_stats.Shot_Wave_Time;
		        }
				shot_stats.Shot_Size = clamp(shot_stats.Shot_Size, 0.01, 4);
				image_xscale = shot_stats.Shot_Size;
		        image_yscale = shot_stats.Shot_Size;
		        shot_stats.Shot_Size_Max = shot_stats.Shot_Size;
		        if shot_stats.Shot_Grow > 0 {
		            image_xscale = shot_stats.Shot_Grow_Size;
		            image_yscale = shot_stats.Shot_Grow_Size;
		        }
		        if shot_stats.Shot_Air_Target = 1 {
		            x = obj_Astral_Indicator.x;
		            y = obj_Astral_Indicator.y + 8 - (shot_stats.Shot_Speed * 45);
		            direction = 270;
		            direction += shot_stats.Shot_Direction_Addition;
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
		
				alarm[2] = 1;
				alarm[4] = 1;
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
					image_angle = point_direction(x,y, _mx, _my) + shot_stats.Shot_Angle_Relative;	
				}
				
				if shot_stats.Shot_Image_Direction != -1 {
					image_angle = shot_stats.Shot_Image_Direction;
				}
				
		    }
			_prime_shot = false
			speedFac += 0.4;
		}
    
	    dir += _cw.Shot_Spread;
	    _Shot_Current_Count++;
	}

	if _cw.Shot_Power > 0 {
		scr_Soul_Stretch("Horizontal", sqrt(_cw.Shot_Power) / 20);
	}
	if _cw.Shot_Weapon_Lean != 0 {
		speed = _cw.Shot_Weapon_Lean;
		friction = 1;
		direction = point_direction(x,y, _mx, _my);
	}
   



}
