/// @description Insert description here
// You can write your code in this editor

var _damage = abs(speed * 3);
other.bosshealth -= _damage;
scr_setup_dmg_indicator(other.x, other.y, _damage, c_white, 0)

var i;
i = point_direction(other.x, other.y, x, y)// + 180;
x += lengthdir_x(10 + speed, i);
y += lengthdir_y(10 + speed, i);


hspeed = -hspeed
vspeed = -vspeed
h_speed = -h_speed;
v_speed = -v_speed;



