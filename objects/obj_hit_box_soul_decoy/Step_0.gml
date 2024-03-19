/// @description  Boss Step Event

// Mandatory:
scr_Boss_Step(2);

scr_Boss_Height_Bob(40, 1, 0);

// Make boss shape wobble:
scr_Boss_Wobble("Horizontal", 0.4, 1, 0);

speed = bossmovespeed * 0.75;
	direction = scr_Soul_Point();

if bosshealth = bossmaxhealth {
	tracked_health = bossmaxhealth;	
}

if bosshealth < tracked_health {
	
	scr_Default_Attack_Settings();
	
	bullet_speed = bossbulletspeed * 3.5;
	
	bullet_lifespan = 360;
	
	bullet_type = obj_Dormant_Rebound_Bullet;
	bullet_count = 6;
	bullet_spread = 60;
	bullet_direction = random(360);
	
	boss_xoffset = obj_Soul_Parent.perX - x;
	boss_yoffset = obj_Soul_Parent.perY - y;
	
	scr_Boss_Shoot()
	
	tracked_health = bosshealth
	
}


//////////////////////////////////////////////////////////////////////////////////////////
/////////////// Active Attack Prep
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_delay <= 0 and active_attack_cooldown <= 0 and active_attack_duration <= 0 {
    
	// Pick a random attack to do
	//active_attack = choose(1);
  
}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Pattern Code
//////////////////////////////////////////////////////////////////////////////////////////    

//scr_Default_Attack_Settings();

// If its time to attack, attack
if active_attack_delay <= 0 and pattern_cooldown <= 0 and pattern_count > 0 {
   
}

//////////////////////////////////////////////////////////////////////////////////////////
/// Active Attack Post
//////////////////////////////////////////////////////////////////////////////////////////

if active_attack_duration <= 0 { 
    active_attack = 0;
}

/// Boss Sprite Code

// Go back to normal default size
scr_Boss_Size_Lerp(0.15);

// Handles boss attack sprite animation

// So that the boss hurts soul on collision
// Smaller than the actual boss hitbox
scr_Boss_Soul_Hitbox(sprite_index);
