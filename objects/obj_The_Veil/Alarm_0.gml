/// @description Insert description here
// You can write your code in this editor
if currentphase = 1 {
	var cNum = 1 + irandom(3);
	with (obj_Veil_Mask) {
		if coreNum = cNum {
			veilMorph = 2;
			alarm[0] = 300;
			scr_Boss_Stretch("Vertical", 0.4);
		
			bossdefense = 1;
		}
	}
}

alarm[0] = 400;