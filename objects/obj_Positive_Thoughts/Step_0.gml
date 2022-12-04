scr_Invincibility_Frames();

direction += -0.5 + random(1);

scr_Wall_Bounce();

scr_Minion_Step();

if speed = 0 {
    speed = smovementspeed
    friction = 0;
}

scr_U04();

scr_Minion_Follow_Leader();