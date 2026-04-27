function scr_Settings_Status_Store() {
	
	global.tutorial_progress = {
		"base_tutorial": 0,
	}
	
	global.gameTutorial = 0;
	global.gameSound = 100;
	global.gameMusic = 100;
	global.gameFocusPause = 1;
	global.gameDamageDisplay = 1;
	global.gameResolutionX = 1280;
	global.gameResolutionY = 720;
	global.gameFullscreen = 0;
	global.gameBloomShader = 1;
	global.level_up_camera_lock = 1;
	global.game_controller_gryo = 0;
	global.game_controller_sensitivity = 0.5;
	
	global.gameScreenShake = 1;
	global.gameParticles = 1;
	global.gameGraphics = "High";
	
	scr_Controls_Setup();



}
