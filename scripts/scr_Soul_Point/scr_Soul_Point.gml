function scr_Soul_Point() {
	if instance_exists(obj_Butt_Of_Jokes) {
		return point_direction(x,y,obj_Butt_Of_Jokes.x,obj_Butt_Of_Jokes.y);
	} else {
		return point_direction(x,y,obj_Soul_Parent.perX,obj_Soul_Parent.perY);
	}

}
