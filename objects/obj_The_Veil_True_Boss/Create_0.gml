boost = global.boost;
champ = global.champ;

bossValue = 41;
scr_Boss_Stats_Setup();

image_speed = 1;
image_index = 0;

scr_Boss_Size_Setup(0.5);

scr_Default_Attack_Settings();

alarm[0] = 120;

scr_Boss_Teleport_Far();	

startX = obj_Soul_Parent.x;
startY = obj_Soul_Parent.y;

if instance_exists(obj_Veil_Mask) {
	startX = obj_Veil_Mask.x;
	startY = obj_Veil_Mask.y;
}