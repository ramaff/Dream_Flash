baseDepth = 0;

scr_Room_Depth(0.01);


if moveUp = 1 {
    if direction < 90 {
        direction += direction / 90;
    }
    if direction > 90 {
        direction -= direction / 90;
    }
}

