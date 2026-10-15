scr_Minion_Reload();

with instance_create_depth(x,y,0,obj_Healthy_Essence) {
    speed = 0.5 + random(0.8);
    friction = 0.01;
    direction = random(360);
}

