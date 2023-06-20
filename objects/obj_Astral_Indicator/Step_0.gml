if window_has_focus() {
    x = mouse_x;
    y = mouse_y;
}

if scr_Room_Leavable() and scr_Negative_Room_Check() {
    scr_Adjacent_Room_Cloud();
}

/*if global.bosscount = 0 and scr_Negative_Room_Check() {
    scr_Adjacent_Room_Cloud();
} */