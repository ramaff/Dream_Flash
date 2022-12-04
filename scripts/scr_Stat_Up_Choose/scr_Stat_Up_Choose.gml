function scr_Stat_Up_Choose() {
	classform = argument[0];

	if classform = "Strength Field" {
	    itemtype = "A00";
	}
	if classform = "Vitality Field" {
	    itemtype = "B00";
	}
	if classform = "Essence Field" {
	    itemtype = "C00";
	}
	if classform = "Dexterity Field" {
	    itemtype = "D00";
	}
	if classform = "Perception Field" {
	    itemtype = "E00";
	}
	if classform = "State Field" {
	    itemtype = "F00";
	}

	return itemtype;



}
