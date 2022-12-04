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
}

if size < 0 {
	instance_destroy();	
}

scr_Soul_Outside_Check();