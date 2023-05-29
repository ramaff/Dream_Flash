alarm[1] = 90 + irandom(45);

/*
var dir = scr_Soul_Point();
dir += -5 + random(10);
var spd = bulletspeed * (0.8 + random(0.1));
repeat(3) {
    with instance_create(x,y,obj_Phase_Bullet) {
        depth = -1.5;
        bulletlifespan = 240;
        scr_Bullet_Replicate_Properties();
        sprite_index = spr_Glowy_Enemy_Shot;
        bulletsize = 0.5;
        image_xscale = 0.5;
        image_yscale = 0.5;
        bulletspeed = spd;
        bulletpower = other.bulletpower * 0.5;
        speed = bulletspeed;
        alarm[0] = 240;
        direction = dir;
    }
	spd += bulletspeed * 0.35;
}

