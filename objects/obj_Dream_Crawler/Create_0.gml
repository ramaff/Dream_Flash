boost = global.boost;
champ = global.champ;

bossValue = 56;
scr_Boss_Stats_Setup();

scr_Boss_Size_Setup(0.5);

//image_speed = 0;
image_index = 0;

rspeed = 1.25;

var ct = id;
var ang = 0;
var dis = 20;

for(var i = 0; i <= 9; i++) {
	with instance_create(x + lengthdir_x(dis, ang),y + lengthdir_y(dis, ang),obj_Dream_Crawler_Part) {
		followtarget = ct;
		
		ct = id;
		tail = false;
		if i = 9 {
			tail = true;
			sprite_index = spr_Dream_Crawler_Tail;
		}
		
		champ = other.champ + 0.1;
		scr_Boss_Stats_Setup();
	}
	ang += 45;
	dis += 5 + (300 / dis);
}