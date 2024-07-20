alarm[0] = 1;
//alarm[1] = 2;

repeat(20 + irandom(5)) {
    instance_create(random(room_width),random(room_height),obj_Flash_Sparkle);
}

depth = -100;