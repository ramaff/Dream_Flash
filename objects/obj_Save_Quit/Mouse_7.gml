scr_Pause_Main_Leave();
global.layerdeep = 1;

if global.totalhearts <= 0 {
	game_restart();
}

var rom = Floor_Layout_Control.Flash[global.currentroom,0]

if rom != "Boss" and rom != "Super Boss" and rom != "Chamber" and rom != "State" {
    scr_Save();
}

game_restart();

//room_goto(Title_Screen);