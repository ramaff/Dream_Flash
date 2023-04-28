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

followtarget = noone;

conga_type = choose("normal", "dope", "dopey", "angry", "shades");

if instance_number(obj_Conga_Line) < 2 {
	var ct = id;
	var opdir = scr_Soul_Point() + 180;
	
	var xx = 0;
	var yy = 0;
	//var xxx = [-50, -50, 0, 50, 50, 50, 0, -50, -100, -100, -100, -100];
	//var yyy = [0, -50, -50, -50, 0, 50, 50, 50, 50, 0, -50, -100];
	var distt = 0;

	for(var i = 0; i < 12; i++) {
		distt = 30 * i
		xx = lengthdir_x(distt, opdir - 60 + random(120)) + x;
		yy = lengthdir_y(distt, opdir - 60 + random(120)) + y;
		xx = scr_Round_To_Nearest(xx, 50)
		yy = scr_Round_To_Nearest(yy, 50)
		with instance_create(xx,yy,obj_Conga_Line) {
			followtarget = ct;
		
			ct = id;
			scr_Boss_Stats_Setup();
		}
	}
}

activeAttackCooldown = 240;
