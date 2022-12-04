scr_Load();

if global.loadrun = 1 {

    scr_Load_Run();
    
    instance_destroy(Floor_Layout_Control);
    instance_create(x,y, Floor_Layout_Control);
    //instance_destroy(Gui_Control);
    //instance_create(x,y, Gui_Control);
    
    scr_Load_Run();
    
    //scr_Load_Item_Stats();
    
    scr_Load_Room();
	
	global.doneLoading = 1;
	
	scr_Save_Run();
    
}

