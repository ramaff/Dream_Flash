alarm[0] = 1;

recollectionUpgrade = 0;
recollectionMirror = 0;
recollectionExtraStats = 0;
recollectionDescription = "";
recollectionCount = 1;
shop = 0;
leave = 0;
stacks = 1;

if global.cloudalpha < 0 {
	global.cloudalpha = 0;	
}
if global.cloudalpha > 1 {
	global.cloudalpha = 1;	
}

image_alpha = global.cloudalpha;

if global.cloudalpha < 1.2 {
    global.cloudalpha += 0.18;
}

image_xscale = 0.5;
image_yscale = 0.5;

target = obj_Soul_Parent;
xx_offset = 200;
yy_offset = -150;

depth = -3;


event_user(0)