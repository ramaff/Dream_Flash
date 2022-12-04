// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Soul_Stretch(argument0, argument1){
	var ori = argument0;
	var amt = argument1;

	//if ori = "Horizontal" {
	
	var calc = (amt * abs(size)) / ((((soulSizeX / abs(size)) - 1) * 5) + 1);
		
	if ori = "Vertical" {
		soulSizeX -= calc
		soulSizeY += 1 - (1 / (1 + (calc)));
	} else {
		soulSizeX += calc;
		soulSizeY -= 1 - (1 / (1 + (calc)));
	}
	


}