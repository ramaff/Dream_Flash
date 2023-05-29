alarm[0] = 1;

recollectionUpgrade = 0;
recollectionMirror = 0;
recollectionExtraStats = 0;
shop = 0;
leave = 0;

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

