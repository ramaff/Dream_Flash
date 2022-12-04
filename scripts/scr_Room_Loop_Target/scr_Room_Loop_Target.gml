function scr_Room_Loop_Target() {
	var xval = room_width / 2;
	var yval = room_height / 2;

	if x > (xval + (global.roomSizeX / 2) + 128) {
	    x -= global.roomSizeX + 192;

	    y = obj_Soul_Parent.perY + y_displacement;

	}



}
