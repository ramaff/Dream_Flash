var inum = instance_number(obj_Depth);
var dgrid = ds_depthgrid;

texture_set_interpolation(0);

var realdepth = depth;

if (ds_grid_height(ds_depthgrid) != inum) {
    ds_grid_resize(dgrid, 2, inum);
}

// Add instances

var yyy = 0;
with(obj_Depth) {
	/*if object_get_parent(object_index) = obj_Bullet_Parent || object_index = obj_Bullet_Parent {
		exit;	
	} */
	dgrid[# 0, yyy] = id;
	dgrid[# 1, yyy] = y - (depth * 8);
	yyy++;
}


// Sort Grid

ds_grid_sort(dgrid, 1, true);

// Loop + Draw

with(obj_Soul_Hurt) {
	if depth > 0 {
		event_perform(ev_draw,0)	
	}
}

with(obj_Particle_Parent) {
	//if depth < 0 {
		event_perform(ev_draw,0)	
	//}
}

var yyy = 0;
var inst;
repeat(inum) {
    //Pull ID
    inst = dgrid[# 0, yyy];
    with(inst) {
        event_perform(ev_draw,0);
    }
    yyy++;
}

with(obj_Beam_Shot) {
	event_perform(ev_draw,0)	
}
with(obj_Laser_Tip) {
	event_perform(ev_draw,0)	
}
with(obj_Soul_Hurt) {
	if depth <= 0 {
		event_perform(ev_draw,0)	
	}
}
