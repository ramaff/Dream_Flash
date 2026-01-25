
if soulDeathFadeSpeed > 0 {
    image_alpha -= soulDeathFadeSpeed;
}

//// This needs to be fixed /////

scr_State_Form();

//scr_Basic_Soul_Hitboxes();
//// >>>>>> >> >> >>>>>> >> > > > > > > >

scr_Soul_Outside_Check();
if soulDeathFadeSpeed = 0 {
    scr_Invincibility_Frames();
}

if InputCheck(INPUT_VERB.SHOOT ) || variable_struct_exists(soul_step_status_effects, "temper") {
	event_user(0)	
}
if InputReleased(INPUT_VERB.SHOOT ) {
	event_user(1)	
}
if InputPressed(INPUT_VERB.WARP ) {
	event_user(2)
}

scr_Soul_Status_Step();

scr_Execute_List_Of_Scripts(soul_step_before_scripts)

smovefactor = 1;

var smovemultiplier = smovefactor * smovementspeed * ((10 + scr_Get_Status_Magnitude(id, "movement_mult")) / 10) * ((10 + smovementfactor) / 10);
currentenergyregenfactor = 1;

var soulDirectionAttempt = 0;
var move = false;

if !(instance_exists(Tutorial_Control)) {
	if !variable_struct_exists(soul_step_status_effects, "stun") and !variable_struct_exists(soul_step_status_effects, "freeze") and !variable_struct_exists(soul_step_status_effects, "sleep") {
		move = true;
	}
}

scr_Soul_Status_Effect_Tick(soul_step_status_effects)

var _fric_add = smovemultiplier * (1 - soulFriction)
var _accel = soulAcceleration + 1
if !move {
	_accel = 0;
}

var _speeds = scr_Key_Press_Movement(soulCurrentVerticalSpeed, soulCurrentHorizontalSpeed, smovemultiplier + _fric_add, _accel, soulFriction, true)

soulCurrentVerticalSpeed = _speeds.v_speed
soulCurrentHorizontalSpeed = _speeds.h_speed

if ((soulCurrentHorizontalSpeed != 0) or (soulCurrentVerticalSpeed != 0)) {
	
    shealthregenfactor = 0.8 * ((10 + scr_Get_Status_Magnitude(id, "regen_mult")) / 10);
    currentenergyregenfactor = 0.9 * sstatefirerate * ((10 + senergyregenfactor) / 10) * ((10 + scr_Get_Status_Magnitude(id, "essence_mult")) / 10);
    sdelayregenfactor = 1 * sstatefirerate * ((10 + scr_Get_Status_Magnitude(id, "firerate_mult")) / 10);
	
	soulmovetimer++;
	var _total_speed = sqrt((soulCurrentHorizontalSpeed * soulCurrentHorizontalSpeed) + (soulCurrentVerticalSpeed * soulCurrentVerticalSpeed))
	scr_Soul_Stretch("Horizontal", scr_Wave(0, 0.05, 2.5 / _total_speed, 0))
	//if soulmovetimer mod 20 = 0 {
	//	scr_Soul_Stretch("Horizontal", 0.2)
	//}
	
} else {
    shealthregenfactor = 1 * ((10 + shealthidleregenfactor) / 10) * ((10 + scr_Get_Status_Magnitude(id, "regen_mult")) / 10);
    currentenergyregenfactor = 1 * sstatefirerate * ((10 + senergyidleregenfactor) / 10) * ((10 + senergyregenfactor) / 10);
    sdelayregenfactor = 1 * sstatefirerate * ((10 + scr_Get_Status_Magnitude(id, "firerate_mult")) / 10);
	soulmovetimer = 0;
}
	
if soulFriction < 1 {
	soulFriction += 0.1;
}
if soulAcceleration < 1 {
	soulAcceleration += 0.1;	
}
//soulFriction = 0.1;

scr_Execute_List_Of_Scripts(soul_step_after_scripts)
//scr_Soul_Item_Step_After();

x += soulCurrentHorizontalSpeed;
y += soulCurrentVerticalSpeed;

var essenceCap = smaxenergy;
var _surpass_cap = global.P[1] > 0 || global.C[9] > 0

if (senergy < essenceCap) {
	if !scr_Room_Leavable() {
		senergy += 0.5 * currentenergyregenfactor;
	} else {
		senergy += 5 * currentenergyregenfactor;
	}
}
	
//if senergy > essenceCap and _surpass_cap = false {
//	senergy = essenceCap;
//}

sdelay -= sdelayregenfactor;
if sdelay < 0 {
    sdelay = 0;
}

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

var lerp_speed = 0.15;

soulSizeX = lerp(soulSizeX,abs(size),lerp_speed);
soulSizeY = lerp(soulSizeY,abs(size),lerp_speed);

//image_xscale = soulSizeX; //* (size * 2);
image_yscale = soulSizeY;

if soulCurrentHorizontalSpeed != 0 {
	if soulCurrentHorizontalSpeed > 0 {
		facing_direction = -1;
	} else {
		facing_direction = 1;
	}
}

image_xscale = facing_direction * abs(soulSizeX);
