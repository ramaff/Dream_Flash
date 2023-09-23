/// @description Insert description here
// You can write your code in this editor
	//price = 0;
shop = 1;
weapon = 0;

with (obj_Item_Parent) {
	instance_destroy();
}

itemNumChoice = 0

for(i = 1; i <= 13; i++) {
	//show_debug_message(global.floor[global.currentroom,6+i])
	var iItem = global.floor[global.currentroom,6+i];
    if iItem != "0" and iItem != "00" {
		itemNumChoice++;	
	}
}
	
itemNumPick = 1;
for(j = 1; j <= itemNumChoice; j++) {
	if j <= 2 {
		hopeDiamond = 0;
	} else {
		hopeDiamond = 1;	
	}
				
	global.floor[global.currentroom,j+6] = scr_Pool_Pick(scr_Get_Item_Pool_From_Letter(pool))
	//show_debug_message(string(j+6))
	//show_debug_message(global.floor[global.currentroom,j+6])
}

var fieldPicked = "Misc Field"

if pool = "A" {
	fieldPicked = "Strength Field";
}
if pool = "B" {
	fieldPicked = "Vitality Field";
}
if pool = "C" {
	fieldPicked = "Essence Field";
}
if pool = "D" {
	fieldPicked = "Dexterity Field";
}
if pool = "E" {
	fieldPicked = "Perception Field";
}
if pool = "F" {
	fieldPicked = "State Field";
}
if pool = "OA" {
	fieldPicked = "Hope Field";
}
if pool = "OB" {
	fieldPicked = "Bliss Field";
}
if pool = "OC" {
	fieldPicked = "Assurance Field";
}
if pool = "XA" {
	fieldPicked = "Loathing Field";
}
if pool = "XB" {
	fieldPicked = "Paranoia Field";
}
if pool = "XC" {
	fieldPicked = "Despair Field";
}
if pool = "I" {
	fieldPicked = "Emotion Field";
}

global.floor[global.currentroom,0] = fieldPicked

global.OA5rooms[global.currentroom] = [];

//scr_Save_Run()

field = global.floor[global.currentroom,0];
for(i = 1; i <= 13; i++) {
	//show_debug_message(global.floor[global.currentroom,6+i])
    item[i] = global.floor[global.currentroom,6+i];
	//show_debug_message(string(i+6))
	//show_debug_message(item[i])
}

scr_Item_Spawn(field, item[1], item[2], item[3], item[4], item[5], item[6], item[7], item[8], item[9], item[10], item[11], item[12], item[13]);

scr_Save_Run();

with(obj_Potential_For_Anything) {
	instance_destroy();	
}

with obj_Anything_Field {
	instance_destroy();	
}

instance_destroy();
	
