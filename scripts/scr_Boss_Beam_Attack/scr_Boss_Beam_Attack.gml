function scr_Boss_Beam_Attack(space,active = false) {
    var dir = -(bullet_spread * (bullet_count - 1) / 2);
    bulletNum = 0;

    repeat(bullet_count) {
    
        var angle = dir + (bullet_direction); // * ((40 + random(global.soulparanoia)) / 40);
        var length = 0;
    
        if setbeamlength != 0 {
            length = setbeamlength;	
        }
    
        var offsetx = boss_xoffset;
        var offsety = boss_yoffset;
        if bossoffsetangle = 1 {
            offsetx = lengthdir_x(boss_xoffset,angle);
            offsety = lengthdir_y(boss_yoffset,angle);
        }
    
        bossxx[boss_beam_num] = x + offsetx + lengthdir_x(16+space,angle);
        bossyy[boss_beam_num] = y + offsety + lengthdir_y(16+space,angle);
    
        bossxs[boss_beam_num] = x + offsetx + lengthdir_x(16,angle);
        bossys[boss_beam_num] = y + offsety + lengthdir_y(16,angle);

        var beumX = bossxx[boss_beam_num];
        var beumY = bossyy[boss_beam_num];
        var segs = 0;
        
        if setbeamlength = 0 {
            for (length = 0; length < 2048; length++) {
                length += 63;
                segs++;
                if collision_point(beumX + lengthdir_x(length,angle),beumY + lengthdir_y(length,angle),obj_The_Border,false,true) {
                    break;	
                }
                if segs > 39 {
                    break;
                }
            }
        }
        bossbeamlength[boss_beam_num] = length;
        bossbeamangle[boss_beam_num] = angle;
    
        finx[boss_beam_num] = bossxx[boss_beam_num] + lengthdir_x(length,angle);
        finy[boss_beam_num] = bossyy[boss_beam_num] + lengthdir_y(length,angle);
    
        //scr_Boss_Beam_Draw(angle,length);
    
        if active == true{
            
        var damageamount = 0;
        var defenseamount = 0;
    
        with (obj_Soul_Parent) {
            if collision_line(other.x,other.y,other.finx[other.boss_beam_num],other.finy[other.boss_beam_num],self,false,false) {
                if soulinvincibility = 0 {

                damageamount = other.bullet_power;
                defenseamount = scr_Soul_Defense_Calc(id)
                defenseamount = defenseamount / 10;
            
                scr_Soul_Damage_Calculation(damageamount, defenseamount);
                }
            }
        }
        with (obj_Figment_Parent) {
            if collision_line(other.x,other.y,other.finx[other.boss_beam_num],other.finy[other.boss_beam_num],self,false,false) {
                if soulinvincibility = 0 {

                damageamount = other.bullet_power;
                defenseamount = scr_Soul_Defense_Calc(id)
                defenseamount = defenseamount / 10;
            
            
                shealth -= damageamount;

                if shealth <= 0 {
                    instance_destroy();
                }
                }
            }
        }
        }
        boss_beam_num++
    
        bulletNum++;
        dir += bullet_spread;
    }



}
