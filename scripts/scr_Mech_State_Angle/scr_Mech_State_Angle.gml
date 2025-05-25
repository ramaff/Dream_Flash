// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Mech_State_Angle(){
	if scurrentstate = "Mechanical" {
		image_angle = lerp(image_angle, 0, 0.15);	
		if soulCurrentHorizontalSpeed > 0 {
		    image_angle += -2;
		} 
		if soulCurrentHorizontalSpeed < 0 {
		    image_angle += 2;
		}
	} else {
		image_angle = 0;	
	}
}