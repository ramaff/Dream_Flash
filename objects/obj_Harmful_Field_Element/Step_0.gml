/// @description Insert description here
// You can write your code in this editor

if hazardType = "Spike" {
	if hazardActivationTime <= 0 {
		image_index += 0.2;
		if image_index >= 5 {
			image_index = 5;	
		}
		hazardDamage = 16;
		hazardActive = 1;
	} else {
		hazardActivationTime--;	
		image_index = 0;
	}
}