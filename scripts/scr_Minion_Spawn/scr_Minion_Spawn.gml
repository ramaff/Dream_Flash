function scr_Minion_Spawn() {

	    repeat(minion_count) {
	        with instance_create(x + minion_xx,y + minion_yy, minion_type) {
	                scr_Boss_Status_Setup();
	                projectile_hit_id = noone;
	                projectile_hits = ds_list_create();
	                bossID = id;
					minionbossparent = other.id;
	                bossNum = 0;
	                pathBoss = 0;
					
				
					champ = other.champ;
                
	                currentphase = 1;
	                finalphase = 1;
	                bossmaxhealth = other.minion_health;
	                bosshealth = bossmaxhealth;
	                bosspower = other.minion_power;
	                bossdefense = other.minion_defense;
	                bossknockdefense = other.minion_knockdefense;
	                bossbulletspeed = other.minion_bulletspeed;
	                bossmovespeed = other.minion_movespeed;
	                bossmovespeedmax = bossmovespeed;
	                bossattackspeed = other.minion_attackspeed;
	                bossattackspeedmax = other.bossattackspeedmax;
	                bossaccuracy = other.minion_accuracy;
	                bossknockbackforce = other.minion_knockbackforce;
	                bosscontactdamage = other.minion_contactdamage;
					
					miniondir = other.minion_dir;
					direction = miniondir;
					speed = other.minion_speed
					orbitangle = direction;
	        }
	    }



}
