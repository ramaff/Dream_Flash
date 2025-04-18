/// @description Insert description here
// You can write your code in this editor

if bosshealth < bossmaxhealth {
	var diff = bossmaxhealth - bosshealth;
	bossmaxhealth = bosshealth;
	if instance_exists(followtarget) {
		followtarget.bosshealth -= diff;
		with (followtarget) {
			scr_setup_dmg_indicator(x,y, diff, c_white);
		}
		scr_Boss_Stretch("Vertical", 0.1);
		scr_Heal_Soul(diff / 20);
		with instance_create(x,y,obj_Life_Suck_Trail) {
		    target = instance_nearest(x,y,obj_Soul_Parent);
			direction = random(360)
			speed = 4;
		}
	}
	alarm[2] = 10;
	image_index = 1;
}
