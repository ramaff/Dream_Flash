/*
repeat(79) {
    with instance_create(random(room_width),random(room_height),obj_Dream_Cloud) {
        image_index = irandom(2);
    }
}
repeat(49) {
    with instance_create(random(room_width),random(room_height),obj_Big_Dream_Cloud) {
        image_index = choose(0,0,0,1,2,2,2);
    }
}

