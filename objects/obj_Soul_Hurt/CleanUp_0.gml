/// @description Insert description here
// You can write your code in this editor
if soulshotblock > 0 {
	if ds_exists(projectile_hits, ds_type_list) {
		ds_list_destroy(projectile_hits);
	}
}