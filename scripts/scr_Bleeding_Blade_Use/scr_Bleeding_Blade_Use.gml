// Location: Weapon Use List

function scr_Bleeding_Blade_Use(_cw = current_weapon_stats) {
	
	_cw.Shot_Spread = 0;
	_cw.Shot_Accuracy = 10;
	_cw.Shot_Count = 1;
	_cw.Shot_Sprite = "spr_Bleeding_Spear_Shot";
	_cw.Shot_Type = "obj_Lesser_Soul_Shot";

	_cw.Shot_Phasing = 1;
	_cw.Shot_Height = 0;
	
	_cw.Shot_Alpha = 1;
	_cw.Shot_Melee = true;
	_cw.Shot_Speed = 24;
	_cw.Shot_Acceleration = -2
	_cw.Shot_Power = 4 + (_cw.Real_Essence_Cost * 2);
	
	if _cw.Shot_Repetition >= 1 {
		_cw.Shot_Power = _cw.Shot_Power / (_cw.Shot_Repetition + 1)
	}
	
	_cw.Shot_Knock_Back = 10 + sqrt(_cw.Shot_Power);
	_cw.Shot_Life_Span = 15;
	_cw.Shot_Angle = point_direction(x,y,mouse_x,mouse_y);
	_cw.Shot_Pierce = 20;
	_cw.Shot_Bullet_Redirect = 1;
	_cw.Shot_Bullet_Redirect_Chance = 100;
	_cw.Shot_Bullet_Displace = 2;
	_cw.Shot_Bleed = 1 + floor(_cw.Shot_Power / 10);
	_cw.Shot_Bleed_Time = 60;
	_cw.Shot_Bleed_Ticks = 3;
	_cw.Shot_Point_Angle = 0;
	_cw.Shot_Orbital_Type = 0;
	_cw.Shot_Size = 0.2 + (sqrt(_cw.Shot_Power) / 50);

	speed = 8;
	friction = 1;
	direction = point_direction(x,y,mouse_x,mouse_y);
	
	_cw = scr_Setup_Weapon_Stats(_cw);
	
	scr_Sound_Effect(sd_Sword_Slash);

}
