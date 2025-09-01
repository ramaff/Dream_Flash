grab = false;

scr_Sound_Effect(snd_Button_Click)

if type = 13 and category = 4 {
	if instance_exists(obj_Bloom_Control) {
		with(obj_Bloom_Control) {
			scr_Room_Effect_Step()
		}
	}
}
