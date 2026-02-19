function scr_Load_Options() {
	
	var _save_file = "options.sav"
	var _backup_save_file = "options_backup.sav"
	
	scr_Handle_File_Load(_save_file, _backup_save_file)
	
	if (file_exists(_save_file))
	{
	    ini_open(_save_file)
    
	    //extracting values
		
			global.tutorial_progress = ini_read_string("Options", "tutorial_progress",{});
			global.tutorial_progress = json_parse(global.tutorial_progress);
    
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
			global.level_up_camera_lock = ini_read_real("Options","level_up_camera_lock",1);
			
			global.gameMoveLeft = ini_read_string("Options","gameMoveLeft","A");
			global.gameMoveDown = ini_read_string("Options","gameMoveDown","S");
			global.gameMoveRight = ini_read_string("Options","gameMoveRight","D");
			global.gameMoveUp = ini_read_string("Options","gameMoveUp","W");
			
			global.gamePressShoot = ini_read_string("Options","gamePressShoot","mb_left");
			global.gamePressTeleport = ini_read_string("Options","gamePressTeleport","mb_right");
			global.gameWeaponSwapDown = ini_read_string("Options","gameWeaponSwapDown","C");
			global.gameWeaponSwapUp = ini_read_string("Options","gameWeaponSwapUp","Z");
			
			global.gameMapExpand = ini_read_string("Options","gameMapExpand","M");
			
			var _controller_controls = ini_read_string("Options", "controller_controls",{});
			_controller_controls = json_parse(_controller_controls);
			if array_length(struct_get_names(_controller_controls)) > 0 {
				InputBindingsImport(true, _controller_controls)
			}
        
	    ini_close()

	}





}
