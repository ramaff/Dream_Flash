// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Get_Bind(){

	var _bind = noone;
		
	if InputCheck(INPUT_VERB.ACCEPT) {
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
	}
	
	return _bind

}