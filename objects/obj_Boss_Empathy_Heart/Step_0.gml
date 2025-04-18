/// @description  Boss Step Event

scr_Boss_Step();

image_speed = 0;

if bosshealth < bossmaxhealth {
	var diff = bossmaxhealth - bosshealth;
	bossmaxhealth = bosshealth;
	if instance_exists(followtarget) {
		followtarget.bosshealth -= diff;
		with (followtarget) {
			scr_setup_dmg_indicator(x,y, diff, c_white);
		}
		if diff >= 1 {
			scr_Boss_Stretch("Vertical", 0.1);
		}
		scr_Heal_Soul(diff / 20);
	}
	alarm[2] = 10;
	image_index = 1;
}

#region ///Passive Attack Prep

if instance_exists(followtarget) {
	if point_distance(x, y, followtarget.x, followtarget.y) > 100 {
		direction = point_direction(x, y, followtarget.x, followtarget.y);
		speed = followtarget.speed + 2;
	} else {
		speed = lerp(speed, 0, 0.025);
	}
} else {
	speed = lerp(speed, 0, 0.025);
	instance_destroy();
}

var souldir = scr_Soul_Point() + 180; 

x += lengthdir_x(1, souldir);
y += lengthdir_y(1, souldir);

#endregion

#region /// Boss Sprite Code

scr_Boss_Size_Lerp_Dir(0.15);

//scr_Boss_Two_Face_Direction();

#endregion

scr_Boss_Soul_Hitbox(sprite_index);
