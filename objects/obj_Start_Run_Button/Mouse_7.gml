//instance_create(x,y,obj_Loading_Screen);

if global.layerdeep = 2 if global.startrunbuttonpress = 0 {
    
    if load = 0 {
        if (file_exists("saverun.sav"))
        {
            file_delete("saverun.sav");
        }
    }
    
    global.loadrun = load;
	global.startrunbuttonpress = 1;
    
    instance_create(0,0,Run_Fade_Control);
    instance_create(0,0,obj_Fade);

}

