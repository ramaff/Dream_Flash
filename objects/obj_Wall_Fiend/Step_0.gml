for(i = 0; i <= 49; i++) {
    bosspoisontime[i]--;
    bossbleedtime[i]--;
    bossfiretime[i]--;
    bossweakentime[i]--;
    bossstaggertime[i]--;
    
    if bosspoison[i] != 0 and bosspoisontime[i] <= 0 {
        bosspoisontime[i] = bosspoisonmaxtime[i];
        bosspoisonticks[i]--;
        
        bosshealth -= bosspoison[i];
        
        scr_Status_Damage_Display(bosspoison[i], c_green);
        
        if bosspoisonticks[i] <= 0 {
            bosspoison[i] = 0;
            bosspoisontime[i] = 0;
            bosspoisonmaxtime[i] = 0;
        }
    }
    if bossbleed[i] != 0 and bossbleedtime[i] <= 0 {
        bossbleedtime[i] = bossbleedmaxtime[i];
        bossbleedticks[i]--;
        
        bosshealth -= bossbleed[i];
        
        scr_Status_Damage_Display(bossbleed[i], c_red);
        
        if bossbleedticks[i] <= 0 {
            bossbleed[i] = 0;
            bossbleedtime[i] = 0;
            bossbleedmaxtime[i] = 0;
        }
    }
    if bossfire[i] != 0 and bossfiretime[i] <= 0 {
        bossfiretime[i] = bossfiremaxtime[i];
        bossfireticks[i]--;
        
        bosshealth -= bossfire[i];
        
        scr_Status_Damage_Display(bossfire[i], c_orange);
        
        if bossfireticks[i] <= 0 {
            bossfire[i] = 0;
            bossfiretime[i] = 0;
            bossfiremaxtime[i] = 0;
        }
    }
    
    
    if bossweaken[i] != 0 and bossweakentime[i] <= 0 {
        bossweaken[i] = 0;
    }
    
    if bossstagger[i] != 0 and bossstaggertime[i] <= 0 {
        bossstagger[i] = 0;
    }
}

bossfreezetime--;
bossstuntime--;

if bossfreeze != 0 and bossfreezetime <= 0 {
    bossfreeze = 0;
    bossattackspeed = bossattackspeedmax;
    bossmovespeed = bossmovespeedmax;
}

if bossstun != 0 and bossstuntime <= 0 {
    bossstun = 0;
    bossattackspeed = bossattackspeedmax;
    bossmovespeed = bossmovespeedmax;
}

if currentphase >= finalphase
if bosshealth <= 0 {
    instance_destroy();
}
    

scr_Boss_Soul_Hitbox(sprite_index);
