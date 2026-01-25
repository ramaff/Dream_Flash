if global.cloudalpha >= 0 {
    global.cloudalpha -= 0.15;
}

scr_Persistent_Stat_Check();
scr_Room_Variable_Step();


scr_Room_Leavable(true)
