// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Soul Alarm 4

function scr_P08(){

	if global.P[8] > 0 {
		
		var _c_wp = global.currentweapon

		if scr_Non_Projectile_Weapon(_c_wp) {
			exit;	
		}
		
		current_weapon_stats = scr_Setup_Default_Weapon_Stats(_c_wp)
		
		//scr_Default_Weapon_Stats();
		
		var _delay = current_weapon_stats.Delay / scr_Class_Stat_Firerate_Multiplier();
		
		global.trailing_off += global.P[8] * 4 / _delay
		
		while global.trailing_off >= 1 {
			
			global.trailing_off -= 1;
		
			current_weapon_stats.Shot_Speed = 0
			current_weapon_stats.Shot_Forward = 0;
			current_weapon_stats.Shot_Lifespan = current_weapon_stats.Shot_Lifespan * 2
			current_weapon_stats.Shot_Lobbing = true
			current_weapon_stats.Shot_Power = current_weapon_stats.Shot_Power * 0.5;
			current_weapon_stats.Shot_Size = current_weapon_stats.Shot_Size * 0.7;
			
			scr_setup_weapon_stats(current_weapon_stats);
			
			barrage = false;
			minion = false;
			spawnProjectile = true;
		
			scr_Hard_Coded_Weapon_Stats(_c_wp);
		
			Shot_Stats.Shot_Height += 20
			Shot_Stats.Shot_Fall_Speed = -0.2
			
			var _dist = Shot_Stats.Shot_Height;
			var _time = Shot_Stats.Shot_Lifespan;
			var _vel = Shot_Stats.Shot_Fall_Speed;
			
			// velocity is backwards
	        Shot_Stats.Shot_Gravity = ((2 * _dist) / (_time * _time)) + (_vel / _time)
			
			scr_Weapon_Output(spawnProjectile, minion)
		
		}
		
	}
}