/// @description Insert description here
// You can write your code in this editor
alarm[1] = 1;

image_xscale -= 0.015 + image_xscale / 20;
image_yscale -= 0.015 + image_yscale / 20;

if image_xscale <= 0 {
	instance_destroy();	
}