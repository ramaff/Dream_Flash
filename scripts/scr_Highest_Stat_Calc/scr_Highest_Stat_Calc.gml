function scr_Highest_Stat_Calc() {
	
	var _stat_value = [global.soulstrength,global.soulvitality,global.soulessence,global.souldexterity,global.soulperception,global.soulstate]
	var _stat_name = [ "str","vit","ess","dex","per","sta" ]
	
	var _highstat = "none"
	var _val = -99999
	
	for(var i = 0; i < array_length(_stat_value); i++){
		var _cstat = _stat_value[i]
		if _cstat > _val{
			_highstat = _stat_name[i]
			_val = _cstat
		}
	}


	return _highstat;

}
