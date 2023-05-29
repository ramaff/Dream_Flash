scr_H07_Respawn();
scr_V03();
scr_OA05_Setup();

scr_Emotion_Field_Spawn_Check()

if global.currentchapter > 1 {
	scr_Save();
}

instance_destroy();