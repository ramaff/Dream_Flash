boost = global.boost;
champ = global.champ;

bossValue = 53;
scr_Boss_Stats_Setup();

//alarm[0] = 90 / bossattackspeed;

//image_speed = 0;
image_index = 0;

scr_Boss_Size_Setup(0.5);

with (obj_Soul_Parent) {
	x = room_width / 2;
	y = room_height / 2;
}
if instance_exists(obj_Boss_Empathy_Heart) {
	with (obj_Boss_Empathy_Heart) {
		x += 200;
		y -= 200;
	}
}

x += 150;
y -= 150;