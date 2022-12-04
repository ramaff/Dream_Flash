alarm[1] = 3;

var area = 1000;

var xx = area / 2 - random(area);
var yy = area / 2 - random(area);
	
	with instance_create(x + xx,y + yy,obj_Bullet_Trail_Target) {
		
		depth = other.depth + 2;
		target = other.id;
		
		sprite_index = other.bpartsprite;
		
		direction = point_direction(x,y,other.x,other.y);
		speed = point_distance(x,y,other.x,other.y) / other.bpartlife;
		
		image_angle = other.image_angle;

		size = other.bulletsize;
		image_xscale = size;
		image_yscale = size;
		
		life = other.bpartlife;
		
		image_blend = other.bpartcolor1;
		
		alarm[0] = life;

	}

/*
with instance_create(x,y,obj_Direction_Bullet) {
    scr_Bullet_Replicate_Properties();
    sprite_index = spr_Glowy_Night_Shot;
    bulletspeed = other.bulletspeed * 0;
    bulletpower = other.bulletpower;
    speed = bulletspeed;
    direction = other.direction - 10 + random(20);
    bulletlifespan = 300;
    alarm[0] = bulletlifespan;
}

