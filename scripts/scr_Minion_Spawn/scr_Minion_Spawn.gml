function scr_Minion_Spawn(_minion_boss_parent = other.id) {

		var _minion_ids = [];
		var _index = 0

	    repeat(minion_count) {
	        with instance_create(x + minion_xx,y + minion_yy, minion_type) {
	                scr_Boss_Status_Setup();
	                projectile_hit_id = noone;
	                projectile_hits = ds_list_create();
	                bossID = id;
					minionbossparent = _minion_boss_parent;
	                bossNum = 0;
	                pathBoss = 0;
					
					if other.minion_spawn_animation != noone {
						sprite_index = other.minion_spawn_animation;
						active_attack = -1;
					}
					
					boss_height = other.minion_height
					y -= boss_height
					
					if boss_height > 50 {
						state = states.leaping
					}
					
					active_attack_cooldown = other.minion_attack_cooldown
				
					champ = other.champ;
					boss_palette = other.boss_palette;
					boss_palette_index = other.boss_palette_index;
                
	                currentphase = 1;
	                finalphase = 1;
	                bossmaxhealth = other.minion_health;
					boss_stored_health = other.minion_health;
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
					
					deadknockdirection = 0;
					miniondir = other.minion_dir;
					direction = miniondir;
					speed = other.minion_speed
					orbitangle = direction;
					
					_minion_ids[_index] = id
	        }
			_index += 1;
	    }
	return _minion_ids


}
