/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if InputCheck(INPUT_VERB.SHOOT) {
	event_perform(ev_mouse, ev_global_left_button)
}
if InputReleased(INPUT_VERB.SHOOT) {
	event_perform(ev_mouse, ev_global_left_release)
}