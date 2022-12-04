 /// @description Insert description here
// You can write your code in this editor
//surface_resize(application_surface, 480,270);
//display_set_gui_maximize();

u_pos = shader_get_uniform(shd_dream_light, "u_pos")
u_pos2 = shader_get_uniform(shd_dream_shadow, "u_pos")
u_z = shader_get_uniform(shd_dream_light, "u_z")
u_z2 = shader_get_uniform(shd_dream_shadow, "u_z")

vertex_format_begin();
vertex_format_add_position_3d();
vf = vertex_format_end();

vb = vertex_create_buffer();

instance_create(x,y,obj_Dream_Moving_Light);

//depth = 20000000;

//depth = 200;