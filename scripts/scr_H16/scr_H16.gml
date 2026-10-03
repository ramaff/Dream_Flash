function scr_H16(_damage_amount, _defense_amount) {
	// Location Damage Calculation Event

	if global.currentheart > 1 {
		if global.currenthearttype = 16 {

            //added max to make value not go under zero which could crash the game
			var heartredirect = max(0,irandom(global.currentheart - 1));
    
			scr_Update_Soul_Health(Soul_Hearts_Control.heart[heartredirect].health - (_damage_amount - _defense_amount), heartredirect);
    
			if heartredirect != global.currentheart {
			    _damage_amount = ((0.25 / global.soulheartboost) * (_damage_amount - _defense_amount)) + 1;
			}
            
		}
	}
    
    return _damage_amount

}
