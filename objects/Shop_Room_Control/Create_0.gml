//with (other) {

Floor_Layout_Control.Flash[global.currentroom,3] = floor(Floor_Layout_Control.Flash[global.currentroom,3] / 128) * 128;

instance_create((room_width / 2) + global.soulSpawnXAdd,(room_height / 2) + global.soulSpawnYAdd, obj_Basic_Soul);

scr_Wall_Form();

global.bosscount = 0;
global.bossval = 0;

global.itemcount = 0;

global.itemFieldSpeed[0] = 0.25;
global.itemFieldSpeed[1] = 0.25;
global.itemFieldSpeed[2] = 0.25;
global.itemFieldSpeed[3] = 0.25;
global.itemFieldSpeed[500] = 0.25;
global.itemFieldSpeed[999] = 0.25;

global.orbit[0] = 0;
global.orbit[1] = 0;
global.orbit[2] = 0;
global.orbit[3] = 0;
global.orbit[999] = -1000;

field = Floor_Layout_Control.Flash[global.currentroom,0];
for(i = 7; i <= 16; i++){
    if string_digits(Floor_Layout_Control.Flash[global.currentroom,i]) = Floor_Layout_Control.Flash[global.currentroom,i] {
        Floor_Layout_Control.Flash[global.currentroom,i] = real(Floor_Layout_Control.Flash[global.currentroom,i]);
    }   
}
item[1] = Floor_Layout_Control.Flash[global.currentroom,7];
item[2] = Floor_Layout_Control.Flash[global.currentroom,8];
item[3] = Floor_Layout_Control.Flash[global.currentroom,9];
item[4] = Floor_Layout_Control.Flash[global.currentroom,10];
item[5] = Floor_Layout_Control.Flash[global.currentroom,11];
item[6] = Floor_Layout_Control.Flash[global.currentroom,12];
item[7] = Floor_Layout_Control.Flash[global.currentroom,13];
item[8] = Floor_Layout_Control.Flash[global.currentroom,14];
item[9] = Floor_Layout_Control.Flash[global.currentroom,15];
item[10] = Floor_Layout_Control.Flash[global.currentroom,16];

scr_Shop_Item_Spawn(field, item[1], item[2], item[3], item[4], item[5], item[6], item[7], item[8], item[9], item[10]);

//scr_Shop_Items_Spawn();

//}
