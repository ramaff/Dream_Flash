function scr_Soul_Item_Duration_Progress() {
	// Location: Soul Step Event

	sNoHitTime++;

	if sWindGustTime > 0 {
	    sWindGustTime--;
	}
	if senergy <= 0 {
		sWeaponOvertimeTick = 1;
	}
	if sWeaponOvertimeTick > 0 {
		sWeaponOvertime++;
	}

}
