// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Boss_Item_Field(roomType){
	fieldSpawn = 1;
	
	global.emoteFieldSpawn--;
	
	//Print_DF(global.emoteFieldSpawn)
	
	if instance_exists(Chapter_Change_Control) {
		exit;	
	}
	
	scr_Emotion_Field_Spawn_Check()
}