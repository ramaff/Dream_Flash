//var item = slot;

//depth = 20;

var click = mouse_check_button_pressed(mb_left);

var mxx = obj_Astral_Indicator.x 
var myy = obj_Astral_Indicator.y 
var xx = x;
var yy = y;

if (abs(mxx - xx) < 16) && (abs(myy - yy) < 16) && !scr_Boss_Fight() {
	//show_debug_message("mxx: " + string(mxx) + ", x: " + string(x) + ", myy: " + string(myy) + ", y: " + string(y))
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

