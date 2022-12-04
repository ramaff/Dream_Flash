if image_xscale >= 0.5 {
	image_xscale = 0.5;
	image_yscale = 0.5;
}

var scale = image_xscale * 0.8 * ((300 + (y - starty)) / 300);

with instance_create(x,starty + 50, obj_Field_Shadow) {
	size = scale;	
	alarm[0] = 1;
	depth = other.depth + 12;
}
draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,0,c_white,1);
draw_set_color(c_white);

orbitExist[0] = 0;
orbitExist[1] = 0;
orbitExist[2] = 0;
orbitExist[3] = 0;
orbitExist[999] = 0;

with(obj_Item_Parent) {
    if itemOrbit = 0 {
        other.orbitExist[0] = 1;
    }
    if itemOrbit = 1 {
        other.orbitExist[1] = 1;
    }
    if itemOrbit = 2 {
        other.orbitExist[2] = 1;
    }
    if itemOrbit = 3 {
        other.orbitExist[3] = 1;
    }
    if itemOrbit = 999 {
        other.orbitExist[999] = 1;
    }
}

/*
if orbitExist[0] = 1 and global.currentOrbit = 0 {
    draw_circle_color(x,y,192/2,c_white,c_white,true)
}
if orbitExist[1] = 1 and global.currentOrbit = 1 {
    draw_circle_color(x,y,312/2,c_white,c_white,true)
}
if orbitExist[2] = 1 and global.currentOrbit = 2 {
    draw_circle_color(x,y,432/2,c_white,c_white,true)
}
if orbitExist[3] = 1 and global.currentOrbit = 3 {
    draw_circle_color(x,y,552/2,c_white,c_white,true)
}
if orbitExist[4] = 1 and global.currentOrbit = 4 {
    draw_circle_color(x,y,672,c_white,c_white,true)
}
*/
