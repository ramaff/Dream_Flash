// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Familiar Spawn

function scr_N02(){
	var ct = obj_Soul_Parent.id;
	repeat(global.N[2]) {
		with instance_create(x,y - 40, obj_Productivity) {
			followtarget = ct;
			ct = id;
		}
	}
}