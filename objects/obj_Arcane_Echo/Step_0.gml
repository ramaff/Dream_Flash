var bounce = 0;

if(place_meeting(x + hspeed, y, obj_The_Border)) {
    direction = -direction + 180;
    bounce = 1;
    }

//Vertical bounce
if(place_meeting(x, y + vspeed, obj_The_Border)) {
    direction = -direction;
    bounce = 1;
    }

if bounce = 1 {
    bulletspeed += 0.1;
    speed += 0.1;
}
    
image_angle = direction;

speed = min(speed + 0.5,bulletspeed);

var pointDir = scr_Soul_Point();
image_angle += sin(degtorad(pointDir - image_angle)) * rspeed;
direction = image_angle;



