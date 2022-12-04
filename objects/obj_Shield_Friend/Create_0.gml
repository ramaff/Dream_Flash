scr_Default_Figment_Stats();

shealth = 190;
smaxhealth = 190;
spower = 10;
spoweraddition = 0;
smovementspeed = 1.45;
sshotspeed = 10;
sshotspeedaddition = 0;
sshotknockback = 5;
sshotknockbackaddition = 0;
sknockbackdefense = 0;
sknockbackforce = 5;
scontactdamage = 9;

saccuracy = 1;

Orbit = 75;
Angle = 0;
CenterX = obj_Soul_Parent.x;
CenterY = obj_Soul_Parent.y;

direction = 45 + 90 * irandom(3);
speed = smovementspeed;
alarm[0] = 60;

size = 0.41;

image_xscale = size;
image_yscale = size;

scr_Figment_Stat_Refresh();

Orbit = 75;