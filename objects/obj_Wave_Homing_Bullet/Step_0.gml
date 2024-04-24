
//speed += bulletspeed / 1800 * ((alarm[0] mod 120) - 60)
//speed += bulletspeed / 60 * sin(alarm[0] / 3)
//speed = max(speed, bulletspeed / 3)
//rspeed = 1 + (bulletspeed - speed) / 2

var _bullet_life_adj = bulletlife - 60

speed -= ((bulletspeed / 2) * raccel) / _bullet_life_adj
speed = max(speed, bulletspeed / 4);
rspeed += raccel / _bullet_life_adj

raccel -= 8 / _bullet_life_adj


direction = scr_Angle_Converge(direction, scr_Soul_Point(), rspeed)
