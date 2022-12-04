/// @description Insert description here
// You can write your code in this editor
var camx = camera_get_view_x(view)
var camy = camera_get_view_y(view)

var sizex = camx + (960 / camcon.view_zoom)
var sizey = camy + (540 / camcon.view_zoom)

var l_u_pos = u_pos;
var l_u_pos2 = u_pos2;
var l_u_z = u_z;
var l_u_z2 = u_z2;
var _vb = vb;

gpu_set_ztestenable(1);
gpu_set_zwriteenable(1);

var _z = 0;

//draw_set_colour(c_white);

with (obj_Dream_Light) {
	shader_set(shd_dream_shadow);
	shader_set_uniform_f(l_u_pos2, x, y);
	shader_set_uniform_f(l_u_z2, _z);
	vertex_submit(_vb, pr_trianglelist, -1);
	
	gpu_set_blendmode(bm_add);
	
	shader_set(shd_dream_light);
	shader_set_uniform_f(l_u_pos, x, y);
	shader_set_uniform_f(l_u_z, _z);
	
	draw_rectangle(camx,camy,sizex,sizey,0);
	
	gpu_set_blendmode(bm_normal);
	
	//draw_rectangle(x - 100, y - 100, x + 100, y + 100,0);
	_z--;
}

gpu_set_ztestenable(0);
gpu_set_zwriteenable(0);

shader_reset();