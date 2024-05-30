/// @description  Boss Step Event

if !instance_exists(minionbossparent) {
	instance_destroy()
	exit;
}
//bossmovespeed = minionbossparent.bossmovespeed

// Mandatory:
scr_Boss_Step(2);

// If boss is floating in air, can make it bob up and down:
scr_Boss_Height_Bob(30, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.3, 1, 0);

scr_Boss_Share_Damage(minionbossparent, boss_stored_health, bosshealth);

/// Boss Sprite Code

// Go back to normal default size
scr_Boss_Size_Lerp(0.15);

//image_xscale = -1 * abs(image_xscale)

if instance_exists(minionbossparent) {
	sprite_index = minionbossparent.sprite_index
	image_index = minionbossparent.image_index
	image_xscale = -minionbossparent.image_xscale;
	image_yscale = minionbossparent.image_yscale;
} else {
	instance_destroy()	
}

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
