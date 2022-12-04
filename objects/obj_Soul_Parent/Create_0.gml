scr_Soul_Stats_Setup();

scr_Soul_Utility_Setup();

scr_Familiar_Spawn();

if global.soulSpawnXAdd < 0 {
    image_index = 1
} else {
    image_index = 0;
}

upixelH = shader_get_uniform(shOutline,"pixelH");
upixelW = shader_get_uniform(shOutline,"pixelW");

texelW = texture_get_texel_width(sprite_get_texture(sprite_index,0));
texelH = texture_get_texel_height(sprite_get_texture(sprite_index,0));

scr_Soul_Particles();

