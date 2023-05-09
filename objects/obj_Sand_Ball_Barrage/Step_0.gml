friction = bulletspeed / 45;
if bulletsize < 0.75 {
    bulletsize += 0.03;
    image_xscale = bulletsize;
    image_yscale = bulletsize;
}

scr_Push_Away_From_Self(200, 0.15);

//speed = min(bulletspeed, speed + 0.2)
//direction = scr_Angle_Converge(direction, scr_Soul_Point(), 0.1)

x = scr_Converge(x, obj_Soul_Parent.perX, 0.75)
y = scr_Converge(y, obj_Soul_Parent.perY, 0.75)

