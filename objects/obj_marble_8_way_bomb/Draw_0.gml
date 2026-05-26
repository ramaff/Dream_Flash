var _shadow_scale = 2 * (1.2 - (bullet_stats.bullet_bounce_height / 400))
var _shadow_alpha = (0.75 - (bullet_stats.bullet_bounce_height / 600))

draw_sprite_ext(spr_Bullet_Shadow,0,x,y+bullet_stats.bullet_bounce_height,
                image_xscale * _shadow_scale,image_yscale * _shadow_scale, 0, c_white, _shadow_alpha);

draw_self();

