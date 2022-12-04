function scr_Heal_Soul(argument0) {
	var hamount = argument0;

	obj_Soul_Parent.shealth += hamount /* / global.healthungen */;
	global.healthungen += (global.healthungen * hamount) / 20;
	
	var ichance = 1;
	if hamount < 1 {
		ichance = floor(random(0.99) + hamount);
	}
	
	if ichance = 1 {
		var xx = -20 + random(20);
		var yy = -20 + random(20);
		with instance_create(obj_Soul_Parent.x + xx,obj_Soul_Parent.y + yy,obj_Damage_Indicator) {
			element = 6;
			damageIndication = hamount  /* / global.healthungen */;
			if damageIndication < 1 {
				damageIndication = 1;	
			}
			textSize = 1;
			direction = 90;
			speed = 1.5 + random(0.35)
			friction = 0.01 + (other.speed / 600)
			alarm[0] = 30 + irandom(6);
		}
	}

}
