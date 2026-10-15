alarm[0] = 5 + random(15);

if global.recollectDisplayValue = itemVal {

    with instance_create_depth(x,y,-1,obj_Recollect_Spark) {
        alarm[0] = 75 + random(45);
        speed = 0.3 + random(0.5);
        direction = random(360);
    }

}

