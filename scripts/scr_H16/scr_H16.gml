function scr_H16(_damage_amount, _defense_amount) {
	// Location Damage Calculation Event

	if global.totalhearts > 0 {
		if global.currenthearttype = 16 {

			var heartredirect = irandom(global.currentheart - 1);
    
			scr_Update_Soul_Health(Soul_Hearts_Control.heart[heartredirect].health - (_damage_amount - _defense_amount), heartredirect);
    
			/* if Soul_Hearts_Control.heart[heartredirect,3] <= 0 {
			    Soul_Hearts_Control.heart[heartredirect,2] = 0;
			    global.totalhearts -= 1;
				with Soul_Hearts_Control {
					scr_Sort_Hearts();
				}
			} */
    
			if heartredirect != global.currentheart {
			    _damage_amount = ((0.25 / global.soulheartboost) * (_damage_amount - _defense_amount)) + 1;
			}

		}
	}


}
