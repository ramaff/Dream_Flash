/// @description Insert description here
// You can write your code in this editor
im = direction;

speed = min(speed + 0.5,bulletspeed);

var pointDir = scr_Soul_Point();
im += sin(degtorad(pointDir - im)) * rspeed;
direction = im;

count++;

y += 5 * sin(count * 5);