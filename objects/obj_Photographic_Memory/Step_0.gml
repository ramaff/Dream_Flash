/// @description Insert description here
// You can write your code in this editor

if InputReleased( INPUT_VERB.SHOOT ) {
	if alarm[0] <= 120 {
		alarm[0] = 1;
	}
}
