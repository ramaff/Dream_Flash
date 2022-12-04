
if soulDeathFadeSpeed > 0 {
    image_alpha -= soulDeathFadeSpeed;
}

//// This needs to be fixed /////

scr_State_Form();

scr_Basic_Soul_Hitboxes();
//// >>>>>> >> >> >>>>>> >> > > > > > > >


scr_Soul_Particle_Step();

scr_Soul_Outside_Check();
if soulDeathFadeSpeed = 0 {
    scr_Invincibility_Frames();
}

scr_Soul_Item_Duration_Progress();

scr_Soul_Status_Step();

scr_Soul_Item_Step_Before();

var dx = keyboard_check(ord(global.gameMoveRight)) - keyboard_check(ord(global.gameMoveLeft));
var dy = keyboard_check(ord(global.gameMoveDown)) - keyboard_check(ord(global.gameMoveUp));

smovefactor = 1;

smovemultiplier = smovefactor * smovementspeed * ((10 + smovementfactorbuffamount) / 10) * ((10 + smovementfactor) / 10) * ((80 + global.souldexterity + global.souldexterityTemp) / 80);

var soulDirectionAttempt = 0;
var move = false;

if !(instance_exists(Tutorial_Control)) {
	if soulstun = 0 and soulfreeze = 0 and soulsleep = 0 {
		move = true;
	}
}

