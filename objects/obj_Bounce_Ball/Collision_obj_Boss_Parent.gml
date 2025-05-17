/// @description Insert description here
// You can write your code in this editor

if !variable_struct_exists(bosses_hit_tracker, real(other.id)) {
		variable_struct_set(bosses_hit_tracker, real(other.id), 0)	
	}
	var _current_val = variable_struct_get(bosses_hit_tracker, real(other.id))
	if _current_val > 0 {
		exit;
	}
	
	variable_struct_set(bosses_hit_tracker, real(other.id), 3);

var _damage = abs(speed * 3) - 10;

var _dir;
_dir = point_direction(x, y, other.x, other.y)// + 180;
x += lengthdir_x(30 + _damage, _dir + 180);
y += lengthdir_y(30 + _damage, _dir + 180);

if _damage > 0 {
	other.bosshealth -= _damage;
	scr_setup_dmg_indicator(other.x, other.y, _damage, c_white, 0)

	scr_Apply_Boss_Knockback(other.id, _damage + 5, 5, _dir)

}

hspeed = -hspeed
vspeed = -vspeed
h_speed = -h_speed;
v_speed = -v_speed;



