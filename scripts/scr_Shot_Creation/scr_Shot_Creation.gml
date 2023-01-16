function scr_Shot_Creation() {
	scr_Spike_Soul_Extra();
	scr_Casting_Soul_Manual_Synergy();
	scr_Scrub_Soul_Weapon_Mod();
	
	scr_E10();
	scr_A12();
	scr_D06();
	scr_D11();
	scr_V09_Add();
	
	scr_OB06();
	scr_OC06();
	//scr_OC03();
	
	
	// Note
	
	// Seems that making stubborn + multitasking not do insane multiplication
	// would require that Shot_Default_Count only gets set initially and not for each barrage shot?
	// So add a boolean to each script signifying if its a stubborn barrage or not?
	
	////

	//show_debug_message(string(Shot_Count))
	//show_debug_message(string(Shot_Repetition[bi]))
	
	if Shot_Repetition[bi] >= 1 {
		Shot_Count = Shot_Default_Count[bi];
	}

	repeat(Shot_Count) {
		sadd = global.soulshotamountaddchance + irandom(99);

		if sadd >= 100 {
		    Shot_Count += 1;
		}
	}

	Shot_Count += global.soulshotamountadd + global.soulshotamountaddtemp;

	//Shot_Default_Count = Shot_Count;
	/*
	global.D10activate += global.D[10] * 0.3;

	if global.D10activate >= 1 {
		Shot_Count = Shot_Count * (global.D10activate + 1)
		global.D10activate -= floor(global.D10activate);
	}
	*/
	scr_D10();

	if Shot_Count > 1 {
	    if Shot_Spread < 1 {
	        Shot_Spread = 10;
	    }
	}

	dir = -(Shot_Spread * (Shot_Count - 1) / 2) + (-(Shot_Accuracy / 2) + random(Shot_Accuracy)) + Shot_Direction_Offset;

	Shot_Current_Count = 0;


	if soulshotmouse = 0 {
		Shot_Mouse = 0;
		Shot_Direction = soulshotdirection;
	}
	
	if Shot_Repetition[bi] >= 1 {
		Shot_Direction = Shot_Repetition_Direction[bi];
	}
	
	if Shot_Mouse {
		actual_shot_direction = point_direction(x,y,mouse_x,mouse_y);
	} else if !Shot_Mouse {
		actual_shot_direction = Shot_Direction;
	} else if soulshotmouse = 0 {
		actual_shot_direction = soulshotdirection;
	}
	if Shot_Boss_Aim {
		if instance_exists(obj_Boss_Parent) {
			actual_shot_direction = point_direction(x,y,instance_nearest(x,y,obj_Boss_Parent).x,instance_nearest(x,y,obj_Boss_Parent).y);
		}
	}
	
	if Shot_Repetition[bi] == Shot_Repetition_Max[bi] - 1 {
		Shot_Repetition_Direction[bi] = actual_shot_direction
	}

	repeat(Shot_Count) {
	    if Weapon_Vomit = 1 {
	        dir = (-(Shot_Accuracy / 2) + random(Shot_Accuracy));
	    }
		var actual_shot_direction = 0;
	    xx = 0;
	    yy = 0;
		
		if Shot_Mouse {
			actual_shot_direction = point_direction(x,y,mouse_x,mouse_y);
		} else if !Shot_Mouse {
		    actual_shot_direction = Shot_Direction;
		} else if soulshotmouse = 0 {
			actual_shot_direction = soulshotdirection;
		}
		if Shot_Boss_Aim {
			if instance_exists(obj_Boss_Parent) {
				actual_shot_direction = point_direction(x,y,instance_nearest(x,y,obj_Boss_Parent).x,instance_nearest(x,y,obj_Boss_Parent).y);
			}
		}
		var shotdirectionaddition = dir * ((40 + random(global.soulparanoia)) / 40) / saccuracy;
		actual_shot_direction += shotdirectionaddition + Shot_Angle_Relative;
		
	   // if Shot_Forward = 1 {
			var forward = 16;
			//if Shot_Forward_Amount = 0 {
				forward = Shot_Forward_Amount;	
			//}
	        xx = lengthdir_x(forward,actual_shot_direction);
	        yy = lengthdir_y(forward,actual_shot_direction);
			
			if (obj_Soul_Parent.scurrentstate = "Bleeding" and Weapon_Melee = 0) {
		        xx = lengthdir_x(50,actual_shot_direction);
		        yy = lengthdir_y(50,actual_shot_direction);
			}
	    //} 
		
	    if Shot_XX != 0 || Shot_YY != 0 {
	        xx = Shot_XX;
	        yy = Shot_YY;
	    }
	    if Weapon_Soul_Maintain = 1 {
	        Weapon_X_Maintain = xx;
	        Weapon_Y_Maintain = yy;
	    }
	
		if Shot_Ground = 1 {
			inscheck = 1
			scr_Check_Shot_Ground();	
		
			if inscheck = 0 {
				//exit;	
			}
		}
	
		scr_Weapon_Part_Create();
		
		var mechFac = 1 + scr_Mechanical_Shot_Add();
		var speedFac = 1;
		if mechFac > 1 and Shot_XX = 0 and Shot_YY = 0 {
			Shot_Direction = point_direction(x,y,mouse_x,mouse_y) 
			if Shot_Direction < 90 || Shot_Direction > 270 {
				xx = 50;	
				yy = 3;
				if Shot_Direction > 60 and Shot_Direction < 90 {
					Shot_Direction = 60;	
				}
				if Shot_Direction < 300 and Shot_Direction > 270 {
					Shot_Direction = 300;	
				}
			} else {
				xx = -50;
				yy = 6;
				if Shot_Direction > 240 {
					Shot_Direction = 240;	
				}
				if Shot_Direction < 120 {
					Shot_Direction = 120;	
				}
			}
		}
		
		
		var shxx = x + xx;
		var shyy = y + yy;
		
		scr_E14_Shot_Mod();
		
		
		repeat(mechFac) {
			
		    with instance_create(shxx,shyy,Shot_Type) {
		        scr_Default_Shot_Stats();
        
				shotorigin = obj_Soul_Parent;
		        target = noone;
		        sprite_index = other.Shot_Sprite;
		        shotsize = other.Shot_Size * ((1 + other.sshotsizefactor) / 1);
		        image_xscale = shotsize;
		        image_yscale = shotsize;
		        shotspeed = (other.Shot_Speed + other.sshotspeedaddition) * (other.Weapon_Vomit_Min_Speed + random(other.Weapon_Vomit_Max_Speed - other.Weapon_Vomit_Min_Speed)) * other.sshotspeed / 10;
		        shotpowermax = (other.Shot_Power + other.spoweradd) * ((10 + other.spowerfactor + other.sattackfactorbuffamount) / 10) * other.spower / 10 * scr_Class_Stat_Damage_Multiplier();
		        shotpower = shotpowermax;
		        shotPowerLevel = other.Shot_Power;
		        shotknockback = other.Shot_Knockback * other.sshotknockback / 10;
		        shotarmourpierce = other.Shot_Armour_Pierce + other.sarmourpierce;
				direction = actual_shot_direction;
		        //
				
		        if mechFac > 1 {
					shotspeed = shotspeed * speedFac;
					direction = other.Shot_Direction;
				}
				speed = shotspeed;
		        shotlifespan = other.Shot_Lifespan * (other.Weapon_Vomit_Min_Life + random(other.Weapon_Vomit_Max_Life - other.Weapon_Vomit_Min_Life)) * ((10 + other.sshotlifefactor) / 10);
		        alarm[0] = shotlifespan;
		        scr_Extra_Shot_Stats();
		        scr_Weapon_Direction_List();
			
				shottimer = shotlifespan;
			
		        shotmelee = other.Weapon_Melee;
		        if shotwavetime > 0 {
		            alarm[9] = shotwavetime;
		        }
		        shotsizemax = shotsize;
		        if shotgrow > 0 {
		            image_xscale = shotgrowsize;
		            image_yscale = shotgrowsize;
		        }
		        if shotairtarget = 1 {
		            x = obj_Astral_Indicator.x;
		            y = obj_Astral_Indicator.y + 8 - (shotspeed * 45);
		            direction = 270;
		            direction += shotdirectionaddition;
		        }
				if other.Shot_Mouse_Origin = 1 {
					x = obj_Astral_Indicator.x;
		            y = obj_Astral_Indicator.y;
				}
		        if shotorbitaltype > 0 {
		            shotOrbit = other.Shot_Orbital_Range;
		            shotAngle = point_direction(x,y,mouse_x,mouse_y);
		            shotAngle += other.Shot_Current_Count * (360 / other.Shot_Count)
		            shotCenterX = other.x;
		            shotCenterY = other.y;
					speed = 0;
		        }
				if shotmovement = 0 {
					speed = 0;	
				}
				if shotlight = 1 {
					with instance_create(x,y,obj_LightS) {
						target = other.id;
						lightsize = other.shotlightsize;
						//lightsize = 1;
					}
				}
			
				//scr_Shot_Particle_Setup();
		
				alarm[2] = 1;
				if alarm[0] < 1 {
					alarm[0] = 1;	
				}
				alarm[3] = 15;
			
				scr_Beam_Create(shxx,shyy);
				
				/*if other.Shot_Beam = 2 {
					shotsize = other.Shot_Size * ((1 + other.sshotsizefactor) / 1);
			        image_xscale = shotsize;
			        image_yscale = shotsize * 1.33;
				} */
				
				if other.Shot_Point_Angle {
					image_angle = direction;
				}
				
				if other.Shot_Angle_Relative != 0 {
					image_angle = point_direction(x,y,mouse_x,mouse_y) + other.Shot_Angle_Relative;	
				}
				
				if other.Shot_Image_Direction != -1 {
					image_angle = other.Shot_Image_Direction;
				}
				
			
		        /*
		        if other.Shot_Beam = 1 {
        
		            var xx = x;
		            var yy = y;
		            var angle = direction;  
		            var length = 0;
            
		            while(!collision_point(xx + lengthdir_x(length,angle),yy + lengthdir_y(length,angle),obj_The_Border,true,true)) {
		                length++;
		            }
        
		            image_xscale = length;
		            image_yscale = shotsize;
		        }
		        */
		    }
			speedFac += 0.4;
		}
    
	    dir += Shot_Spread;
	    Shot_Current_Count++;
	}

	if Shot_Power > 0 {
		scr_Soul_Stretch("Horizontal", sqrt(Shot_Power) / 20);
	}
	if Shot_Weapon_Lean > 0 {
		speed = Shot_Weapon_Lean;
		friction = 1;
		direction = point_direction(x,y,mouse_x,mouse_y);
	}
   



}
