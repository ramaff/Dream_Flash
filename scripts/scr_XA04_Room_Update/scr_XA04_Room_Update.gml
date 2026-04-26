/// Location: Boss Beat
function scr_XA04_Room_Update() {
	
	if global.XA[4] > 0 {
		with (Soul_Hearts_Control) {
			var i;
			for(i = 23; i >= 0; i--) {
				if heart[i].heart_id = 53 {
					heart[i].health_decay += 2;
					if heart[i].health_decay > heart[i].max_health - 1 {
						heart[i].health_decay = heart[i].max_health - 1;
					}
				}
			}
		}
	}


}
