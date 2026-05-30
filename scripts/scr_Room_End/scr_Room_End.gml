function scr_Room_End() {

	global.bosscount = 0;

	with(obj_Soul_Hurt) {
	    bulletpower = 0;
		if alarm[0] > 15 {
			alarm[0] = 15;	
		}
	}
	with(obj_soul_hurt_v2) {
	    bulletpower = 0;
		if alarm[0] > 15 {
			alarm[0] = 15;	
		}
	}
	global.currentheart = array_length(Soul_Hearts_Control.heart) - 1;
	scr_Update_Soul_Health(1000)
	
	global.soulstatecharge = obj_Soul_Parent.sstatecharge;
	global.currentstate = obj_Soul_Parent.scurrentstate;
	
	scr_Mini_Map_Update();


}
