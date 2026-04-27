function scr_Save_Options() {
	var _save_file = "options.sav"
	var _backup_save_file = "options_backup.sav"

	scr_Handle_File_Backup(_save_file, _backup_save_file)

	ini_open(_backup_save_file)
	
	ini_write_string("Options", "tutorial_progress", string_replace_all(json_stringify(global.tutorial_progress), "\"", "'"));

	ini_write_real("Options", "gameTutorial", global.gameTutorial);
	ini_write_real("Options", "gameSound", global.gameSound);
	ini_write_real("Options", "gameMusic", global.gameMusic);
	ini_write_real("Options", "gameFocusPause", global.gameFocusPause);
	ini_write_real("Options", "gameDamageDisplay", global.gameDamageDisplay);
	ini_write_real("Options", "gameResolutionX", global.gameResolutionX);
	ini_write_real("Options", "gameResolutionY", global.gameResolutionY);
	ini_write_real("Options", "gameFullscreen", global.gameFullscreen);
	ini_write_real("Options", "gameBloomShader", global.gameBloomShader);
	ini_write_real("Options", "level_up_camera_lock", global.level_up_camera_lock);
	ini_write_real("Options", "game_controller_gryo", global.game_controller_gryo);
	ini_write_real("Options", "game_controller_sensitivity", global.game_controller_sensitivity);
	
	ini_write_real("Options", "gameScreenShake", global.gameScreenShake);
	ini_write_real("Options", "gameParticles", global.gameParticles);
	ini_write_string("Options", "gameGraphics", global.gameGraphics);
	
	ini_write_string("Options", "gameMoveLeft", global.gameMoveLeft);
	ini_write_string("Options", "gameMoveRight", global.gameMoveRight);
	ini_write_string("Options", "gameMoveUp", global.gameMoveUp);
	ini_write_string("Options", "gameMoveDown", global.gameMoveDown);
	
	ini_write_string("Options", "gamePressShoot", global.gamePressShoot);
	ini_write_string("Options", "gamePressTeleport", global.gamePressTeleport);
	ini_write_string("Options", "gameWeaponSwapDown", global.gameWeaponSwapDown);
	ini_write_string("Options", "gameWeaponSwapUp", global.gameWeaponSwapUp);
	ini_write_string("Options", "gameMapExpand", global.gameMapExpand);
	
	ini_write_string("Options", "gameMoveLeft", global.gameMoveLeft);
	ini_write_string("Options", "gameMoveRight", global.gameMoveRight);
	ini_write_string("Options", "gameMoveUp", global.gameMoveUp);
	ini_write_string("Options", "gameMoveDown", global.gameMoveDown);
	
	ini_write_string("Options", "gamePressShoot", global.gamePressShoot);
	ini_write_string("Options", "gamePressTeleport", global.gamePressTeleport);
	ini_write_string("Options", "gameWeaponSwapDown", global.gameWeaponSwapDown);
	ini_write_string("Options", "gameWeaponSwapUp", global.gameWeaponSwapUp);
	ini_write_string("Options", "gameMapExpand", global.gameMapExpand);
	
	var _device = InputPlayerGetDevice();
	var _bindings = InputBindingsExport(true)
	
	ini_write_string("Options", "controller_controls", string_replace_all(json_stringify(_bindings), "\"", "'"));

	ini_close();

	scr_copy_backup_to_save(_save_file, _backup_save_file)

}
