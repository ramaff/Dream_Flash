/// @description Insert description here
// You can write your code in this editor
if shot_stats.Shot_Power > other.shot_stats.Shot_Power {
	shot_stats.Shot_Size = scr_Sqrt_Add(shot_stats.Shot_Size, other.shot_stats.Shot_Size / 3);
	shot_stats.Shot_Power += other.shot_stats.Shot_Power;
	
	shot_stats.Shot_Life_Span += floor(other.shot_stats.Shot_Power);
	alarm[0] += floor(other.shot_stats.Shot_Power);

	instance_destroy(other);
}