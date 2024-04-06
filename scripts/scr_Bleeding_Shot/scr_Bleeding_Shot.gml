function scr_Bleeding_Shot(xxx,yyy, power) {
	scr_Default_Weapon_Stats();
	
	current_weapon_stats = {
		Shot_Spread: 0,
		Shot_Accuracy: 10,
		Shot_Count: 1,
		Shot_Sprite: string(sprite_get_name(other.sprite_index)),
		Shot_Type: "obj_Lesser_Soul_Shot"
	};

	current_weapon_stats.Shot_Mouse = 0;
	current_weapon_stats.Shot_Direction = other.direction - 180;

	current_weapon_stats.Shot_Size = other.image_xscale;
	current_weapon_stats.Shot_Forward = 0;
	
	current_weapon_stats.Shot_XX = xxx - x;
	current_weapon_stats.Shot_YY = yyy - y;
	
	current_weapon_stats.Shot_Form_Show = 0;

	current_weapon_stats.Shot_Speed = (15 + other.speed);
	
	current_weapon_stats.Shot_Power = 10;
	current_weapon_stats.Shot_Knockback = 10;
	current_weapon_stats.Shot_Life_Span = 40;
	
	current_weapon_stats.Shot_Trail = 1;
	current_weapon_stats.Shot_Trail_Sprite = "spr_Big_Essence_Trail_Bit";
	current_weapon_stats.Shot_Trail_Area = 15;
	current_weapon_stats.Shot_Trail_Life = 20;
	current_weapon_stats.Shot_Trail_Fade = 0;
	current_weapon_stats.Shot_Trail_Color1 = [255,0,0];
	current_weapon_stats.Shot_Trail_Color2 = [200,0,0];
	current_weapon_stats.Shot_Trail_Hit_Count = 13;
	current_weapon_stats.Shot_Trail_Hit_Life = 10;
	
	current_weapon_stats = scr_Setup_Weapon_Stats(current_weapon_stats);
	
	scr_Shot_Creation();



}
