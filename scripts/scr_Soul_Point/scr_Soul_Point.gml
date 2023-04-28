function scr_Soul_Point(xx = x, yy = y){
	if instance_exists(obj_Butt_Of_Jokes) {
		return point_direction(xx, yy, obj_Butt_Of_Jokes.x, obj_Butt_Of_Jokes.y);
	} else {
		return point_direction(xx, yy, obj_Soul_Parent.perX,obj_Soul_Parent.perY);
	}

}
