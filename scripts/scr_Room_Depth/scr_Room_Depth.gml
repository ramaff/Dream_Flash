function scr_Room_Depth() {
	
	exit;
	var addDepth = argument[0];

	var roomsize = global.floor[0,3];

	var xxv = room_width / 2;
	var yyv = room_height / 2;

	var xxval = x - xxv;
	var yyval = y - yyv;

	depth = baseDepth - ((roomsize + (yyval)) / roomsize);
	depth += addDepth;



}
