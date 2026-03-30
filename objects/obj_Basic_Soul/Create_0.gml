scr_Soul_Stats_Setup();

size = 0.5;

image_xscale = 0.5;
image_yscale = 0.5;

scr_Soul_Utility_Setup();

scr_Familiar_Spawn();

scr_OB03();
scr_S05()

alarm[1] = 1;
alarm[2] = 2;

if instance_number(obj_Astral_Indicator) < 1 {
	instance_create(x,y,obj_Astral_Indicator);
}

upixelH = shader_get_uniform(shOutline,"pixelH");
upixelW = shader_get_uniform(shOutline,"pixelW");

texelW = 2 * texture_get_texel_width(sprite_get_texture(sprite_index,0));
texelH = 2 * texture_get_texel_height(sprite_get_texture(sprite_index,0));

scr_Soul_Create_Mod();

facing_direction = 1;

scr_Soul_Particles();

sprite_index = spr_The_Soul_Trail_Sway;
