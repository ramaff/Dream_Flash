
image_angle += 3 / max(0.25, speed);
speed = lerp(speed, bullet_stats.bullet_speed * 0.1, 0.01)

var _tar_size = max(0.01, bullet_stats.bullet_size)

image_xscale = lerp(image_xscale, _tar_size, 0.1);
image_yscale = lerp(image_yscale, _tar_size, 0.1);

scr_bullet_expand_before_contract_v2(bullet_stats)
