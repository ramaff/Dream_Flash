boost = global.boost;
champ = global.champ;

bossValue = 53;
scr_Boss_Stats_Setup();


    with instance_create(x+66,y-99, obj_Nightmare) {
        champ = other.champ;
        boost = other.boost;
        bossID = other.bossID;
        global.bosscount += 1;
    }


scr_Boss_Size_Setup(0.5);

//image_speed = 0;
image_index = 0;

