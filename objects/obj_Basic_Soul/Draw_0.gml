/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if variable_struct_exists(soul_step_status_effects, "poison_omen") {
	if array_length(soul_step_status_effects.poison_omen) > 0 {
		var _curr_poison = soul_step_status_effects.poison_omen[0].duration
		draw_text(x - 40,y - 120,string(_curr_poison));
	}
}	

/*
draw_text(x,y+200, string(soulCurrentHorizontalSpeed))
draw_text(x,y+250, string(soulCurrentVerticalSpeed))
draw_text(x - 40,y + 40,string(instance_count));
draw_text(x - 40,y + 120,string(fps_real));