scr_Load();

if global.loadrun = 1 {

    scr_Load_Run();
    
    scr_Load_Item_Stats();
    
    scr_Load_Room();
	
	global.doneLoading = 1;
	
	scr_Save_Run();
	
    
} 

scr_Tutorial_Note_Spawn("starting_tutorial")

with obj_Bloom_Control {
	scr_Room_Effect_Step()	
}
	