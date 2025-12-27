if global.mouseheartslot != -1 {
    var item = global.mouseheartslot;
    var hpercent = 100 * (Soul_Hearts_Control.heart[item,3] / Soul_Hearts_Control.heart[item,4]);
    
    if (item != -1) {
    
        x = obj_Astral_Indicator.x;
        y = obj_Astral_Indicator.y;
		
		scr_Draw_Heart(global.mousehearttype, hpercent)
  
    }
}

