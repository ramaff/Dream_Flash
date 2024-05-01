/// @description  Boss Step Event

if !instance_exists(minionbossparent) {
	instance_destroy()
}
if minionbossparent.active_attack != 5 {
	instance_destroy();	
}
//bossmovespeed = minionbossparent.bossmovespeed

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
scr_Boss_Height_Bob(30, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.3, 1, 0);

speed = min(bossmovespeed * 5, point_distance(x, y, (room_width / 2) + 80, room_height / 2) / 30)
direction = point_direction(x, y, (room_width / 2) + 80, room_height / 2)
direction += 67.5

scr_Boss_Share_Damage(minionbossparent, boss_stored_health, bosshealth);

/// Boss Sprite Code

// Go back to normal default size
scr_Boss_Size_Lerp(0.15);

//image_xscale = -1 * abs(image_xscale)

if instance_exists(minionbossparent) {
	sprite_index = minionbossparent.sprite_index
	if sprite_index = spr_spirit_of_mischief_v2_twin_maelstrom {
		sprite_index = spr_spirit_of_mischief_v2_twin_maelstrom_mirror	
	}
	image_index = minionbossparent.image_index
} else {
	instance_destroy()	
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