if ((dx != 0) or (dy != 0)) and move {
	soulDirectionAttempt = 90 - dx * 90;
	if dx != 0 {
		soulDirectionAttempt += 45 * -dy * dx;
	} else {
		soulDirectionAttempt = -dy * 90;
	}
    var l = sqrt(dx*dx + dy*dy);
    dx /= l;
    dy /= l;
    shealthregenfactor = 0.8 * ((160 + global.soulbliss + global.soulblissTemp) / 160) * ((10 + sregenfactorbuffamount) / 10);
    energyregenfactor = 0.9 * sstatefirerate * ((120 + global.soulbliss + global.soulblissTemp) / 120) * ((10 + senergyregenfactor) / 10);
    sdelayregenfactor = 1 * sstatefirerate * ((200 + global.soulvanity + global.soulvanityTemp) / 200) * ((10 + sfireratefactorbuffamount) / 10);

    scr_D14();
	
	soulmovetimer++;
	if soulmovetimer mod 20 = 0 {
		scr_Soul_Stretch("Horizontal", 0.2)
	}
	if soulmovetimer mod 10 = 0 {
		//scr_Soul_Move_Particle(x,y,"Move");	
	}
	var aDif = angle_difference(soulDirectionAttempt, soulCurrentDirection);
	
	/*
	if soulDirectionAttempt = soulCurrentDirection || soulFriction >= 1 {
		soulCurrentSpeed += 0.2 * smovemultiplier * soulAcceleration;
		soulCurrentDirection = soulDirectionAttempt;
	} else {
		if abs(aDif) > 90 {
			soulCurrentSpeed -= 0.2 * smovemultiplier * soulFriction;
		} /*else {
			var aChange = soulFriction * 45;
			if abs(aDif) < aChange {
				soulCurrentDirection = soulDirectionAttempt;	
			} else if aDif > 0 {
				soulCurrentDirection -= aChange;
			} else if aDif < 0 {
				soulCurrentDirection -= aChange;
			}
		} */
		/*if soulCurrentSpeed <= 0 {
			soulCurrentDirection = soulDirectionAttempt;	
		} 
	}*/
	soulCurrentHorizontalSpeed += lengthdir_x(smovemultiplier * 0.2 * soulAcceleration, soulDirectionAttempt)
	soulCurrentVerticalSpeed += lengthdir_y(smovemultiplier * 0.2 * soulAcceleration, soulDirectionAttempt)
	var maxHSpeed = abs(lengthdir_x(smovemultiplier, soulDirectionAttempt))
	var maxVSpeed = abs(lengthdir_y(smovemultiplier, soulDirectionAttempt))
	if soulFriction >= 1 {
		if abs(soulCurrentHorizontalSpeed) > maxHSpeed {
			if soulCurrentHorizontalSpeed > maxHSpeed {
				soulCurrentHorizontalSpeed = maxHSpeed;
			} else {
				soulCurrentHorizontalSpeed = -maxHSpeed;
			}
		}
		if abs(soulCurrentVerticalSpeed) > maxVSpeed {
			if soulCurrentVerticalSpeed > maxVSpeed {
				soulCurrentVerticalSpeed = maxVSpeed;
			} else {
				soulCurrentVerticalSpeed = -maxVSpeed;
			}
		}
	} else {
		maxHSpeed = maxHSpeed * 2;
		maxVSpeed = maxVSpeed * 2;
		if abs(soulCurrentHorizontalSpeed) > maxHSpeed {
			if soulCurrentHorizontalSpeed > maxHSpeed {
				soulCurrentHorizontalSpeed = maxHSpeed;
			} else {
				soulCurrentHorizontalSpeed = -maxHSpeed;
			}
		}
		if abs(soulCurrentVerticalSpeed) > maxVSpeed {
			if soulCurrentVerticalSpeed > maxVSpeed {
				soulCurrentVerticalSpeed = maxVSpeed;
			} else {
				soulCurrentVerticalSpeed = -maxVSpeed;
			}
		}
	}
} else {
    shealthregenfactor = 1 * ((160 + global.soulbliss + global.soulblissTemp) / 160) * ((10 + shealthidleregenfactor) / 10) * ((10 + sregenfactorbuffamount) / 10);
    energyregenfactor = 1 * sstatefirerate * ((120 + global.soulbliss + global.soulblissTemp) / 120) * ((10 + senergyidleregenfactor) / 10) * ((10 + senergyregenfactor) / 10);
    sdelayregenfactor = 1 * sstatefirerate * ((200 + global.soulvanity + global.soulvanityTemp) / 200) * ((10 + sfireratefactorbuffamount) / 10);
	soulmovetimer = 0;
	
	if abs(soulCurrentHorizontalSpeed) > 0 {
		var hFriction = smovemultiplier * 0.2 * soulFriction
		if abs(soulCurrentHorizontalSpeed) < hFriction {
			soulCurrentHorizontalSpeed = 0;	
		}
		if soulCurrentHorizontalSpeed > 0 {
			soulCurrentHorizontalSpeed -= hFriction
		} else if soulCurrentHorizontalSpeed < 0 {
			soulCurrentHorizontalSpeed += hFriction
		}
	}
	if abs(soulCurrentVerticalSpeed) > 0 {
		var vFriction = smovemultiplier * 0.2 * soulFriction
		if abs(soulCurrentVerticalSpeed) < vFriction {
			soulCurrentVerticalSpeed = 0;	
		}
		if soulCurrentVerticalSpeed > 0 {
			soulCurrentVerticalSpeed -= vFriction
		} else if soulCurrentVerticalSpeed < 0 {
			soulCurrentVerticalSpeed += vFriction
		}
	}
}
soulCurrentDirection = soulDirectionAttempt;

/*
if soulCurrentHorizontalSpeed < 0 {
	soulCurrentHorizontalSpeed = 0;	
}
if soulCurrentVerticalSpeed < 0 {
	soulCurrentVerticalSpeed = 0;	
} */
	
if soulFriction < 1 {
	soulFriction += 0.1;	
}
if soulAcceleration < 1 {
	soulAcceleration += 0.1;	
}
scr_Scrub_Soul_Slip();
//soulFriction = 0.1;

scr_Soul_Item_Step_After();

/*
if !(instance_exists(Tutorial_Control)) {
	if soulstun = 0 and soulfreeze = 0 and soulsleep = 0 {
		
	}
} else {
		
} */

x += soulCurrentHorizontalSpeed;
y += soulCurrentVerticalSpeed;

