scr_Invincibility_Frames();

scr_Wall_Bounce();

scr_Minion_Step();

direction += -0.5 + random(1);

if speed = 0 {
    speed = smovementspeed
    friction = 0;
}

scr_U04();

scr_Minion_Follow_Leader();