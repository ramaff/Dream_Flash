/// @description Insert description here
// You can write your code in this editor

var color = make_color_rgb(100, 0, 100);
var color2 = make_color_rgb(50, 0, 50);
		
scr_Particle_Burst(obj_Field_Trail, spr_Soul_Big_Bit, color, color2, 10, 12, 0, 360, 20, 0.5, 15, false)
		
scr_Disk_Effect(20, 0.5, color);
scr_Disk_Effect(20, 0.9, color2);

with (obj_Boss_Parent) {
	if point_distance(x,y,other.x,other.y) < 150 {
		bosshealth -= other.damage * 5;
		scr_Damage_Indicator(0, other.damage * 5, 1);
	}
}
with (obj_Soul_Parent) {
	if point_distance(x,y,other.x,other.y) < 100 {
		damageamount = other.damage;
		defenseamount = 0;
		scr_Soul_Damage_Calculation();
		//shealth -= other.damage;
		//scr_Damage_Indicator(0, max(1, other.damage), 1);
	}
}

instance_destroy();