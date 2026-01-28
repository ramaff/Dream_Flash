/// @description Insert description here
// You can write your code in this editor

//image_xscale += 0.01;
//image_yscale += 0.01;

friction = 0.5;

if recalls >= 1 {
	recalls--;
	var recall_obj = obj_Soul_Flash
	if global.currentchapter = 1 {
	    recall_obj = obj_Soul_Flash
	}
	if global.currentchapter = 2 {
	    recall_obj = obj_Soul_Feel;
	}
	if global.currentchapter = 3 {
	    recall_obj = obj_Soul_Dream;
	}
	if global.currentchapter = 4 {
		recall_obj = obj_Soul_Nightmare;
	}
	with instance_create(x,y,recall_obj) {
	    direction = random(360);
	    speed = 10 + random(8);
			
		image_xscale = 0.5;
		image_yscale = 0.5;
	}
}

if alarm[0] = 10 {
	var color = make_color_rgb(200+random(55), 200, 255);
		
	scr_Particle_Burst(obj_Spiral_Wind_Part_Alt, spr_Soul_Big_Bit, color, color, 3, 16, random(360), 120, 0, 0.525, 40, true)	
}

/*if alarm[0] mod 5 = 0 {
	var color = make_color_rgb(200+random(55), 200, 255);
		
	scr_Particle_Burst(obj_Spiral_Wind_Part, spr_Soul_Big_Bit, color, color, 1, 12, random(360), 90, 0, 0.4, 30, true)	
} */
