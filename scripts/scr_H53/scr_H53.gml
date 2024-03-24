// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_H53(){
		
		scr_Default_Weapon_Stats()
		current_weapon_stats = scr_Setup_Default_Shot_Stats()
		
		current_weapon_stats.Shot_Speed = 0;
		current_weapon_stats.Shot_Forward = 0;
		current_weapon_stats.Shot_Lifespan = 105 + random(30);
		current_weapon_stats.Shot_Power = 3;
		current_weapon_stats.Shot_Size = 0.35 + random(0.1);
		current_weapon_stats.Shot_Sprite = "spr_Seething_Fire_Shot";
		current_weapon_stats.Shot_Pierce = 2;
		current_weapon_stats.Shot_Forward = 0;
		current_weapon_stats.Weapon_Split_Hit_Again = 1;
		
		Shot_XX = -20 + random(40);
		Shot_YY = -10 + random(40);
		
		current_weapon_stats.Shot_Trail = 1
		current_weapon_stats.Shot_Trail_Type = "obj_Fire_Part"
        current_weapon_stats.Shot_Trail_Sprite = "spr_Big_Essence_Trail_Bit"
        current_weapon_stats.Shot_Trail_Life = 15
        current_weapon_stats.Shot_Trail_Area = 30
		current_weapon_stats.Shot_Trail_Frequency = 5;
        current_weapon_stats.Shot_Trail_Fade = 0
		current_weapon_stats.Shot_Trail_Direction = 45 + random(90);
		current_weapon_stats.Shot_Trail_Speed = 1 + random(3);
        current_weapon_stats.Shot_Trail_Color1 = [255,42,0]
        current_weapon_stats.Shot_Trail_Color2 = [255,42,0]
		
		current_weapon_stats.Shot_Extra_Stats = [
            {
                Shot_Count: 1,
                Shot_Sprite: "spr_Seething_Fire_Shot",
                Shot_Type: obj_Lesser_Soul_Shot,
                Shot_Extra_Hit_Frequency: 15,
                Shot_Power: 1,
                Shot_Lifespan: 1,
                Shot_Alpha: 0
            }
        ]
			
		current_weapon_stats = scr_Setup_Weapon_Stats(current_weapon_stats);
			
		barrage = false;
		minion = false;
		spawnProjectile = true;
			
		scr_Weapon_Output(spawnProjectile, minion)


}