function scr_C12(_current_weapon_stats) {

	    if global.C[12] > 0 {
	        if senergy < _current_weapon_stats.Real_Essence_Cost {
				senergy += 10 * global.C[12];
				var damageamount = 1;
				var defenseamount = 0;
				scr_Soul_Damage_Calculation(damageamount, defenseamount);
				
				repeat(6 * global.C[12]) {
					var current_weapon_stats = scr_Setup_Default_Shot_Stats();
    
					current_weapon_stats = {
					    "Shot_Power": 5,
				        "Shot_Type": "obj_Defense_Soul_Shot",
						"Shot_Bounce": 1,
						"Shot_Friction": 1,
						"Shot_Accuracy": 360,
				        "Shot_Speed": 5 + random(10),
				        "Shot_Size": 0.3 + random(0.2),
				        "Shot_Sprite": "spr_Pour_Heart_Out_Pool",
				        "Shot_Life_Span": 270 + random(60),
				        "Shot_Extra_Hits_Frequency": 30,
				        "Shot_Ticks_Modifiable": true,
				        "Shot_Forward_Amount": 0,
						"Shot_Depth": 100,
				        "Shot_Pierce": 999,
				        "Shot_Damage": false,
				        "Shot_Refreshing": 1,
				        "Shot_Trail": 1,
				        "Shot_Trail_Angle_Inherit": false,
				        "Shot_Trail_Type": "obj_Friction_Part_Front",
				        "Shot_Trail_Sprite": "spr_Healing_Essence_Part",
				        "Shot_Trail_Life": 30,
				        "Shot_Trail_Area": 100,
				        "Shot_Trail_Frequency": 30,
				        "Shot_Trail_Fade": 0,
				        "Shot_Trail_Direction": 90,
				        "Shot_Trail_Speed": 4,
				        "Shot_Trail_Color_1": [0, 255, 255],
				        "Shot_Trail_Color_2": [155, 255, 255]
					}
    
					current_weapon_stats = scr_Setup_Weapon_Stats(current_weapon_stats);
				    scr_Shot_Creation(current_weapon_stats);
				}
	        }
	    }
	//}

}
