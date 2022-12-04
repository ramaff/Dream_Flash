// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Spirit_Move_Away(){
	if point_distance(x,y,obj_Soul_Parent.x,obj_Soul_Parent.y) < 300 {
		var angg = scr_Soul_Point();
	    var adif = angle_difference(direction, angg);
	    if adif < 0 {
	        direction -= 0.5;	
	    }
	    if adif > 0 {
	        direction += 0.5;
	    }
	}
}