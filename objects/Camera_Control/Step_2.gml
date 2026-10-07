var tote_bosses = instance_number(obj_Main_Boss_Parent)
var potency = min(2, tote_bosses)
var fac = (1 / tote_bosses) * potency

if instance_exists(Floor_Layout_Control) and global.layerdeep < 1 {
	var rsize = global.floor[global.currentroom, 3];
	var ideal_zoom = power((1024 / rsize), 0.25);
	if ideal_zoom < 0.8 {
		ideal_zoom = 0.8;
	}
	
	if global.cameramode = "Boss" {
		var extra_zoom = 0
		with (obj_Main_Boss_Parent) {
			var dist = point_distance(x,y, obj_Soul_Parent.x, obj_Soul_Parent.y);
			//dist += point_distance(x,y, room_width / 2, room_height / 2)
			
			if dist > 300 {
				extra_zoom = max(extra_zoom, (dist - 300))
			}
			
		}
		ideal_zoom = power((1024 / (rsize + extra_zoom)), 0.25);
	}
	
	if instance_exists(obj_Class_Level_Up_Indicator) and global.level_up_camera_lock = 1 {
		var ideal_zoom = 1;
	}

	view_zoom = lerp(view_zoom, ideal_zoom, 0.0175)
	
	view_zoom = clamp(view_zoom, 0.5, 1.5);
	view_width_zoom = ideal_width / view_zoom;
	view_height_zoom = ideal_height / view_zoom;
} else {
	view_width_zoom = ideal_width / 0.875;
	view_height_zoom = ideal_height / 0.875;
}
 
camera_set_view_size(view, view_width_zoom, view_height_zoom);

// Game Zoom


// Center View

if instance_exists(obj_Soul_Parent) {
	

	var xAv = 0;
	var yAv = 0;
	
	if global.cameramode = "Soul" {
		xAv = mean(obj_Soul_Parent.x * 6,room_width / 2,obj_Astral_Indicator.x * 2) / 3;
		yAv = mean(obj_Soul_Parent.y * 6,room_height / 2,obj_Astral_Indicator.y * 2) / 3;
	}
	if global.cameramode = "Boss" {
		
		var totalaveragers = 8.5;
		var xTote = (obj_Soul_Parent.x * 6) + (obj_Astral_Indicator.x * 1.5) + (room_width / 2);
		var yTote = (obj_Soul_Parent.y * 6) + (obj_Astral_Indicator.y * 1.5) + (room_height / 2);

		with (obj_Main_Boss_Parent) {
			if state = states.normal || state = states.jumping {
				xTote += x * fac;
				yTote += y * fac;
				totalaveragers += fac;
			}
		}
		
		xAv = xTote / totalaveragers;
		yAv = yTote / totalaveragers;
	}
	
	if instance_exists(obj_In_Game_Recollection_Cloud) {
		xAv = mean(xAv * 7, obj_In_Game_Recollection_Cloud.x) / 4;	
		yAv = mean(yAv * 7, obj_In_Game_Recollection_Cloud.y) / 4;	
	}
	
	var camX = clamp((xAv - (view_width_zoom / 2)), 0, room_width - view_width_zoom);
	var camY = clamp((yAv - (view_height_zoom / 2)), 0, room_height - view_height_zoom);
	
	if instance_exists(obj_Class_Level_Up_Indicator) and global.level_up_camera_lock = 1 {
		camX = (room_width / 2) - (view_width_zoom / 2)
		camY = (room_height / 2) - (view_height_zoom / 2)
	}

	if instance_exists(Tutorial_Control) {

	    camX = Tutorial_Control.x - (view_width_zoom / 2);
	    camY = Tutorial_Control.y - (view_height_zoom / 2);
	}

	
	var _cur_x = camera_get_view_x(view);
	var _cur_y = camera_get_view_y(view);
	
	var spd = 0.075;
	
	camera_set_view_pos(view, 
						(lerp(_cur_x, camX, spd)), 
						(lerp(_cur_y, camY, spd)));
}

