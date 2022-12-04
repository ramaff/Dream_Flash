baseDepth = 0;

scr_Room_Depth(-0.1);

image_alpha -= 0.075;

if moveUp = 1 {
    if direction < 90 {
        direction += direction / 90;
    }
    if direction > 90 {
        direction -= direction / 90;
    }
}

