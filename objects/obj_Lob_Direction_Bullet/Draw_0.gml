draw_sprite_ext(spr_Bullet_Shadow,0,x,y+bulletbounceY,image_xscale * 2 * (1.2 - (bulletbounceY / 200)),image_yscale * 2 * (1.2 - (bulletbounceY / 200)),0,c_white,(0.75 - (bulletbounceY/300)));

draw_self();

