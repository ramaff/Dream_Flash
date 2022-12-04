function scr_Room_Loop_Outside() {
	var xv = room_width / 2;
	var yv = room_height / 2;

	var potx = xv - ((global.roomSizeX) / 2) + random(global.roomSizeX);
	var poty = yv - ((global.roomSizeY) / 2) + random(global.roomSizeY);

	var outx1 = global.roomSizeX + 128;
	var outx2 = global.roomSizeX + 256;
	var outy1 = global.roomSizeY + 128;
	var outy2 = global.roomSizeY + 256;

	var xval = x - xv;
	var yval = y - yv;
	var inside = 0;
	var away = 0;
	var port = 0;


	if abs(xval) < (((outx2) / 2) - abs(yval)) and abs(yval) < (((outy2) / 2) - abs(xval)) {
	    inside = 1
	} else {
		scr_Boss_Teleport_From_Out();	
	}


}
