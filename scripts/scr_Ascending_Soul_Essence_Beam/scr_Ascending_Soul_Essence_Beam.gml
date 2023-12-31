// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Ascending_Soul_Essence_Beam(c_wp = global.currentweapon){
	if c_wp != 14 {
		return	
	}
	scr_Default_Weapon_Stats();
	
	current_weapon_stats = {
		Shot_Spread: 0,
		Shot_Accuracy: 10,
		Shot_Count: 1,
		Shot_Sprite: "spr_Beam_Start",
		Shot_Type: "obj_Beam_Shot",
		Essence: 13,
        Delay: 28,
		Charge_Time: 120,
		Charge_Essence: 90,
        Shot_Phasing: 1,
        Shot_Duplicate_Sprite: "spr_Beam_Shot",
        Shot_Beam: 1,
        Shot_Speed: 0,
        Shot_Power: 27,
        Shot_Knockback: 0,
        Shot_Lifespan: 19,
        Shot_Burst_Power: 27,
        Shot_Size: 0.5,
        Weapon_Split_Visible: 1,
        Weapon_Split_Hit_Again: 0,
        Shot_Pierce: 100
	};
	
	//scr_Setup_Weapon_Stats(current_weapon_stats);

}