itemFieldSpeed = 1;

fieldActive = 1;

image_xscale = 0.5;
image_yscale = 0.5;

starty = y;

alarm[1] = 5;

itemFieldPosition = 0;

fieldColor = c_red;

//Print_DF(string(global.OA5rooms), 3)
//Print_DF(string(global.OA5rooms[global.currentroom]), 3)

var oacount = 1 + global.OA[5];
for(var j = 0; j < oacount; j++) {
	with instance_create(x,y,obj_Potential_For_Anything) {
		itemFieldPositionOffset = j * (360 / oacount);
		pool = global.OA5rooms[global.currentroom][j];
	}
}
/*
with instance_create(x,y,obj_Potential_For_Anything) {
	itemFieldPositionOffset = 180;
	pool = global.OA5rooms[global.currentroom][1];
} */
