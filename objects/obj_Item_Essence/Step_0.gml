/// @description Insert description here
// You can write your code in this editor

im = direction;

//rspeed = 10 + (300 / point_distance(x,y,obj_Soul_Parent.x,obj_Soul_Parent.y));

/*
souldir = point_direction(x,y,obj_Soul_Parent.x,obj_Soul_Parent.y);
var adif = 15 + abs(angle_difference(direction, souldir));
			
var bulletspeed = 15;
			
speed += (40 - (adif)) / (1200 / bulletspeed);
rspeed += (0.5 * (adif)) / 900;
	
if rspeed < 5 {
	rspeed = 5;	
}

if speed < (bulletspeed * 0.1) {
	speed = bulletspeed * 0.1;	
}
if speed > bulletspeed {
	speed = bulletspeed;
}	
*/
raccel = point_distance(x,y,obj_Soul_Parent.x,obj_Soul_Parent.y) / 5000;

rspeed += raccel;
speed = min(speed + 0.5,mspeed);

var pointDir = point_direction(x,y,instance_nearest(x,y,obj_Soul_Parent).x,instance_nearest(x,y,obj_Soul_Parent).y);
im += sin(degtorad(pointDir - im)) * rspeed;
direction = im;


if point_distance(x,y,obj_Soul_Parent.x,obj_Soul_Parent.y) < 40 {
	instance_destroy();	
}

scr_Particle_Burst(obj_Particle_Parent, spr_White_Diamond, c_white, c_white, 1, 0, 0, 0, 0, image_xscale, 20, 0)

//part_emitter_region(global.psystem,global.pemitter, x, x, y, y,ps_shape_diamond,ps_distr_linear);
//part_emitter_burst(global.psystem, global.pemitter, ptype, 1);