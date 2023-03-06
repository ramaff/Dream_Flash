// Just defaults basically I think
boost = global.boost;
champ = global.champ;

// Boss # id
bossValue = 44;
scr_Boss_Stats_Setup(2);

// Required, usually set to 0.5
scr_Boss_Size_Setup(0.5);

// If boss is visually 'floating' setup boss height
// Needed for bobbing/boss shadows
scr_Boss_Height_Setup(0);

followtarget = noone
var congacount = 18

if instance_number(obj_Conga_Line) < 2 {
	var ct = id;
	var ang = 0;
	var dis = 20;

	for(var i = 0; i < congacount; i++) {
		with instance_create(x + lengthdir_x(dis, ang),y + lengthdir_y(dis, ang),obj_Conga_Line) {
			followtarget = ct;
		
			ct = id;
			tail = false;
		
			//champ = other.champ + 0.1;
			scr_Boss_Stats_Setup();
		}
		ang += 45;
		dis += 5 + (300 / dis);
	}
}