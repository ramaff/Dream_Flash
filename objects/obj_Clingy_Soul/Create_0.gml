scr_Default_Figment_Stats();

spower = 10;
sfirerate = 180;
spoweraddition = 0;
smovementspeed = 1.75;
sshotspeed = 10;
sshotspeedaddition = 0;
sshotknockback = 5;
sshotknockbackaddition = 0;

saccuracy = 1;

Orbit = 90;
Angle = 0;
CenterX = x;
CenterY = y;
if instance_exists(obj_Soul_Parent) {
CenterX = obj_Soul_Parent.x;
CenterY = obj_Soul_Parent.y;
}

speed = smovementspeed;
alarm[0] = 60;

size = 0.36;

image_xscale = size;
image_yscale = size;

scr_Soul_Stat_Refresh();
speed = smovementspeed;

Orbit = 90;