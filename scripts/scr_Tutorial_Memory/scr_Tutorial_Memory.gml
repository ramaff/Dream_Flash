function scr_Information_Memory() {
	if itemVal = "Tutorial 01" and global.gameTutorial >= 1 {
	    recollectionSprite = spr_Tutorial_Stuff;
		recollectionDescription = "The soul can move using WASD. You can shoot by left clicking, which will generate imaginary attacks.";
	}
	if itemVal = "Tutorial 02" and global.gameTutorial >= 2 {
	    recollectionSprite = spr_Tutorial_Stuff;
		recollectionDescription = "Teleport by right clicking, doing this costs essence and requires some cooldown time. You can exit dreamscape fields by teleporting outside of the field.";
	}
	if itemVal = "Tutorial 03" and global.gameTutorial >= 3 {
	    recollectionSprite = spr_Tutorial_Stuff;
		recollectionDescription = "Using Weapons and Teleporting uses up the essence of your soul. Your essence is limited but replenishes automatically.";
	}
	if itemVal = "Tutorial 04" and global.gameTutorial >= 4 {
	    recollectionSprite = spr_Tutorial_Stuff;
		recollectionDescription = "You have 3 hearts by default. These hearts each have their own health and can have unique properties. You can also swap the order of your hearts by clicking them and moving them to a different heart slot. If you lose a heart it is gone forever.";
	}
	if itemVal = "Tutorial 05" and global.gameTutorial >= 5 {
	    recollectionSprite = spr_Tutorial_Stuff;
		recollectionDescription = "Each room can have a boss battle or an item. You can pick up items from orbit using your right click. At the end of the chapter you will fight a super boss that will allow you to go deeper into your dream.";
	}
	if itemVal = "Tutorial 06" and global.gameTutorial >= 5 {
	    recollectionSprite = spr_Tutorial_Stuff;
		recollectionDescription = "Congratulations on making it this far. This is where the final boss of the game is going to be when I add it for the non-early access version of the game. Thanks for playing! \n \nCheck in often cause this game gets updated on a semi regular basis, also tell all your friends about it.";
	}
	if itemVal = "Tutorial 07" and global.stateTutorial >= 1 {
	    recollectionSprite = spr_State_Tutorial_Recos;
		recollectionDescription = "Your soul has reached a higher state of being!";
	}
	if itemVal = "Tutorial 08" and global.stateTutorial >= 1 {
	    recollectionSprite = spr_State_Tutorial_Recos;
		recollectionDescription = "You can now temporarily activate a state transformation. There are various state transformations and each one is significantly more powerful than the base soul.";
	}
	if itemVal = "Tutorial 09" and global.stateTutorial >= 1 {
	    recollectionSprite = spr_State_Tutorial_Recos;
		recollectionDescription = "State transformations can be activated when the state bar is full. You trigger the transformation by performing a teleport on the position of the soul.";
	}
	if itemVal = "Tutorial 10" and global.stateTutorial >= 1 {
	    recollectionSprite = spr_State_Tutorial_Recos;
		recollectionDescription = "Different states have different rates of state charge usage. When you run out of state charge you revert back into the base soul.";
	}
	if itemVal = "Tutorial 11" and global.stateTutorial >= 1 {
	    recollectionSprite = spr_State_Tutorial_Recos;
		recollectionDescription = "All teleports performed during a higher state will have a powerful effect that can severely damage bosses, at the cost of additional state charge.";
	}
	if itemVal = "Tutorial 12" and global.stateTutorial >= 1 {
	    recollectionSprite = spr_State_Tutorial_Recos;
		recollectionDescription = "In order to unlock a state transformation the soul needs 3 state credits. Each state has a different set of criteria for getting its state credits.";
	}
	if itemVal = "Tutorial 13" and global.stateTutorial >= 1 {
	    recollectionSprite = spr_State_Tutorial_Recos;
		recollectionDescription = "Sources of state credits could be items you pick up, bosses defeated in channeling rooms, or having high enough stats.";
	}
	if itemVal = "Tutorial 14" {
	    recollectionSprite = spr_Stat_Tutorial_Stuff;
		recollectionDescription = "Strength\n+20% Damage at max strength (40)";
	}
	if itemVal = "Tutorial 15" {
	    recollectionSprite = spr_Stat_Tutorial_Stuff;
		recollectionDescription = "Vitality\n+50% Health at max vitality (40)\n+100% Health Regen Speed at max vitality (40)";
	}
	if itemVal = "Tutorial 16" {
	    recollectionSprite = spr_Stat_Tutorial_Stuff;
		recollectionDescription = "Essence\n+50% Essence Regen at max essence (40)";
	}
	if itemVal = "Tutorial 17" {
	    recollectionSprite = spr_Stat_Tutorial_Stuff;
		recollectionDescription = "Dexterity\n+50% Soul Movement at max dexterity (40)\n+25% Weapon Firerate at max dexterity (40)";
	}
	if itemVal = "Tutorial 18" {
	    recollectionSprite = spr_Stat_Tutorial_Stuff;
		recollectionDescription = "Perception\n+100% Teleport Recharge Speed at max perception (40)\n-25% Weapon/Teleport Essence Cost at max perception (40)";
	}
	if itemVal = "Tutorial 19" {
	    recollectionSprite = spr_Stat_Tutorial_Stuff;
		recollectionDescription = "State\n+100% State Regen at max essence (40)";
	}
	if itemVal = "Tutorial 20" {
	    recollectionSprite = spr_Stat_Tutorial_Stuff;
		recollectionDescription = "Hope\n+0.4-1.6 Extra Items per Item Field at max hope(40)\n+4 Recalls per boss fight at max hope(40)\n+200% Soul Brightness at max hope(40)";
	}
	if itemVal = "Tutorial 21" {
	    recollectionSprite = spr_Stat_Tutorial_Stuff;
		recollectionDescription = "Bliss\n+33% Essence Regen at max bliss(40)\n+50% Health Regen at max bliss(40)";
	}
	if itemVal = "Tutorial 22" {
	    recollectionSprite = spr_Stat_Tutorial_Stuff;
		recollectionDescription = "Assurance\n+16.6% Soul Attack Speed at max assurance(40)\n+20% Boss Attack Speed at max assurance(40)\n+2 Defense at max assurance(40)";
	}
	if itemVal = "Tutorial 23" {
	    recollectionSprite = spr_Stat_Tutorial_Stuff;
		recollectionDescription = "Loathing\n+12.5% Soul Attack Power at max loathing(40)\n+4 Boss Attack Damage at max loathing(40)\n+20% Boss Bullet Speed at max loathing(40)";
	}
	if itemVal = "Tutorial 24" {
	    recollectionSprite = spr_Stat_Tutorial_Stuff;
		recollectionDescription = "Paranoia\n+20% Boss Attack Speed at max paranoia(40)\n+20% Boss Bullet Speed at max paranoia(40)\n-200% Boss Attack Accuracy at max paranoia(40)";
	}
	if itemVal = "Tutorial 25" {
	    recollectionSprite = spr_Stat_Tutorial_Stuff;
		recollectionDescription = "Despair\n+5 Boss Difficulty at max despair(40)\n-2 Soul Defense at max despair(40)\n+20% Boss Attack Speed at max despair(40)\n+100% Field Darkness at max despair(40)";
	}
	if itemVal = "Tutorial 26" and global.spiritTutorial >= 1 {
	    recollectionSprite = spr_Misc_Tutorial_Stuff;
		recollectionDescription = "You've encountered a wandering Masked Spirit. These spirits wander the dreamscape, leaving if unprovoked.";
	}
	if itemVal = "Tutorial 27" and global.spiritTutorial >= 1 {
	    recollectionSprite = spr_Misc_Tutorial_Stuff;
		recollectionDescription = "Killing a masked spirit allows you to increase your emotional stats. Be careful, though, as provoking a spirit will cause more dangerous ones to appear later on.";
	}
	//recollectionSprite = spr_Tutorial_Stuff;

}
