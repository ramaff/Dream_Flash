
//scr_bullet_expand_before_contract_v2(bullet_stats)

event_inherited()

image_angle += 3 / speed;
speed = lerp(speed, bullet_stats.bullet_speed * 0.1, 0.01)

scr_expand_then_contract_v2()
