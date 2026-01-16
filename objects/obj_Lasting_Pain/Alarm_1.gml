/// @description Insert description here
// You can write your code in this editor

var color = make_color_rgb(255, 255, 255);
var color2 = make_color_rgb(200, 50, 255);
		
scr_Particle_Burst(obj_Friction_Part, spr_Diamond_Part, make_color_rgb(155, 50, 255), make_color_rgb(155, 50, 255), damage + 2, damage + 2, 0, 360, 20, 0.5, 90, false)
scr_Particle_Burst(obj_Friction_Part, spr_Diamond_Part, c_white, c_white, damage + 2, damage + 8, 0, 360, 20, 0.5, 60, false)
//scr_Particle_Burst(obj_Field_Trail, spr_Soul_Big_Bit, c_white, c_white, 10, 12, 0, 360, 20, 0.6, 10, false)
		
var _potency = damage
var _damage_potency = damage * 30;
var _range = (7.5 + sqrt(_damage_potency))

scr_Disk_Effect(40, _range / 22.5, color);
scr_Disk_Effect(45, _range / 20, color2);
scr_Disk_Effect(50, _range / 17.5, color);
scr_Disk_Effect(55, _range / 15, color2);

scr_Screen_Shake(_potency, 5 + sqrt(_potency))

with (obj_Boss_Parent) {
	if point_distance(x,y,other.x,other.y) < (_range * 15) {
		bosshealth -= _damage_potency;
		scr_setup_dmg_indicator(x,y, _damage_potency, c_white);
		var dir = point_direction(x,y,other.x,other.y) + 180;
		x += lengthdir_x(_damage_potency, dir);
		y += lengthdir_y(_damage_potency, dir);
	}
}
with (obj_Bullet_Parent) {
	if point_distance(x,y,other.x,other.y) < (_range * 15) {
		scr_Bullet_Dampen(_potency * 1.5);
	}
}
with (obj_Soul_Parent) {
	if point_distance(x,y,other.x,other.y) < (_range * 7.5) {
		var damageamount = _potency;
		var defenseamount = 0;
		scr_Soul_Damage_Calculation(damageamount, defenseamount);
		
		direction = point_direction(x,y,other.x,other.y)
		speed = sqrt(_potency * 2)
		friction = 1;
	}
}

instance_destroy();