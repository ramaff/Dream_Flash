scr_Default_Figment_Stats();

shealth = 20 + (20 * global.currentchapter);
smaxhealth = 20 + (20 * global.currentchapter);
sfirerate = 85;
spower = 10;
spoweraddition = 0;
smovementspeed = 1.2;
sshotspeed = 10;
sshotspeedaddition = 0;
sshotknockback = 5;
sshotknockbackaddition = 0;
sknockbackdefense = 0;
sknockbackforce = 5;
scontactdamage = 5;

saccuracy = 1;

//direction = 45 + 90 * irandom(3);
//speed = smovementspeed;
alarm[0] = 60;

size = 0.5;

image_xscale = size;
image_yscale = size;

scr_Figment_Stat_Refresh();

pay = 0;
dim = false;
if instance_number(obj_Main_Boss_Parent) <= 0 {
	dim = true;	
}