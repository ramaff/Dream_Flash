// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Q05(_essence_cost){

	var _count = global.Q[5] + floor(_essence_cost / 6)
	var _spread = 0;
	
	if _count > 0 {
		_spread = 360 / _count	
	}

	var _current_weapon_stats = {
		Shot_Spread: _spread,
		Shot_Accuracy: 360,
		Shot_Count: _count,
		Shot_Sprite: "spr_Banana_Shot",
		Shot_Type: "obj_Lesser_Soul_Shot",
		Shot_Speed: 2 + random(4),
		Shot_Power: 9,
		Shot_Mouse: 1,
		Shot_Knock_Back: 10,
		Shot_Life_Span: 60,
		Shot_Lobbing: true,
		Shot_Lobbing_Tilt: 10,
        Shot_Height: 30,
        Shot_Fall_Speed: -10,
        Shot_Gravity: 0.36,
		Shot_Size: 0.5,
		Shot_Pierce: 3,
		Shot_Bounce: 1,
		Shot_Burst_Stats: [
            {
				Shot_Expire_Burst: true,
				Shot_Speed: 0,
				Shot_Sprite: "spr_Banana_Peel_Shot",
				Shot_Type: "obj_Banana_Peel_Shot",
				Shot_Lobbing: false,
				Shot_Life_Span: 240,
				Shot_Angle: 0,
				Spread: 0,
				Amount: 1,
				Burst_Power: 1,
				Shot_Bullet_Redirect: 1,
				Shot_Bullet_Redirect_Chance: 100
			}
		]
	};
	
	_current_weapon_stats = scr_Setup_Weapon_Stats(_current_weapon_stats);
	return _current_weapon_stats

}