var _tex_array = texturegroup_get_textures( "default");
for (var i = 0; i < array_length(_tex_array); ++i)
{
   texture_prefetch(_tex_array[i]);
}

var _cursor = instance_create_depth(-64,-64, depth - 9999, obj_Dream_Cursor);

instance_create_depth(0,0,depth,Camera_Control)
instance_create_depth(0,0,0,Music_Control);
instance_create_depth(0,0,depth,obj_Bloom_Control)

alarm[0] = 1