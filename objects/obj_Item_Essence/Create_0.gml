/// @description Insert description here
// You can write your code in this editor
alarm[1] = 1;
alarm[0] = 180;

//scr_Soul_Particles();

image_xscale = 0.2;
image_yscale = 0.2;

/*
ptype = part_type_create();

//part_type_sprite(ptype,spr_Soul_Ball,true,false,true);

part_type_sprite(ptype,spr_White_Diamond,0,0,0);

part_type_alpha1(ptype,1);

part_type_color1(ptype, c_white);

part_type_life(ptype,20,20);

part_type_size(ptype,0.2,0,-0.01,0);

*/

im = direction;
rspeed = 5 + (1000 / point_distance(x,y,obj_Soul_Parent.x,obj_Soul_Parent.y));
mspeed = 10 + (point_distance(x,y,obj_Soul_Parent.x,obj_Soul_Parent.y) / 100);

speed = mspeed;
//raccel = 1000 / point_distance(x,y,obj_Soul_Parent.x,obj_Soul_Parent.y);