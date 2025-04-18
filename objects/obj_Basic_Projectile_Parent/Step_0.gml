

var _i;
var _script_count = array_length(shot_stats.Shot_Step_Scripts)
for(_i = 0; _i < _script_count; _i++) {
	script_execute(shot_stats.Shot_Step_Scripts[_i])	
}

shot_stats.Shot_Exist_Time++;

/* if shot_stats.Shot_Ground = true {
	shot_stats.Shot_Lobbing = false;
	shot_stats.Shot_Height = 0;
	shot_stats.Shot_Fall_Speed = 0;
	shot_stats.Shot_Gravity = 0;
	shot_stats.Shot_Lobbing = false;
} */


/*if !instance_exists(shot_stats.Shot_Target) {
    shot_stats.Shot_Target = obj_Soul_Parent;
} */




