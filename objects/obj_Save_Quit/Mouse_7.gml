
scr_Sound_Effect([snd_Button_Click, snd_Button_Click_2, snd_Button_Click_3])
scr_Pause_Main_Leave();
global.layerdeep = 1;

if global.totalhearts <= 0 {
	scr_Game_Reset()
}

var rom = global.floor[global.currentroom,0]

if rom != "Boss" and rom != "Super Boss" and rom != "Chamber" and rom != "State" {
    scr_Save();
}

scr_Game_Reset()

//room_goto(Title_Screen);