/// @description Insert description here
// You can write your code in this editor

scr_Default_Attack_Settings();
    bullet_type = obj_Soap_Pool;
    bullet_sprite = spr_Soap_Pool;
    bullet_speed = bossbulletspeed * 0;
    bullet_power = bosspower * 0.15;
    bullet_direction = (-180 + random(360)) / bossaccuracy;
    bullet_lifespan = 180 + irandom(60);
    bullet_size = 1 + random(0.15);
    bullet_count = 1;
    bullet_spread = 0;
    boss_radius = 0;
	bullet_image_speed = 0.2;
	bullet_depth = 250;

	
	var xstar = x;
	var ystar = y;

scr_Boss_Teleport();

	var dist = point_distance(x,y,xstar,ystar);
	var ddir = point_direction(xstar,ystar,x,y);
	var cdist = 0;
	
	repeat(8) {
		boss_xoffset = xstar - x + lengthdir_x(cdist, ddir);
		boss_yoffset = ystar - y + lengthdir_y(cdist, ddir);
		boss_xoffset += -50 + random(100);
		boss_yoffset += random(100);
	    scr_Offset_Normal_Shoot();
		
		cdist += dist / 8;
	}
