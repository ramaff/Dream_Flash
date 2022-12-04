/// @description Insert description here
// You can write your code in this editor
//event_inherited();

if diss = 0 {
	size += 0.02 + (0.01 * (maxsize - size));
}
image_xscale = size;
image_yscale = size;

if size >= maxsize {
	size = maxsize;	
	diss = 1;
	if aset = 0 {
		alarm[1] = 120;
		aset = 1;
	}
}

if size < 0 {
	instance_destroy();	
}