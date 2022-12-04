/// @description Insert description here
// You can write your code in this editor
with instance_create(obj_Soul_Parent.perX,obj_Soul_Parent.perY - 1500,obj_Meteor_Bullet) {
        scr_Bullet_Replicate_Properties();
		bulletlifespan = 1516 / other.bulletspeed;
		alarm[0] = bulletlifespan;
        bulletsize = 0.5;
        image_xscale = bulletsize;
        image_yscale = bulletsize;
        soulshotblock = 0;
        sprite_index = spr_Big_Fire_Shot;
        bulletspeed = other.bulletspeed;
        bulletpower = other.bulletpowermax;
        direction = scr_Soul_Point();
        speed = bulletspeed;
    }   
	
	scr_Boss_Bullet_Cleanup();