if (!mouse_check_button(mb_left)) {
    grab = false;
}

if (grab = false) and (clicked = false) {
    exit;
} else {
    if ((obj_Indicator_Parent.x /* + xx */) > leftLimit - 50) and ((obj_Indicator_Parent.x /* + xx */) < rightLimit + 50) {
        xPos = obj_Indicator_Parent.x /* + xx */;
    }
}

percent = round(((xPos-leftLimit) / (rightLimit - leftLimit ))*100);

event_user(0);

clicked = false;


/* */
/*  */
