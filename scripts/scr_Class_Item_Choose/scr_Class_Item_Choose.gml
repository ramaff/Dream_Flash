function scr_Class_Item_Choose() {
	classform = argument[0];
	counter = argument[1];
	itemtype = noone;
	elementString = "";

	if classform = "Strength Field" {
	    elementString = "A";
		itemtype = scr_Pool_Pick(global.AItemPool);
	}
	if classform = "Vitality Field" {
	    elementString = "B";
		itemtype = scr_Pool_Pick(global.BItemPool);
	}
	if classform = "Essence Field" {
	    elementString = "C";
		itemtype = scr_Pool_Pick(global.CItemPool);
	}
	if classform = "Dexterity Field" {
	    elementString = "D";
		itemtype = scr_Pool_Pick(global.DItemPool);
	}
	if classform = "Perception Field" {
	    elementString = "E";
		itemtype = scr_Pool_Pick(global.EItemPool);
	}
	if classform = "State Field" {
	    elementString = "F";
		itemtype = scr_Pool_Pick(global.FItemPool);
	}
	
	if classform = "Hope Field" {
	    elementString = "OA";
		itemtype = scr_Pool_Pick(global.OAItemPool);
	}
	if classform = "Bliss Field" {
	    elementString = "OB";
		itemtype = scr_Pool_Pick(global.OBItemPool);
	}
	if classform = "Assurance Field" {
	    elementString = "OC";
		itemtype = scr_Pool_Pick(global.OCItemPool);
	}
	if classform = "Loathing Field" {
	    elementString = "XA";
		itemtype = scr_Pool_Pick(global.XAItemPool);
	}
	if classform = "Paranoia Field" {
	    elementString = "XB";
		itemtype = scr_Pool_Pick(global.XBItemPool);
	}
	if classform = "Despair Field" {
	    elementString = "XC";
		itemtype = scr_Pool_Pick(global.XCItemPool);
	}

	/*
	var itemform = 1 + irandom(13);
	
	if classform = "State Field" {
		itemform = 1 + irandom(9);	
	}

	var wTier = "Basic";

	if itemform <= 9 {
	    itemtype = elementString + "0" + string(itemform);
	} else {
	    itemtype = elementString + string(itemform);
	}

	var dItem = 0;

	for(f = 1; f <= 12; f++) {
		if itemtype = string(Floor_Layout_Control.Flash[i,f+6]) {
			dItem = 1;	
		}
	}

	if counter >= 10 {
		dItem = 0;	
	}

	counter += 1;
	

	if dItem = 1 {
		return scr_Class_Item_Choose(classform,counter);
	} else */{
		return itemtype;
	}



}
