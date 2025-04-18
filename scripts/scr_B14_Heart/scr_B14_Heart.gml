// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// location: soul damage calculations

function scr_B14_Heart(truedam){

	if global.B[14] > 0 {
		if truedam < 1 {
			truedam = 1	
		}
		
		var dam = truedam * 1.5;

	    current_weapon_stats = scr_Setup_Default_Shot_Stats();
		
		repeat(3) {
			current_weapon_stats = {
				Shot_Spread: 360 / global.B[14],
				Shot_Accuracy: 360,
				Shot_Count: global.B[14],
				Shot_Sprite: "spr_Vengeful_Heart_Shot",
				Shot_Type: "obj_Lesser_Soul_Shot",
				Shot_Speed: 0.6 + random(0.8),
				Shot_Acceleration: 0.02,
				Shot_Power: dam,
				Shot_Knock_Back: 10,
				Shot_Life_Span: 360,
				Shot_Pierce: 1,
				Shot_Homing_Type: 1,
				Shot_Homing_Speed: 5,
				Shot_Homing_Range: 3000,
				Shot_Size: 0.1 + (sqrt(truedam) / 6) + random(0.2),
				Shot_Init_Grow: 0
			};
		
			current_weapon_stats = scr_Setup_Weapon_Stats(current_weapon_stats);
			scr_Shot_Creation();
		}
	}

}