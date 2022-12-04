/// @description Insert description here
// You can write your code in this editor
scr_Bullet_Teleport();
y -= 1500;
with instance_create(other.x,other.y,obj_Actual_Rain_Bullet) {
        scr_Bullet_Replicate_Properties();
		bulletlifespan = 1516 / other.bulletspeed;
		alarm[0] = bulletlifespan;
        bulletsize = 0.5;
        image_xscale = bulletsize;
        image_yscale = bulletsize;
        soulshotblock = 0;
        sprite_index = other.sprite_index
        bulletspeed = other.bulletspeed;
        bulletpower = other.bulletpowermax;
        //move_towards_point(instance_nearest(x,y,obj_Soul_Parent).x,instance_nearest(x,y,obj_Soul_Parent).y, bulletspeed);
        direction = 270;
		speed = bulletspeed;
    }   
	
	scr_Boss_Bullet_Cleanup();