function scr_Room_Depth() {
	var addDepth = argument[0];

	var roomsize = Floor_Layout_Control.Flash[0,3];

	var xxv = room_width / 2;
	var yyv = room_height / 2;

	var xxval = x - xxv;
	var yyval = y - yyv;

	depth = baseDepth - ((roomsize + (yyval)) / roomsize);
	depth += addDepth;



}
