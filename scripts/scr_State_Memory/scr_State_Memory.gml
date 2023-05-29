function scr_State_Memory() {
	if itemVal = "State 01" and global.recollectionState[1] >= 1 {
	    recollectionString = "Snake Soul State";
	    recollectionSprite = spr_Snake_Soul_Reco;
		recollectionSize = 0.5;
		recollectionExtraStats = "+Snake Perception Shots +Snake Trail Shots";
		recollectionDescription = "State Stats: Dexterity x Perception\nDestroy your enemies with snake like weapon patterns. All shots now hit bosses multiple times with afterimages. Teleport to produce soul afterimages that do additional damage.";
	}

	if itemVal = "State 02" and global.recollectionState[2] >= 1 {
	    recollectionString = "Beast Soul State";
	    recollectionSprite = spr_Beast_Soul_Reco;
		recollectionSize = 0.5;
		recollectionExtraStats = "+Stronger/Faster Short Range Shots +Beast Bites";
		recollectionDescription = "State Stats: Strength x Vitality\nSavagely devour bosses. Increased overall power is granted with this soul, The beast can also bite enemies to recover some of its health.";
	}
	
	if itemVal = "State 03" and global.recollectionState[3] >= 1 {
	    recollectionString = "Mechanical Soul State";
	    recollectionSprite = spr_Mechanical_Soul_Reco;
		recollectionSize = 0.5;
		recollectionExtraStats = "+Soul Production Factory +Gear Protection";
		recollectionDescription = "State Stats: Vitality x Essence\nPowerful mech that provides the soul with additional protection and produces minions that massively increase power output.";
	}
	
	if itemVal = "State 04" and global.recollectionState[4] >= 1 {
	    recollectionString = "Scrub Soul State";
	    recollectionSprite = spr_Scrub_Soul_Reco;
		recollectionSize = 0.5;
		recollectionExtraStats = "+Bubbled Thoughts +Slippery Movement";
		recollectionDescription = "State Stats: Vitality x Dexterity\nSoapy soul that purifies enemies with bubbled thoughts. These thoughts block enemy bullets and then shoot then contents.";
	}

	if itemVal = "State 06" and global.recollectionState[6] >= 1 {
	    recollectionString = "Spike Soul State";
	    recollectionSprite = spr_Spike_State_Reco;
		recollectionSize = 0.5;
		recollectionExtraStats = "+Sharper Shots +5 Way Shots";
		recollectionDescription = "State Stats: Essence x Dexterity\nUnload a storm of spikes onto your enemies. Spiked shots have extra pierce, and extra damage. Occasionally unload a 5 way burst for field-wide punishment.";
	}
	
	if itemVal = "State 07" and global.recollectionState[7] >= 1 {
	    recollectionString = "Bleeding Soul State";
	    recollectionSprite = spr_Bleeding_Soul_Reco;
		recollectionSize = 0.5;
		recollectionExtraStats = "+Bleeding Blade";
		recollectionDescription = "State Stats: Strength x Dexterity\nPowerful knight that makes it's enemies bleed. Wield a powerful blade that can also shoot projectiles. Teleporting results in intricate swordplay that can redirect bullets.";
	}
	
	if itemVal = "State 09" and global.recollectionState[9] >= 1 {
	    recollectionString = "Casting Soul State";
	    recollectionSprite = spr_Casting_Soul_Reco;
		recollectionSize = 0.5;
		recollectionExtraStats = "+Orbital Shots +Shooting Shots";
		recollectionDescription = "State Stats: Vitality x Perception\nCreate orbitals that shoot additional shots at enemies. You can also unload these orbitals onto your enemies for extra damage.";
	}
	
	if itemVal = "State 10" and global.recollectionState[10] >= 1 {
	    recollectionString = "Ascending Soul State";
	    recollectionSprite = spr_Ascending_Soul_Reco;
		recollectionSize = 0.5;
		recollectionExtraStats = "+Charged Shots +Electric Shots";
		recollectionDescription = "State Stats: Essence x Perception\nCharges up super powered shots directly from the core of its imagination. These shots come packed with static electricity that damages all surrounding foes.";
	}


}
