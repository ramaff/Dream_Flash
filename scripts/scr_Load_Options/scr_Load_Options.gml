function scr_Load_Options() {
	if (file_exists("options.sav"))
	{
	    ini_open("options.sav")
    
	    //extracting values
    
	        global.gameTutorial = ini_read_real("Options","gameTutorial",0);
	        global.gameSound = ini_read_real("Options","gameSound",75);
	        global.gameMusic = ini_read_real("Options","gameMusic",75);
	        global.gameFocusPause = ini_read_real("Options","gameFocusPause",1);
	        global.gameDamageDisplay = ini_read_real("Options","gameDamageDisplay",1);
	        global.gameResolutionX = ini_read_real("Options","gameResolutionX",1280);
	        global.gameResolutionY = ini_read_real("Options","gameResolutionY",720);
	        global.gameFullscreen = ini_read_real("Options","gameFullscreen",0);
			global.gameBloomShader = ini_read_real("Options","gameBloomShader",1);
			
			global.gameScreenShake = ini_read_real("Options","gameScreenShake",1);
			global.gameParticles = ini_read_real("Options","gameParticles",1);
			global.gameGraphics = ini_read_string("Options","gameGraphics","High");
			
			global.gameMoveLeft = ini_read_string("Options","gameMoveLeft","A");
			global.gameMoveDown = ini_read_string("Options","gameMoveDown","S");
			global.gameMoveRight = ini_read_string("Options","gameMoveRight","D");
			global.gameMoveUp = ini_read_string("Options","gameMoveUp","W");
			
			global.gamePressShoot = ini_read_string("Options","gamePressShoot","mb_left");
			global.gamePressTeleport = ini_read_string("Options","gamePressTeleport","mb_right");
			global.gameWeaponSwapDown = ini_read_string("Options","gameWeaponSwapDown","C");
			global.gameWeaponSwapUp = ini_read_string("Options","gameWeaponSwapUp","Z");
			
			global.gameMapExpand = ini_read_string("Options","gameMapExpand","M");
        
	    ini_close()

	}





}
