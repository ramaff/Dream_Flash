// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// loc: Item_Step_After

function scr_F07(){
	if global.roomtime >= 480 and !scr_Room_Leavable() {
		if global.roomtime mod 60 == 0 and obj_Soul_Parent.scurrentstate == "Base" {
			var mstate = obj_Soul_Parent.smaxstate
			var cstate = obj_Soul_Parent.sstatecharge
			var proc_chance = max((100 - cstate) / (global.F[7] * 2), 1)
			if scr_Chance(proc_chance) {
				obj_Soul_Parent.sstatecharge = mstate;
				scr_State_Power_Up();
			} else {
				obj_Soul_Parent.sstatecharge += global.F[7];
			}
		}
	}
}