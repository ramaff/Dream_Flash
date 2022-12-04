speed = smovementspeed;

Orbit = 75;

scr_Invincibility_Frames();
scr_Face_Direction();

scr_Light_Follow_Soul_AI();

    CenterX = obj_Soul_Parent.x;
    CenterY = obj_Soul_Parent.y;
    
    Angle += speed;
    if (Angle >= 360) {
        Angle -= 360;
    }

    x = lengthdir_x(Orbit, Angle) + CenterX;
    y = lengthdir_y(Orbit, Angle) + CenterY;

scr_Face_Direction();

scr_Minion_Step();