function scr_Soul_Distance() {
	if instance_exists(obj_Butt_Of_Jokes) {
		return point_distance(x,y,obj_Butt_Of_Jokes.x,obj_Butt_Of_Jokes.y);
	} else {
		return point_distance(x,y,obj_Soul_Parent.perX,obj_Soul_Parent.perY);
	}

}
