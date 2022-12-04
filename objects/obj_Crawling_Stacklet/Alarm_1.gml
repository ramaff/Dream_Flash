if champ = 0 || champ = 1 {
    if currentphase = 1 || 2 {
        bossattack = 1;
        
        if bossattack = 1 {
            if patterncount > 0 {
            bullet_direction += (-15 + random(30)) / bossaccuracy;
            scr_Just_Shoot();
            alarm[1] = 1 + 5 / bossattackspeed;
            patterncount -= 1;
            }
        }
    }
}

