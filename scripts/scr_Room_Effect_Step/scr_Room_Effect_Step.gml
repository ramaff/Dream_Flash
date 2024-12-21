// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Room_Effect_Step(){
	if global.gameBloomShader = 0 {
		fx_glow_params = fx_get_parameters(fx_glow);
		layer_clear_fx("Effect_1");
		exit;
	}
	
	if global.gameGraphics = "High" {
		fx_glow_params.g_GlowRadius = round(6 * camcon.window_scale);
	} else {
		fx_glow_params.g_GlowRadius = 6;
	}
	fx_glow_params.g_GlowQuality = 3;
	//fx_glow_params.g_GlowIntensity = 0.075 * global.gameBloomShader;
	fx_glow_params.g_GlowIntensity = 0.1 * global.gameBloomShader;
	fx_glow_params.g_GlowGamma = 2;
	fx_glow_params.g_GlowAlpha = 1;

	fx_set_parameters(fx_glow, fx_glow_params);
	layer_set_fx("Effect_1", fx_glow)	
	
	//fx_vignette_params.g_VignetteEdges = 0.75;
	//fx_vignette_params.g_VignetteSharpness = 2;
	
	//fx_set_parameters(fx_vignette, fx_vignette_params);
	//layer_set_fx("Effect_2", fx_vignette)

}