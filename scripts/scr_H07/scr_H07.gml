// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_H07(){
		
	var _xx = x + soulCurrentHorizontalSpeed;
	var _yy = y + soulCurrentVerticalSpeed;
	var _pow = 10 * global.soulheartboost;
	var _poison_pow = round(_pow / 5)
	var _poison_size = sqrt(max(0, _pow)) * 100
	var _poison_sprite_size = _poison_size / 1000
	
	var _dist = point_distance(x, y, _xx, _yy)
	var _dir = point_direction(x, y, _xx, _yy)
				
	scr_Fart(_xx, _yy, _dist, _dir, _pow, _poison_pow, _poison_size, _poison_sprite_size)


}