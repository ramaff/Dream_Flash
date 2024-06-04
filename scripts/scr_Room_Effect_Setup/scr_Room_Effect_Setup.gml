// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Room_Effect_Setup(){
	_fxglow = fx_create("_effect_glow");
	_fxglow_params = fx_get_parameters(_fxglow);

	layer_set_fx("Effect_1", _fxglow)
}