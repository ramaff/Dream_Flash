realbullet = irandom(1);
var dir = random(360);
var ddir = 0;
repeat(12) {
    sspeed = 0.7;
            with instance_create(x,y,obj_Loopy_Bullet_2) {
                scr_Bullet_Replicate_Properties();
                bulletsize = 0.5;
                image_xscale = bulletsize;
                image_yscale = bulletsize;
                soulshotblock = 0;
                sprite_index = spr_Glowy_Loopy_Bullet;
                bulletspeed = other.bulletspeed;
                bulletpower = other.bulletpower;
                direction += dir + ddir;
                speed = bulletspeed;
            }   
			ddir += 360 / 24
            with instance_create(x,y,obj_Fake_Bullet_2) {
                scr_Bullet_Replicate_Properties();
                bulletsize = 0.5;
                image_xscale = bulletsize;
                image_yscale = bulletsize;
                sprite_index = spr_Light_Loopy_Bullet;
                bulletspeed = other.bulletspeed;
                direction += dir + ddir;
                speed = bulletspeed;
            }   
      
    ddir += 360 / 24;
}

instance_destroy();

