state = states.normal;

if image_speed = 0 {
	image_speed = 1;
}
if path_speed = 0 {
	path_speed = 1;	
}

exit;

bosshealth -= bosspoison;
bosspoison -= bosspoisondown;

if bosspoison <= 0 {
    bosspoison = 0;
    bosspoisondown = 0;
}

bosshealth -= bossbleed;
bossbleed -= bossbleeddown;

if bossbleed <= 0 {
    bossbleed = 0;
    bossbleeddown = 0;
}

bosshealth -= bossfire;
bossfire -= bossfiredown;

if bossfire <= 0 {
    bossfire = 0;
    bossfiredown = 0;
}

bossweaken -= bossweakendown;

if bossweaken <= 0 {
    bossweaken = 0;
    bossweakendown = 0;
}

bossfreeze -= bossfreezedown;

if bossfreeze <= 0 {
    bossattackspeed = bossattackspeedmax;
    bossmovespeed = bossmovespeedmax;
    
    bossfreezetype = 0;
    bossfreeze = 0;
    bossfreezedown = 0;
    
}

if currentphase >= finalphase
if bosshealth <= 0 {
    instance_destroy();
}

alarm[11] = 30;

