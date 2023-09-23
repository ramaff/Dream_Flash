nextRoomX = 0;
nextRoomY = 0;
nextRoom = global.currentroom;

roomXUp = 0;
roomXDown = 0;
roomYUp = 0;
roomYDown = 0;

for(i = 0; i <= global.maxRooms; i++) {
    if global.floor[global.currentroom,1] = global.floor[i,1] + 1
    if global.floor[global.currentroom,2] = global.floor[i,2] {
        roomXDown = 1;
    }
    if global.floor[global.currentroom,1] = global.floor[i,1] - 1
    if global.floor[global.currentroom,2] = global.floor[i,2] {
        roomXUp = 1;
    }
    if global.floor[global.currentroom,1] = global.floor[i,1]
    if global.floor[global.currentroom,2] = global.floor[i,2] + 1 {
        roomYUp = 1;
    }
    if global.floor[global.currentroom,1] = global.floor[i,1]
    if global.floor[global.currentroom,2] = global.floor[i,2] - 1 {
        roomYDown = 1;
    }
}

size = global.floor[global.currentroom,3];
xPos = (room_width / 2) - (size / 2);
yPos = (room_height / 2) - (size / 2);

spriteSize = size / 1024;
//if size >= 992 {
leaveSprite = spr_Adjustable_Leave_Indicator;

var odep = depth;
depth = 100;


lalp += lalpdir;

if lalp < 0.6 {
	lalpdir = 0.005;
}
if lalp > 1.05 {
	lalpdir = -0.005;
}

if scr_Room_Leavable() {
    if roomXUp = 1 {
        draw_sprite_ext(leaveSprite,0,xPos,yPos+2,spriteSize,spriteSize,0+180,c_white,lalp);
    }
    if roomYUp = 1 {
        draw_sprite_ext(leaveSprite,0,xPos+1,yPos+2+size,spriteSize,spriteSize,90+180,c_white,lalp);
    }
    if roomXDown = 1 {
        draw_sprite_ext(leaveSprite,0,xPos+size-1,yPos+1+size,spriteSize,spriteSize,180+180,c_white,lalp);
    }
    if roomYDown = 1 {
        draw_sprite_ext(leaveSprite,0,xPos+size,yPos+1,spriteSize,spriteSize,270+180,c_white,lalp);
    }
}

depth = odep;

depth = 100;


/* */
/*  */
