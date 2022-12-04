//heart #
heart[0,0] = "heart1";
//heart position
heart[0,1] = 1;
//heart type
heart[0,2] = 1;
//heart health
heart[0,3] = 20;
//heart capacity health
heart[0,4] = 20;
//heart capacity decay
heart[0,5] = 0;

heart[1,0] = "heart2";
heart[1,1] = 2;
heart[1,2] = 1;
heart[1,3] = 20;
heart[1,4] = 20;
heart[1,5] = 0;

heart[2,0] = "heart3";
heart[2,1] = 3;
heart[2,2] = 1;
heart[2,3] = 20;
heart[2,4] = 20;
heart[2,5] = 0;

for(i = 3; i < 24; i++) {
    heart[i,0] = "heart" + string(i + 1);
    heart[i,1] = i + 1;
    heart[i,2] = 0;
    heart[i,3] = global.soulhealth * ((40 + global.soulvitality) / 40);
    heart[i,4] = global.soulmaxhealth * ((40 + global.soulvitality) / 40);
	heart[i,5] = 0;
}
/*
heart[3,0] = "heart4";
heart[3,1] = 4;
heart[3,2] = 17;
heart[3,3] = 20;
heart[3,4] = 20;
heart[3,5] = 0;

/*
for (i = 0; i < 16; i++) {
	heart[i,0] = "heart" + string(i + 1);
    heart[i,1] = i + 1;
    heart[i,2] = i + 1;
	if i = 4 {
		heart[i,2] = 51;	
	}
	if i = 6 {
		heart[i,2] = 52;	
	}
    heart[i,3] = global.soulhealth * ((40 + global.soulvitality) / 40);
    heart[i,4] = global.soulmaxhealth * ((40 + global.soulvitality) / 40);
} */


for(i = 0; i < 16; i++) {
    global.hinv[i] = 0;
    heartbutt[i] = instance_create(0,0,obj_Heart_Butt);
    heartbutt[i].slot = i;
}

global.mouseheartslot = 0;
global.mousehearttype = 0;
instance_create(0,0,obj_Mouse_Heart);