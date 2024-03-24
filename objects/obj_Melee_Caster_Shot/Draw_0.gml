/// @description Insert description here
// You can write your code in this editor
if shot_stats.Shot_Orbital_Type = 1 {
    image_angle = 0;
}

if shot_stats.Shot_Lobbing >= 1 {
	draw_sprite_ext(spr_Bullet_Shadow,0,x,y+shot_stats.Shot_Bounce_Y,shot_stats.Shot_Size * 1.5 * (1.2 - (shot_stats.Shot_Bounce_Y / 200)),shot_stats.Shot_Size * 1.5 * (1.2 - (shot_stats.Shot_Bounce_Y / 200)),0,c_white,image_alpha * (0.5 - (shot_stats.Shot_Bounce_Y/150)));
}

if global.A[14] > 0 and shot_stats.Shot_Origin = obj_Soul_Parent {
    draw_sprite_ext(spr_Aura_Strike_Aura,0,x,y,0.8,0.8,0,c_white,1);
}

if shot_stats.Shot_Aura = 1 and image_alpha > 0 {
    draw_sprite_ext(shot_stats.Shot_Aura_Sprite,0,x,y,1,1,0,c_white,1);
}

var fdist = 50;
var tdist = 50 / shot_stats.Shot_Init_Speed;
var etime = shot_stats.Shot_Life_Span - shot_stats.Shot_Timer;
var edist = shot_stats.Shot_Init_Speed * etime;

var sSize = 1 - ((fdist - edist) / fdist);

if sSize >= 1 {
	sSize = 1;	
}

if sSize < 0 {
	sSize = 0;	
}

if ((shot_stats.Shot_Life_Span - shot_stats.Shot_Timer) <= (tdist)) and (shot_stats.Shot_Life_Span > (tdist)) and (shot_stats.Shot_Form_Show = 1) {
    //d3d_set_fog(true,c_white,0,0);
    //draw_sprite_ext(sprite_index,image_index,x,y,image_xscale * sSize,image_yscale * sSize,image_angle,c_white,image_alpha);
    //d3d_set_fog(false,c_black,0,0);
    draw_sprite_ext(sprite_index,image_index,x,y,image_xscale * sSize,image_yscale * sSize,image_angle,c_white,image_alpha/* * sSize*/);
} else {
    draw_sprite_ext(sprite_index,image_index,x,y,image_xscale * shot_stats.Shot_Size_Relation,image_yscale * shot_stats.Shot_Size_Relation,image_angle,c_white,image_alpha);
}
