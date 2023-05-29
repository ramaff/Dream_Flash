// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Shot_Size_Set(factor = 1){
	shotsize = shotsize * factor
	image_xscale = shotsize;
	image_yscale = shotsize;
	shotsizemax = shotsize;
}