with (obj_Soul_Flash) {
    global.soulflash++;
    instance_destroy();
}
with (obj_Soul_Feel) {
    global.soulfeel++;
    instance_destroy();
}
with (obj_Soul_Dream) {
    global.souldream++;
    instance_destroy();
}
with (obj_Soul_Nightmare) {
    global.soulnightmare++;
    instance_destroy();
}

room_goto(The_Start_Room);

alarm[1] = 90;

