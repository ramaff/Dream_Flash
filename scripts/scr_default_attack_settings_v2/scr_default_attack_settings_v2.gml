function scr_default_attack_settings_v2() {
	
		// XB05
		boss_bullet_count_modded = false;
		
		attack_stats = scr_base_bullet_stats(bossbulletspeed * 1.5, bosspower, bossaccuracy, id);
    
	    minion_count = 1;
	    minion_type = noone;
	    minion_maxhealth = bossmaxhealth;
	    minion_health = bossmaxhealth;
	    minion_power = bosspower;
	    minion_knockdefense = bossknockdefense - 10;
	    minion_movespeed = bossmovespeed;
	    minion_attackspeed = bossattackspeed;
	    minion_accuracy = bossaccuracy;    
	    minion_defense = bossdefense;
	    minion_bulletspeed = bossbulletspeed;
	    minion_knockbackforce = bossknockbackforce;
	    minion_contactdamage = bosscontactdamage;
		minion_target = other.id;
		minion_spawn_animation = noone;
		
		minion_dir = 0;
		minion_speed = 0;
	
		minion_xx = 0;
		minion_yy = 0;

}

function scr_base_bullet_stats(_boss_bullet_speed, _bullet_power, _bullet_accuracy = 1, _bullet_origin = bullet_stats.bullet_origin) {
	return {
		
		bullet_type: "obj_basic_bullet_v2",
		bullet_sprite: "spr_Glowy_Enemy_Shot",
		bullet_speed: _boss_bullet_speed,
		bullet_power: _bullet_power,
		bullet_friction: 0,
		bullet_min_speed: 0,
		bullet_direction: (-10 + random(20)) / _bullet_accuracy,
		bullet_life_span: 180,
		bullet_lob_time: 40,
		bullet_size: 0.5,
		bullet_size_max: 0.5,
		bullet_count: 1,
		bullet_spread: 0,
		bullet_image_speed: 1,
		bullet_direction_angle: 0,
		bullet_depth: 0,
		bullet_champ: 0,
		bullet_part: 0,
		bullet_part_sprite: "spr_Essence_Trail_Bit",
		bullet_part_area: 16,
		bullet_part_frequency: 5,
		bullet_part_life: 30,
		bullet_part_color1: c_white,
		bullet_part_color2: c_white,
		bullet_part_size: 0.5,
		bullet_part_speed: 0,
		bullet_crowd_direction: 0,
		bullet_crowd_speed: 0,
		bullet_crowd_acceleration: 0,
		bullet_bounce_height: 0,
		bullet_bounce_speed: 4,
		bullet_bounce_direction: 1,
		bullet_bounce_gravity: 0,
		bullet_charged: false,
		boss_xoffset: 0,
		boss_yoffset: 0,
		bullet_blend: c_white,
		bullet_alpha: 1,
		bullet_fade: 1,
		soul_shot_block: 0,
		bullet_id: id,
		bullet_origin: _bullet_origin,
		bullet_hit_list: {},
		bullet_hit_ID: noone,
		boss_radius: 0,
		boss_xoffset: 0,
		boss_yoffset: 0,
		bullet_speedfac_min: 1,
		bullet_speedfac_add: 0,
		bullet_timefac_min: 1,
		bullet_timefac_add: 0,
		bullet_stun: 0,
		bullet_stun_time: 0,
		bullet_poison_omen: 0,
		bullet_sleep: 0,
		bullet_sleep_time: 0,
		bullet_crowd_direction: 0,
		bullet_crowd_speed: 0,
		bullet_crowd_acceleration: 0,
		bullet_target: id,
		homing_speed: 1,
		wave_strength: 0,
		wave_time: 0,
		angular_velocity: 0,
		angular_acceleration: 0,
		follow_bullets: 0
	}	
}