//image_speed = 0;
if dx > 0 {
    size = -0.5;
} 
if dx < 0 {
    size = 0.5;
}

if scurrentstate = "Powering Up" {
	scr_State_Powering_Up();	
}

scr_State_Power_Down();

if (global.P[1] = 0 and global.C[9] = 0) || global.C[11] > 0 {
	if global.bosscount > 0 {
	    senergy += 0.333 * energyregenfactor * ((60 + global.soulessence + global.soulessenceTemp) / 60);
	} else {
	    senergy += 3.33 * energyregenfactor * ((60 + global.soulessence + global.soulessenceTemp) / 60);
	}
	var essenceCap = smaxenergy + (1.25 * (global.soulessence + global.soulessenceTemp));

	if senergy > essenceCap {
		
		if global.C[11] > 0 {
			scr_C11_Essup(senergy - essenceCap);
		}
		
	    senergy = essenceCap;
	}
} else {//if global.P[1] > 0 {
	//scr_P01();
//} if global.C[9] > 0 {
	var essenceCap = smaxenergy + (1.25 * (global.soulessence + global.soulessenceTemp));
	
	/*if senergy > essenceCap {
		if global.C[11] > 0 {
			scr_C11_Essup(senergy - essenceCap);
			senergy = essenceCap;
		}
	} */
	
	if senergy < essenceCap {
		if global.bosscount > 0 {
		    senergy += 0.5 * energyregenfactor * ((60 + global.soulessence + global.soulessenceTemp) / 60);
		} else {
		    senergy += 5 * energyregenfactor * ((60 + global.soulessence + global.soulessenceTemp) / 60);
		}
	}
}

if stransformedstate != "None"{
	var sCap = smaxstate;
	
	var sFac = ((60 + global.soulstate + global.soulstateTemp) / 60);
	
	/*
	if sstatecharge > essenceCap {
		if global.C[11] > 0 {
			scr_C11_Essup(0.5 * sstateregenfactor * sFac);
		}
	} */
	
	if sstatecharge > sCap {
		sstatecharge = sCap;
	}
	
	if scurrentstate = "Base" {
		//sstatecharge += 5 * sstateregenfactor * sFac;
	}
	if scurrentstate != "Base" and global.bosscount > 0 {
		sstatecharge -= sstatedrainrate;
	}
}

sdelay -= sdelayregenfactor;
if sdelay < 0 {
    sdelay = 0;
}
/*
if senergy < 0 {
    senergy = 0;
}
*/

tdelay -= tdelayregenfactor;
if tdelay < 0 {
    tdelay = 0;
}

if soulDeathFadeSpeed = 0 {
    if global.totalhearts <= 0 {
		scr_Delete_Run();
        soulDeathFadeSpeed = 0.02;
        alarm[9] = 72;
    }
}

/*
//Horizontal collisions
if place_meeting(x+hspeed,y,obj_The_Border) {
        while !place_meeting(x+sign(hspeed),y,obj_The_Border) {
                 x += sign(hspeed);
        }
        hspeed = 0;
}
x += hspeed;

//Vertical collisions
if place_meeting(x,y+vspeed,obj_The_Border) {
        while !place_meeting(x,y+sign(vspeed),obj_The_Border) {
                 y += sign(vspeed);
        }
        vspeed = 0;
}
y += vspeed;
*/

//sprite_index = spr_New_Soul_Swaying;
//sprite_index = spr_The_Soul_Trail_Sway;
//image_index = 4;

//sprite_index = spr_Snake_Soul;

if soulsleep = 1 {
	scr_Soul_Attack_Think();	
}

scr_Soul_Size_Lerp(0.15);

if scurrentstate = "Mechanical" {
	image_angle = lerp(image_angle, 0, 0.15);	
	if dx > 0 {
	    image_angle += -2;
	} 
	if dx < 0 {
	    image_angle += 2;
	}
} else {
	image_angle = 0;	
}