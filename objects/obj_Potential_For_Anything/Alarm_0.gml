/// @description Insert description here
// You can write your code in this editor
alarm[0] = 5 + random(15);

with instance_create(x,y,obj_Item_Spark) {
alarm[0] = 30 + random(90);
speed = 0.1 + random(0.8);
direction = random(360);
}
