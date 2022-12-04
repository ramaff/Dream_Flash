speed -= bulletspeed / (bulletlife / 2);
image_angle = direction;
if speed < 0 {
image_angle += 180;
}

