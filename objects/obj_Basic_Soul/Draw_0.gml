/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

scr_Soul_Status_Effect_Tick(soul_draw_status_effects)

var _status_effects = variable_struct_get_names(soul_draw_status_effects);
var _status_effects_count = array_length(_status_effects)
//var _bar_count = 0;
var _total_yy = 0;
for (var _i = 0; _i < _status_effects_count; _i++) {
	var _status_effect_type = variable_struct_get(soul_draw_status_effects, _status_effects[_i])
	var _status_effect_type_count = array_length(_status_effect_type)
	if _status_effect_type_count > 0 {
		for (var _j = 0; _j < _status_effect_type_count; _j++) {
			var _status_effect_instance = _status_effect_type[_j]
			var _status_effect_bar = _status_effect_instance.bar_sprite
	
			var _xx_offset = (sprite_get_width(_status_effect_bar) * (_status_effect_instance.duration / _status_effect_instance.max_duration))
	
			_total_yy += (sprite_get_height(_status_effect_bar) / 2) - 4

			draw_sprite_part_ext(_status_effect_bar, 0, 0, 0, _xx_offset, sprite_get_height(_status_effect_bar), x - 64, y - _total_yy, 0.5, 0.5, c_white, 1)
			draw_sprite_ext(_status_effect_bar, 1, x - 64, y - _total_yy, 0.5, 0.5, 0, c_white, 1)
		}
	}
}