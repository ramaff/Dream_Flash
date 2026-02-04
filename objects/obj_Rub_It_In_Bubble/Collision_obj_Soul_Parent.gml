
with(other) {
var dam = 50;

var current_weapon_stats = scr_Setup_Default_Shot_Stats();
		
current_weapon_stats = {
	Shot_Spread: 60,
	Shot_Accuracy: 360,
	Shot_Count: 1,
	Shot_Sprite: "spr_Rub_It_In_Punch",
	Shot_Type: "obj_Rub_It_In_Shot",
	Shot_Speed: 2,
	Shot_Acceleration: 0.5,
	Shot_Max_Speed: 15,
	Shot_Point_Angle: 1,
	Shot_Power: dam * 2,
	Shot_Pierce: 1,
	Shot_Knock_Back: 50,
	Shot_Impact_Type: 1,
	Shot_Impact_Explode: 0,
    Shot_Impact_Size: 150,
    Shot_Impact_Power: dam,
	Shot_Life_Span: 300,
	Shot_Homing_Type: 1,
	Shot_Homing_Speed: 5,
	Shot_Homing_Range: 3000,
	Shot_Size: 0.5,
	Shot_Init_Grow: 0,
	Shot_Trail: 1,
    Shot_Trail_Frequency: 2,
    Shot_Trail_Sprite: "spr_Diamond_Part",
    Shot_Trail_Area: 10,
    Shot_Trail_Life: 15,
    Shot_Trail_Color_1: [255, 0, 9],
    Shot_Trail_Color_2: [255, 0, 9]
};
		
current_weapon_stats = scr_Setup_Weapon_Stats(current_weapon_stats);
scr_Shot_Creation(current_weapon_stats);

}

instance_destroy();