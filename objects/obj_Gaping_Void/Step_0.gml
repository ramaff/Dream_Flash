/// @description Insert description here
// You can write your code in this editor
//event_inherited();

size += (0.002 * (maxsize - size));
image_xscale = size;
image_yscale = size;

if size > maxsize {
	size = maxsize;	
}