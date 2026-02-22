
image_angle += 3 / speed;
speed = lerp(speed, bullet_stats.bullet_speed * 0.1, 0.01)

image_xscale = lerp(image_xscale, bullet_stats.bullet_size, 0.1);
image_yscale = lerp(image_yscale, bullet_stats.bullet_size, 0.1);

scr_bullet_expand_before_contract_v2(bullet_stats)
