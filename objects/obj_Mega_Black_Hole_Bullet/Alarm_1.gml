alarm[1] = 3;

var area = 1000;

var xx = area / 2 - random(area);
var yy = area / 2 - random(area);
	
with instance_create_depth(x + xx,y + yy,depth+2,obj_Bullet_Trail_Target) {
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


