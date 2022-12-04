/// @description Insert description here
// You can write your code in this editor
if soulinvincibility <= 0 {

    soulinvincibility = 10;
    shealth -= other.bulletpower;
	
	scr_Soul_Stretch("Horizontal", 0.4);

	alarm[2] = 10;
	image_index = 1;

	scr_Rubber_Soul_Rebound_Shot();
    
    if shealth <= 0 {
        instance_destroy();
    }
}

