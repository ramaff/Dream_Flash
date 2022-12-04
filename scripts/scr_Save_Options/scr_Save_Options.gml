function scr_Save_Options() {
	if (file_exists("options.sav"))
	{
	file_delete("options.sav");
	}

	ini_open("options.sav")

	ini_write_real("Options", "gameTutorial", global.gameTutorial);
	ini_write_real("Options", "gameSound", global.gameSound);
	ini_write_real("Options", "gameMusic", global.gameMusic);
	ini_write_real("Options", "gameFocusPause", global.gameFocusPause);
	ini_write_real("Options", "gameDamageDisplay", global.gameDamageDisplay);
	ini_write_real("Options", "gameResolutionX", global.gameResolutionX);
	ini_write_real("Options", "gameResolutionY", global.gameResolutionY);
	ini_write_real("Options", "gameFullscreen", global.gameFullscreen);
	ini_write_real("Options", "gameBloomShader", global.gameBloomShader);
	
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

	ini_close();



}
