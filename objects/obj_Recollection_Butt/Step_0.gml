/// @description Insert description here
// You can write your code in this editor

if global.recollectCategory != "Bosses" and global.recollectCategory != "State" and global.recollectCategory != "Information" {
	y = starty - (((ceil((instance_number(obj_Recollection_Butt)-0.5)/3)-3)*96)*global.scrollperc);
} else {
	y = starty - (((ceil((instance_number(obj_Recollection_Butt)-0.5)/2)-2)*160)*global.scrollperc);
}

image_xscale = 0.5;
image_yscale = 0.5;
