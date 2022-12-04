if instance_exists(obj_Boss_Parent) {
		soulshotdirection = point_direction(x,y,instance_nearest(x,y,obj_Boss_Parent).x,instance_nearest(x,y,obj_Boss_Parent).y);
	} else {
		soulshotdirection = point_direction(x,y,mouse_x,mouse_y);	
	}

scr_Charged_Release();

Charge_Speed = 0;
Charge_Power = 0;
Charge_Knockback = 0;
Charge_Lifespan = 0;
Charge_Time = 0;
Charge_Hold = 0;


