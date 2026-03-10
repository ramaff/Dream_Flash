var x1 = camera_get_view_x(view);
var y1 = camera_get_view_y(view);

var zoom = Camera_Control.view_zoom
var gapsize = 45 / zoom;

var y2 = y1 + (36 / zoom);
var x2 = x1 + (25 / zoom);

Print_DF(heart)

/*
if instance_exists(obj_Heart_Butt) {
	for(i = 0; i < 16; i++) {
	    if instance_exists(heartbutt[i]) {
		    var ix = x2 + (i * gapsize);
		    heartbutt[i].x = ix;
		    heartbutt[i].y = y2;
	    }
	}
}
