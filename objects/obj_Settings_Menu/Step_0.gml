/// @description Insert description here
// You can write your code in this editor
if InputReleased(INPUT_VERB.PAUSE) || InputReleased(INPUT_VERB.CANCEL) || keyboard_check_released(ord("P")) || keyboard_check_released(vk_escape) {
	event_user(0)	
}