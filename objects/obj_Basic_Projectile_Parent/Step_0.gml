

var _i;
var _script_count = array_length(shot_stats.Shot_Step_Scripts)
for(_i = 0; _i < _script_count; _i++) {
	script_execute(shot_stats.Shot_Step_Scripts[_i])	
}

shot_stats.Shot_Exist_Time++;






