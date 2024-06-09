// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Room_Effect_Step(){
	if global.gameGraphics = "High" {
		_fxglow_params.g_GlowRadius = round(6 * camcon.window_scale);
	} else {
		_fxglow_params.g_GlowRadius = 6;
	}
	_fxglow_params.g_GlowQuality = 3;
	_fxglow_params.g_GlowIntensity = 0.1 * global.gameBloomShader;
	_fxglow_params.g_GlowGamma = 2;
	_fxglow_params.g_GlowAlpha = 1;

	fx_set_parameters(_fxglow, _fxglow_params);
	layer_set_fx("Effect_1", _fxglow)
}