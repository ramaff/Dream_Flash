scr_Minion_Reload();

with instance_create(x,y,obj_Essential_Essence) {
    speed = 0.5 + random(0.8);
    friction = 0.01;
    direction = random(360);
}

