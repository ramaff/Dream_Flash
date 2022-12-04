/*
var dir = -5 + random(10);
repeat(8) {
    with instance_create(x,y,obj_Basic_Bullet) {
        scr_Bullet_Replicate_Properties();
		bulletlifespan = 400;
		alarm[0] = bulletlifespan;
        bulletsize = 0.5;
        image_xscale = bulletsize;
        image_yscale = bulletsize;
        soulshotblock = 0;
        sprite_index = spr_Glowy_Ruby_Shot;
        bulletspeed = other.bulletspeed * 2;
        bulletpower = other.bulletpower;
        direction = dir;
        speed = bulletspeed;
    }   
    dir += 45;
}
instance_destroy();
*/

var dir = random(360);
repeat(2) {
	dir = random(360);
    with instance_create(x - 25 + random(50),y - 25 + random(50),obj_8_Bomb) {
        scr_Bullet_Replicate_Properties();
		bulletlifespan = 60 + random(15);
		alarm[0] = bulletlifespan;
		alarm[1] = 60 + random(15);
        bulletsize = 0.5;
        image_xscale = bulletsize;
        image_yscale = bulletsize;
        soulshotblock = 0;
        sprite_index = spr_Boss_Pink_Bomb;
        bulletspeed = other.bulletspeed * (1.5 + random(0.5));
        bulletpower = other.bulletpower;
        direction = dir;
        speed = bulletspeed;
    }   
}

instance_destroy();