/// @description Insert description here
// You can write your code in this editor

var color = make_color_rgb(255, 255, 255);
var color2 = make_color_rgb(255, 150, 255);
		
scr_Particle_Burst(obj_Field_Trail, spr_Soul_Big_Bit, color, color2, 10, 12, 0, 360, 20, 0.5, 29, false)
//scr_Particle_Burst(obj_Field_Trail, spr_Soul_Big_Bit, c_white, c_white, 10, 12, 0, 360, 20, 0.6, 10, false)
		

scr_Disk_Effect(20, 0.7, color);
scr_Disk_Effect(40, 0.7, color2);
scr_Disk_Effect(20, 1.1, color);
scr_Disk_Effect(40, 1.1, color2);

with (obj_Boss_Parent) {
	if point_distance(x,y,other.x,other.y) < 150 {
		bosshealth -= other.damage * 10;
		scr_Damage_Indicator(0, other.damage * 10, 1);
	}
}
with (obj_Soul_Parent) {
	if point_distance(x,y,other.x,other.y) < 100 {
		damageamount = other.damage;
		defenseamount = 0;
		scr_Soul_Damage_Calculation();
		
		direction = point_direction(x,y,other.x,other.y)
		speed = sqrt(damageamount)
		friction = 1;
		//shealth -= other.damage;
		//scr_Damage_Indicator(0, max(1, other.damage), 1);
	}
}

instance_destroy();