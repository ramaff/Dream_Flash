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

Charge_Speed = 0;
Charge_Power = 0;
Charge_Knockback = 0;
Charge_Lifespan = 0;
Charge_Time = 0;
Charge_Hold = 0;
Charge_Size = 0;

