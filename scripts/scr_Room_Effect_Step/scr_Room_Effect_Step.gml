// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Room_Effect_Step(){
	_fxglow_params.g_GlowRadius = 8;
	_fxglow_params.g_GlowQuality = 3;
	_fxglow_params.g_GlowIntensity = 0.1;
	_fxglow_params.g_GlowGamma = 2;
	_fxglow_params.g_GlowAlpha = 1;

	fx_set_parameters(_fxglow, _fxglow_params);
	layer_set_fx("Effect_1", _fxglow)
}