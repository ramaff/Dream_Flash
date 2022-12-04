alarm[1] = 60 + random(60);

leftright = choose(1,2)
updown = choose(1,2)

if leftright = 1 {
	xx = random(room_width * 0.4);
} else {
	xx = room_width * 0.6 + random(room_width * 0.4);
}

if updown = 1 {
	yy = random(room_height * 0.5);
} else {
	yy = room_height * 0.8 + random(room_height * 0.2);
}

with instance_create(xx,yy,obj_Menu_Fade_In) {
    alarm[0] = 180 + random(180);
    image_speed = 0;
}

