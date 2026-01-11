with (obj_Soul_Flash) {
    global.soulflash++;
	global.soulxp++;
    instance_destroy();
}
with (obj_Soul_Feel) {
    global.soulflash++;
	global.soulxp++;
    instance_destroy();
}
with (obj_Soul_Dream) {
    global.soulflash++;
	global.soulxp++;
    instance_destroy();
}
with (obj_Soul_Nightmare) {
    global.soulflash++;
	global.soulxp++;
    instance_destroy();
}

room_goto(The_Start_Room);

alarm[1] = 90;

