// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Get_Bind(){

	var _bind = noone;
	var _gp_face1 = InputBindingFind(true, gp_face1)[0].verbIndex
	var _gp_face2 = InputBindingFind(true, gp_face2)[0].verbIndex
	var _gp_face3 = InputBindingFind(true, gp_face3)[0].verbIndex
	var _gp_face4 = InputBindingFind(true, gp_face4)[0].verbIndex
	var _gp_shoulderl = InputBindingFind(true, gp_shoulderl)[0].verbIndex
	var _gp_shoulderr = InputBindingFind(true, gp_shoulderr)[0].verbIndex
	var _gp_shoulderlb = InputBindingFind(true, gp_shoulderlb)[0].verbIndex
	var _gp_shoulderrb = InputBindingFind(true, gp_shoulderrb)[0].verbIndex
	var _pressed_verb = undefined
	
	if InputCheck(_gp_face1) {
		_pressed_verb = _gp_face1
	} else if InputCheck(_gp_face2) {
		_pressed_verb = _gp_face2
	} else if InputCheck(_gp_face3) {
		_pressed_verb = _gp_face3		
	} else if InputCheck(_gp_face4) {
		_pressed_verb = _gp_face4
	} else if InputCheck(_gp_shoulderl) {
		_pressed_verb = _gp_shoulderl
	} else if InputCheck(_gp_shoulderr) {
		_pressed_verb = _gp_shoulderr
	} else if InputCheck(_gp_shoulderlb) {
		_pressed_verb = _gp_shoulderlb
	} else if InputCheck(_gp_shoulderrb) {
		_pressed_verb = _gp_shoulderrb
	}
	
	if _pressed_verb != undefined {
		_bind = InputBindingGet(true, _pressed_verb)	
	}
	
		
	/*if InputCheck(INPUT_VERB.ACCEPT) {
		_bind = InputBindingGet(true, INPUT_VERB.ACCEPT)	
	} else if InputCheck(INPUT_VERB.CANCEL) {
		_bind = InputBindingGet(true, INPUT_VERB.CANCEL)	
	} else if InputCheck(INPUT_VERB.ACTION) {
		_bind = InputBindingGet(true, INPUT_VERB.ACTION)	
	} else if InputCheck(INPUT_VERB.SPECIAL) {
		_bind = InputBindingGet(true, INPUT_VERB.SPECIAL)	
	} else if InputCheck(INPUT_VERB.SHOOT) {
		_bind = InputBindingGet(true, INPUT_VERB.SHOOT)	
	} else if InputCheck(INPUT_VERB.WARP) {
		_bind = InputBindingGet(true, INPUT_VERB.WARP)
	} else if InputCheck(INPUT_VERB.W_LEFT) {
		_bind = InputBindingGet(true, INPUT_VERB.W_LEFT)
	} else if InputCheck(INPUT_VERB.W_RIGHT) {
		_bind = InputBindingGet(true, INPUT_VERB.W_RIGHT)
	} */
	
	return _bind

}