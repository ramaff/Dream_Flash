/// @description Insert description here
// You can write your code in this editor

global.psystem = part_system_create();

global.pemitter = part_emitter_create(global.psystem);

global.pbsystem = part_system_create();

global.pbemitter = part_emitter_create(global.pbsystem);

ptype = part_type_create();

pshottrailtype = part_type_create();
pshothittype = part_type_create();

pshotexplodetype = part_type_create();
pshotexplodesmoketype = part_type_create();

//part_type_sprite(ptype,spr_Soul_Ball,true,false,true);

part_type_shape(ptype,pt_shape_sphere);
part_type_alpha3(ptype,0,1,0);
part_type_color3(ptype, c_white, c_yellow, c_red);
part_type_life(ptype,60,90);
part_type_size(ptype,0.5,1,0.01,0);
part_type_gravity(ptype,0.075,90);