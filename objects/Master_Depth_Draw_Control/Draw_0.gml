var inum = instance_number(obj_Depth);
var dgrid = ds_depthgrid;

var realdepth = depth;

if (ds_grid_height(ds_depthgrid) != inum) {
    ds_grid_resize(dgrid, 2, inum);
}

// Add instances

var yyy = 0;
with(obj_Depth) {
	dgrid[# 0, yyy] = id;
	dgrid[# 1, yyy] = y - (depth * 8);
	yyy++;
}


// Sort Grid

ds_grid_sort(dgrid, 1, true);

// Loop + Draw

//gpu_set_blendmode(bm_normal);

with(obj_Soul_Hurt) {
	if depth > 0 {
		event_perform(ev_draw,0)
	}
}

with(obj_Particle_Parent) {
	event_perform(ev_draw,0)
}

yyy = 0;
var inst;
repeat(inum) {
    //Pull ID
    inst = dgrid[# 0, yyy];
    with(inst) {
        event_perform(ev_draw,0);
    }
    yyy++;
}

with(obj_Particle_Parent_Front) {
	event_perform(ev_draw,0)
}/*
gpu_set_blendmode(bm_subtract);
with(obj_Particle_Parent_Front_Mult) {
	event_perform(ev_draw,0)
}
gpu_set_blendmode(bm_normal); */
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
