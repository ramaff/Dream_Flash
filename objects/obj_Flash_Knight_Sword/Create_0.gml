image_angle = direction + 60;

imageaccel = 0.04;
imagespeed = 0;
imagespeed += imageaccel;
image_angle -= imagespeed;

alarm[1] = (20 + random(30)) / (1 + imagespeed);
alarm[2] = (20 + random(10)) / (1 + imagespeed);

