// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Damage_Indicator(primaryElement, damageInd, baseSize, additive = 0, _xx = x, _yy = y){
	
	if damageInd >= 50 {
		baseSize += 1;
	}
	if damageInd >= 300 {
		baseSize += 1;
	}
	
	var _rx = -20 + random(20);
	var _ry = -20 + random(20);
	with instance_create(_xx + _rx,_yy + _ry,obj_Damage_Indicator) {
	        element = primaryElement;
	        damageIndication = damageInd - additive;
			additiveIndication = additive
	        textSize = baseSize;
	        direction = 90;
	        speed = 2 + sqrt(max(0, damageIndication / 10)) + random(1);
			friction = ((0.9 + speed) / 150);
			alarm[0] = 30 + irandom(6) + (textSize * 5);
	}
}