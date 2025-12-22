if (!mouse_check_button(mb_left)) {
    grab = false;
}

if (grab = false) and (clicked = false) {
    exit;
} else {
    if ((obj_Astral_Indicator.x /* + xx */) > leftLimit - 50) and ((obj_Astral_Indicator.x /* + xx */) < rightLimit + 50) {
        xPos = obj_Astral_Indicator.x /* + xx */;
    }
}

percent = round(((xPos-leftLimit) / (rightLimit - leftLimit ))*100);
percent = clamp(percent, 0, 100)

if type = 1 and category = 3 {
    global.gameSound = percent;
}
if type = 2 and category = 3 {
    global.gameMusic = percent;
}
if type = 4 and category = 1 {
    global.gameScreenShake = percent / 100;
}
if type = 13 and category = 4 {
    global.gameBloomShader = percent / 100;
}
if type = 15 and category = 4 {
    global.gameParticles = percent / 100;
}

clicked = false;


/* */
/*  */
