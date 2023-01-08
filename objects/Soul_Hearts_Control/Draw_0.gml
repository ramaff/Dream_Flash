var x1 = camera_get_view_x(view);
//var x2 = x1 + camera_get_view_width(view);
var y1 = camera_get_view_y(view);

/*
var x1 = 10;
var y1 = 10;
var x2 = camera_get_view_width(view)
var y2 = 74;
*/

//show_debug_message(Camera_Control.view_zoom);
var zoom = Camera_Control.view_zoom
var gapsize = 45 / zoom;

var y2 = y1 + (36 / zoom);
var x2 = x1 + (25 / zoom);

if instance_exists(obj_Heart_Butt) {
	for(i = 0; i < 16; i++) {
	    if instance_exists(heartbutt[i]) {
		    var ix = x2 + (i * gapsize);
		    //var iy = y2 - (29 * zoom);
    
		    //var hpercent = 100 * (heart[i,3] / heart[i,4]);
		    heartbutt[i].x = ix;
		    heartbutt[i].y = y2;
	    }
	    //if heart[i,2] != 0 
	    //{
	    //    draw_sprite(spr_Basic_Heart,round(hpercent / 5),ix,iy);
	    //}
	}
}

/*
for (i = 0; i < 16; i++) {
    if (heart[i,3] >= 0) and (heart[i,2] != 0) {
        draw_text(obj_Soul_Parent.x - 40 + (40 * i),obj_Soul_Parent.y - 160,string(heart[i,3]))
    }
}
draw_text(obj_Soul_Parent.x,obj_Soul_Parent.y - 80,obj_Soul_Parent.shealth);
*/