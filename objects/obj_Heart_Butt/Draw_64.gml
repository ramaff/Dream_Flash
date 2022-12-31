//var item = slot;

depth = 20;

var click = mouse_check_button_pressed(mb_left);

if (abs(mouse_x - x) < 16) && (abs(mouse_y - y) < 16) && !scr_Boss_Fight() {
    draw_set_color(c_white);
    if (Soul_Hearts_Control.heart[slot,2] != 0) {
        draw_rectangle(x-16,y-16,x+16,y+16,0);
    }
    if (click) {
        if (global.mousehearttype != 0) {
            scr_Heart_Drop_Slot();
        } 
        else if (global.mouseheartslot = 0) {
            scr_Heart_Pickup_Slot()
        }
    }
}

if (Soul_Hearts_Control.heart[slot,2] != 0) {
    scr_Draw_Heart_Status();
}

