/// Charged Release Script

function scr_V07_Use() {
	if global.V[7] > 0 and global.V7mindblow >= 100 {
		
		var pow = 2 + 4 * global.V[7]
		
		var _current_weapon_stats = {
			Shot_Spread: 0,
			Shot_Accuracy: 10,
			Shot_Count: 1,
			Shot_Sprite: "spr_Mind_Blowing_Shot",
			Shot_Type: "obj_Lesser_Soul_Shot",
			Shot_Phasing: 1,
			Shot_Speed: 12,
			Shot_Power: 100,
			Shot_Knock_Back: 20,
			Shot_Friction: 0.11,
			Shot_Life_Span: 90,
			Shot_Pierce: 1,
			Shot_Impact_Type: 2,
			Shot_Impact_Power: 50,
			Shot_Impact_Size: 500,
			Shot_Trail: 2,
			Shot_Trail_Sprite: "spr_Huge_Essence_Trail_Bit",
			Shot_Trail_Area: 40,
			Shot_Trail_Fade: 0,
			Shot_Trail_Color_1: [50,50,200],
			Shot_Trail_Color_2: [0,20,150]
		};
		

		_current_weapon_stats = scr_Setup_Weapon_Stats(_current_weapon_stats);
		scr_Shot_Creation(_current_weapon_stats);
		
		global.V7mindblow = 0;
		
	
	}
}
