// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// location: soul damage calculations

function scr_B14_Heart(truedam){

	if global.B[14] > 0 {
		if truedam < 1 {
			truedam = 1	
		}
		
		var dam = truedam;

	    var current_weapon_stats = scr_Setup_Default_Shot_Stats();
		
		current_weapon_stats = {
			Shot_Spread: 360 / global.B[14],
			Shot_Accuracy: 360,
			Shot_Count: global.B[14],
			Shot_Sprite: "spr_Vengeful_Heart_Shot",
			Shot_Type: "obj_Lesser_Soul_Shot",
			Shot_Speed: 0.6 + random(0.8),
			Shot_Acceleration: 0.02,
			Shot_Power: dam,
			Shot_Armour_Pierce: 10,
			Shot_Extra_Hits_Frequency: 30,
			Shot_Pierce: 100,
			Shot_Knock_Back: 15,
			Shot_Life_Span: 375,
			Shot_Shield_Type: 3,
			Shot_Shield_Power: dam / 2,
			Shot_Homing_Type: 2,
			Shot_Homing_Speed: 5,
			Shot_Homing_Range: 3000,
			Shot_Size: 0.25 + (sqrt(truedam) / 6),
			Shot_Init_Grow: 0
		};
		
		current_weapon_stats = scr_Setup_Weapon_Stats(current_weapon_stats);
		scr_Shot_Creation(current_weapon_stats);
	}

}