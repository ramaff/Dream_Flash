/// @description Insert description here
// You can write your code in this editor

var _damage = abs(speed * 3) - 10;

var _dir;
_dir = point_direction(other.x, other.y, x, y)// + 180;
//x += lengthdir_x(10 + _damage, _dir);
//y += lengthdir_y(10 + _damage, _dir);

if _damage > 0 {
	other.bosshealth -= _damage;
	scr_setup_dmg_indicator(other.x, other.y, _damage, c_white, 0)

	scr_Apply_Boss_Knockback(other.id, _damage + 5, 5, _dir + 180)

}

hspeed = -hspeed
vspeed = -vspeed
h_speed = -h_speed;
v_speed = -v_speed;



