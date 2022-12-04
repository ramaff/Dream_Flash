if imagespeed < 1 {
image_angle = direction + 60;
}

imagespeed += imageaccel;
image_angle -= imagespeed;

