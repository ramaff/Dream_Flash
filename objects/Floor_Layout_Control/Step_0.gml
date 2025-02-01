if global.cloudalpha >= 0 {
    global.cloudalpha -= 0.15;
}
if global.recoalpha >= 0 {
    global.recoalpha -= 0.15;
}

scr_Persistent_Stat_Check();
scr_Room_Variable_Step();


scr_Room_Leavable(true)
