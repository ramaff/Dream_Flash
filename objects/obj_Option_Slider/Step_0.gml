if (!mouse_check_button(mb_left)) {
    grab = false;
}

if (grab = false) and (clicked = false) {
    exit;
} else {
    if  ((mouse_x /* + xx */) > leftLimit) and ((mouse_x /* + xx */) < rightLimit) {
        xPos = mouse_x /* + xx */;
    } else if ((mouse_x + xx) < leftLimit) {
        xPos = leftLimit;
    } else if ((mouse_x + xx) > rightLimit) {
        xPos = rightLimit;
    }
}

percent = round(((xPos-leftLimit) / (rightLimit - leftLimit ))*100);

if type = 1 and category = 3 {
    global.gameSound = percent;
}
if type = 2 and category = 3 {
    global.gameMusic = percent;
}
if type = 4 and category = 1 {
    global.gameScreenShake = percent / 100;
}
if type = 15 and category = 4 {
    global.gameParticles = percent / 100;
}

clicked = false;


/* */
/*  */
