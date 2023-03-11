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
scr_Boss_Height_Setup(50);

followtarget = noone;

if instance_number(obj_Conga_Line) < 2 {
	var ct = id;
	var ang = 0;
	var dis = 20;
	var xx = 0;
	var yy = 0;

	for(var i = 0; i < 9; i++) {
		xx = -100 + 50 * (i mod 5)
		if i > 3 {
			yy = -100;
		}
		with instance_create(x + xx,y + yy,obj_Conga_Line) {
			followtarget = ct;
		
			ct = id;
			scr_Boss_Stats_Setup();
		}
	}
}