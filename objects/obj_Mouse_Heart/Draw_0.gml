if global.mouseheartslot != -1 {
    var item = global.mouseheartslot;
    var hpercent = 100 * (Soul_Hearts_Control.heart[item,3] / Soul_Hearts_Control.heart[item,4]);
    
    if (item != -1) {
    
        x = mouse_x;
        y = mouse_y;
		
		scr_Draw_Heart(global.mousehearttype, hpercent)
  
    }
}

