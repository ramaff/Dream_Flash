// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Room_Effect_Setup(){
	fx_glow = fx_create("_effect_glow");
	fx_vignette = fx_create("_filter_vignette");
	fx_glow_params = fx_get_parameters(fx_glow);
	fx_vignette_params = fx_get_parameters(fx_vignette);

	layer_set_fx("Effect_1", fx_glow)
	layer_set_fx("Effect_2", fx_vignette)
}