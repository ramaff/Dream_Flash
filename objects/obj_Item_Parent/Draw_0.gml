var spriteSize = 0.8;

if shop = 0 {
draw_sprite_ext(spr_Item_Template,0,x,y,spriteSize,spriteSize,0,c_white,1);
} else {
//draw_sprite_ext(spr_Weapon_Template,0,x,y,spriteSize,spriteSize,0,c_white,1);
}

//draw_text(x,y,string(itemVal));
itemGroup = string_letters(itemVal);

if is_string(itemVal) {
    itemNum = string_digits(itemVal);
    itemGroup = string_letters(itemVal);
    tempNum = 0;
    
    if itemGroup = "A" {
        tempNum = 1;
		spriteSize = 0.5;
    }
    if itemGroup = "B" {
        tempNum = 2;
		spriteSize = 0.5;
    }
    if itemGroup = "C" {
        tempNum = 3;
		spriteSize = 0.5;
    }
    if itemGroup = "D" {
        tempNum = 4;
		spriteSize = 0.5;
    }
    if itemGroup = "E" {
        tempNum = 5;
		spriteSize = 0.5;
    }
    if itemGroup = "F" {
        tempNum = 6;
    }
    if itemGroup = "G" {
        tempNum = 7;
    }
    if itemGroup = "H" {
        tempNum = 8;
    }
	if itemGroup = "I" {
        tempNum = 9;
    }
    if itemGroup = "J" {
        tempNum = 10;
    }
    if itemGroup = "K" {
        tempNum = 11;
    }
	if itemGroup = "L" {
        tempNum = 12;
    }
    if itemGroup = "M" {
        tempNum = 13;
		spriteSize = 0.5;
    }
	if itemGroup = "N" {
        tempNum = 14;
    }
	if itemGroup = "OA" {
        tempNum = 15;
    }
	if itemGroup = "OB" {
        tempNum = 16;
    }
	if itemGroup = "OC" {
        tempNum = 17;
    }
	if itemGroup = "P" {
        tempNum = 18;
    }
	if itemGroup = "Q" {
        tempNum = 19;
    }
    if itemGroup = "R" {
        tempNum = 20;
    }
	if itemGroup = "S" {
        tempNum = 21;
    }
	if itemGroup = "T" {
        tempNum = 22;
    }
	if itemGroup = "U" {
        tempNum = 23;
    }
	if itemGroup = "V" {
        tempNum = 24;
    }
	if itemGroup = "W" {
        tempNum = 25;
    }
	if itemGroup = "XA" {
        tempNum = 26;
    }
	if itemGroup = "XB" {
        tempNum = 27;
    }
	if itemGroup = "XC" {
        tempNum = 28;
    }
	spriteSize = 0.5;
    
    draw_sprite_ext(spr_Item_Template,tempNum,x,y,spriteSize,spriteSize,0,c_white,1);
	image_index = tempNum;
} else {
	spriteSize = 0.5;
    //draw_sprite_ext(spr_Weapon_Template,1,x,y,spriteSize,spriteSize,0,c_white,1);
	draw_sprite_ext(spr_Soul_Weapon_Border,1,x,y,spriteSize,spriteSize,0,c_white,1);
	image_index = 1;
	//sprite_index = spr_Weapon_Template;
}

image_speed = 0;
//draw_text(x,y,string(itemVal));
if is_string(itemVal) {
	itemNum = string_digits(itemVal);
    itemGroup = string_letters(itemVal);
	if itemGroup = "A" || itemGroup = "B" || itemGroup = "C" || itemGroup = "D" || itemGroup = "E" || itemGroup = "M" {
		if shop = 1 {
		    draw_sprite_ext(spr_Shop_Item_Lock,0,x,y,spriteSize,spriteSize,0,c_white,1);
		}
		if shop >= 2 {
		    draw_sprite_ext(spr_Special_Item_Lock,0,x,y,spriteSize,spriteSize,0,c_white,1);
		}
	} else {
		if shop = 1 {
		    draw_sprite_ext(spr_Shop_Item_Lock,0,x,y,spriteSize,spriteSize,0,c_white,1);
		}	
		if shop >= 2 {
		    draw_sprite_ext(spr_Special_Item_Lock,0,x,y,spriteSize,spriteSize,0,c_white,1);
		}	
	}
} else {
	spriteSize = 0.5;
	if shop = 1 {
		draw_sprite_ext(spr_Shop_Item_Lock,0,x,y,spriteSize,spriteSize,0,c_white,1);
	}	
	if shop >= 2 {
		draw_sprite_ext(spr_Special_Item_Lock,0,x,y,spriteSize,spriteSize,0,c_white,1);
	}	
}


if hopeDiamond = true {
	draw_sprite_ext(spr_Hope_Item_Diamond,0,x,y,spriteSize,spriteSize,0,c_white,1);
}


if weapon = 1 {
	var weapSpr = spr_Soul_Shot_Art;
	
	spriteSize = 0.5;
	/*
    if itemVal = 1 {
        weapSpr = spr_Soul_Shot_Art;
    }
    if itemVal = 2 {
        weapSpr = spr_Power_Shot_Art;
    }
    if itemVal = 3 {
        weapSpr = spr_Heavy_Shot_Art;
    }
    if itemVal = 4 {
        weapSpr = spr_Light_Shot_Art;
    }
    if itemVal = 5 {
        weapSpr = spr_Piercing_Shot_Art;
    }
    if itemVal = 6 {
        weapSpr = spr_Condensed_Shot_Art;
    }
	if itemVal = 7 {
        weapSpr = spr_Poison_Shot_Art;
    }
    if itemVal = 8 {
        weapSpr = spr_Multi_Shot_Art;
    }
    if itemVal = 9 {
        weapSpr = spr_Splitting_Shot_Art;
    }
    if itemVal = 10 {
        weapSpr = spr_Charged_Shot_Art;
    }
    if itemVal = 11 {
        weapSpr = spr_Impact_Shot_Art;
    }
    if itemVal = 12 {
        weapSpr = spr_Laser_Shot_Art;
    }
    if itemVal = 13 {
        weapSpr = spr_Hyper_Shot_Art;
    }
    if itemVal = 14 {
        weapSpr = spr_Essence_Beam_Art;
    }
    if itemVal = 15 {
        weapSpr = spr_Rainmaker_Art;
    }
	if itemVal = 16 {
        weapSpr = spr_Rising_Spikes_Art;
	}
	if itemVal = 51 {
		weapSpr = spr_Soul_Punches_Art;
	}
    if itemVal = 52 {
        weapSpr = spr_Power_Whip_Art;
    }
    if itemVal = 53 {
        weapSpr = spr_Dreamers_Blade_Art;
    }
	if itemVal = 54 {
		weapSpr = spr_Soul_Power_Strike_Art;
	}
    
	
	//if itemVal > 56 {
	//	spriteSize = 1;	
	//}
	
    if itemVal = 101 {
        weapSpr = spr_Rock_Toss_Art;
    }
    if itemVal = 102 {
        weapSpr = spr_Bag_Of_Marbles_Art;
    }
    if itemVal = 103 {
        weapSpr = spr_Flying_Disk_Art;
    }
    if itemVal = 104 {
        weapSpr = spr_Shuriken_Art;
    }
    if itemVal = 105 {
        weapSpr = spr_Spike_Ball_Art;
    }
    if itemVal = 106 {
        weapSpr = spr_Boomerang_Blade_Art;
    }
    if itemVal = 107 {
        weapSpr = spr_Spinning_Top_Art;
    }
    if itemVal = 108 {
        weapSpr = spr_Sharp_Machine_Gun_Art;
    }
    if itemVal = 109 {
        weapSpr = spr_Throwing_Knives_Art;
    }
    if itemVal = 110 {
        weapSpr = spr_Archery_Bow_Art;
    }
    if itemVal = 111 {
        weapSpr = spr_Crossbow_Art;
    }
    if itemVal = 112 {
        weapSpr = spr_Pins_Art;
    }
	
    //if itemVal = 113 {
     //   weapSpr = spr_Marble_Rifle_Art;
    //}
    if itemVal = 113 {
        weapSpr = spr_Marble_Minigun_Art;
    }
    if itemVal = 114 {
        weapSpr = spr_Saw_Blade_Launcher_Art;
    }
    if itemVal = 115 {
        weapSpr = spr_Paper_Airplane_Art;
    }
    if itemVal = 116 {
        weapSpr = spr_Blow_Dart_Art;
    }
    if itemVal = 117 {
        weapSpr = spr_Sharp_Shooter_Art;
    }
    if itemVal = 118 {
        weapSpr = spr_Soul_Shot_Art;
    }
    if itemVal = 119 {
        weapSpr = spr_Soul_Shot_Art;
    }
    if itemVal = 151 {
        weapSpr = spr_Knight_Blade_Art;
    }
	if itemVal = 152 {
		weapSpr = spr_Safety_Scissors_Art;
	}
	if itemVal = 153 {
		weapSpr = spr_Dream_Striker_Art;
	}
    
    if itemVal = 201 {
        weapSpr = spr_Arm_Cannon_Art;
    }
    if itemVal = 202 {
        weapSpr = spr_Snap_Pops_Art;
    }
    if itemVal = 203 {
        weapSpr = spr_Missile_Launcher_Art;
    }
    if itemVal = 204 {
        weapSpr = spr_Big_Bomb_Cannon_Art;
    }
    if itemVal = 205 {
        weapSpr = spr_Bombarder_Art;
    }
    if itemVal = 206 {
        weapSpr = spr_Boss_Muncher_Art;
    }
    if itemVal = 207 {
        weapSpr = spr_Splodey_Seeds_Art;
    }
    if itemVal = 208 {
        weapSpr = spr_Micro_Bomb_Cannon_Art;
    }
    if itemVal = 209 {
        weapSpr = spr_Firecracker_Launcher_Art;
    }
    if itemVal = 210 {
        weapSpr = spr_Pop_Gun_Art;
    }
    if itemVal = 211 {
        weapSpr = spr_Semi_Auto_Rifle_Art;
    }
    if itemVal = 212 {
        weapSpr = spr_Grenade_Art;
		spriteSize = 0.5;	
    }
    if itemVal = 213 {
        weapSpr = spr_Explosion_Machine_Art;
    }
    if itemVal = 214 {
        weapSpr = spr_Frosty_Cannon_Art;
		spriteSize = 0.5;	
    }
    if itemVal = 215 {
        weapSpr = spr_Exploding_Sniper_Rifle_Art;
    }
    if itemVal = 216 {
        weapSpr = spr_Stink_Bombs_Art;
    }
    if itemVal = 217 {
        weapSpr = spr_Soul_Shot_Art;
    }
    if itemVal = 218 {
        weapSpr = spr_Soul_Shot_Art;
    }
    if itemVal = 219 {
        weapSpr = spr_Soul_Shot_Art;
    }
    if itemVal = 220 {
        weapSpr = spr_Soul_Shot_Art;
    }
    
    if itemVal = 301 {
        weapSpr = spr_Magic_Bolt_Art;
    }
    if itemVal = 302 {
        weapSpr = spr_Charged_Bolt_Art;
    }
    if itemVal = 303 {
        weapSpr = spr_Fire_Ball_Art;
    }
    if itemVal = 304 {
        weapSpr = spr_Frost_Shard_Art;
    }
    if itemVal = 305 {
        weapSpr = spr_Lightning_Art;
    }
    if itemVal = 306 {
        weapSpr = spr_Magic_Twister_Art;
    }
    if itemVal = 307 {
        weapSpr = spr_Magic_Bubbles_Art;
    }
    if itemVal = 308 {
        weapSpr = spr_Earth_Magic_Art;
    }
    if itemVal = 309 {
        weapSpr = spr_Tide_Staff_Art;
    }
    if itemVal = 310 {
        weapSpr = spr_Phase_Magic_Staff_Art;
    }
    if itemVal = 311 {
        weapSpr = spr_Magic_Shields_Art;
    }
    if itemVal = 312 {
        weapSpr = spr_Adept_Staff_Art;
    }
    if itemVal = 313 {
        weapSpr = spr_Maw_Staff_Art;
		spriteSize = 0.5;	
    }
    if itemVal = 314 {
        weapSpr = spr_Rising_Blades_Art;
		spriteSize = 0.5;	
    }
    if itemVal = 315 {
        weapSpr = spr_Soul_Shot_Art;
    }
    if itemVal = 316 {
        weapSpr = spr_Soul_Shot_Art;
    }
    if itemVal = 317 {
        weapSpr = spr_Soul_Shot_Art;
    }
    if itemVal = 318 {
        weapSpr = spr_Soul_Shot_Art;
    }
    if itemVal = 319 {
        weapSpr = spr_Soul_Shot_Art;
    }
    if itemVal = 320 {
        weapSpr = spr_Soul_Shot_Art;
    }
    
    if itemVal = 401 {
        weapSpr = spr_Energy_Ball_Art;
    }
    if itemVal = 402 {
        weapSpr = spr_Sparks_Art;
    }
    if itemVal = 403 {
        weapSpr = spr_Laser_Barrage_Art;
    }
    if itemVal = 404 {
        weapSpr = spr_Plasma_Visor_Art;
    }
    if itemVal = 405 {
        weapSpr = spr_Power_Gun_Art;
    }
    if itemVal = 406 {
        weapSpr = spr_Wave_Gun_Art;
    }
    if itemVal = 407 {
        weapSpr = spr_Tesla_Coil_Art;
    }
    if itemVal = 408 {
        weapSpr = spr_Shock_Chain_Gun_Art;
    }
    if itemVal = 409 {
        weapSpr = spr_Charge_Rod_Art;
    }
    if itemVal = 410 {
        weapSpr = spr_Energy_Crystal_Art;
    }
    if itemVal = 411 {
        weapSpr = spr_Forcefield_Charger_Art;
    }
    if itemVal = 412 {
        weapSpr = spr_Energy_Bomb_Cannon_Art;
    }
    if itemVal = 413 {
        weapSpr = spr_Guardian_Cannon_Art;
		spriteSize = 0.5;	
    }
    if itemVal = 414 {
        weapSpr = spr_Dream_Cell_Art;
		spriteSize = 0.5;	
    }
    if itemVal = 415 {
        weapSpr = spr_Soul_Shot_Art;
    }
    if itemVal = 416 {
        weapSpr = spr_Soul_Shot_Art;
    }
    if itemVal = 417 {
        weapSpr = spr_Soul_Shot_Art;
    }
    if itemVal = 418 {
        weapSpr = spr_Soul_Shot_Art;
    }
    if itemVal = 419 {
        weapSpr = spr_Soul_Shot_Art;
    }
    if itemVal = 420 {
        weapSpr = spr_Soul_Shot_Art;
    }
    
    if itemVal = 501 {
        weapSpr = spr_Fleeting_Soul_Staff_Art;
    }
    if itemVal = 502 {
        weapSpr = spr_Manifesting_Rod_Art;
    }
	if itemVal = 503 {
        weapSpr = spr_Battle_Flag_Art;
		spriteSize = 0.5;	
    }
	if itemVal = 504 {
        weapSpr = spr_Anvil_Rod_Art;
		spriteSize = 0.5;	
    }
	if itemVal = 505 {
        weapSpr = spr_Drone_Remote_Art;
		spriteSize = 0.5;	
    }
    
    if itemVal = 601 {
        weapSpr = spr_Healing_Essence_Art;
    }
	if itemVal = 602 {
        weapSpr = spr_Healing_Barrier_Art;
		spriteSize = 0.5;	
    }
    if itemVal = 603 {
        weapSpr = spr_Brainstorm_Umbrella_Art;
		
    }
	if itemVal = 604 {
        weapSpr = spr_Bounce_Forcefield_Art;
		spriteSize = 0.5;	
    }
	if itemVal = 605 {
        weapSpr = spr_Heart_Pick_Art;
		spriteSize = 0.5;	
    }
	if itemVal = 701 {
        weapSpr = spr_Cramming_Art;
		spriteSize = 0.5;	
    }
	*/
	//show_debug_message(global.weapon_stats)
	//show_debug_message(itemVal)
	if variable_struct_exists(global.weapon_stats, string(itemVal)) {
		current_weapon_stats = variable_struct_get(global.weapon_stats, string(itemVal))
	} else {
		exit;	
	}
	if variable_struct_exists(current_weapon_stats, "Recollection_Sprite") {
		weapSpr = asset_get_index(current_weapon_stats.Recollection_Sprite)
		if weapSpr = -1 {
			weapSpr = spr_Soul_Shot_Art;	
		}
	}
	
	draw_sprite_ext(weapSpr,0,x,y,spriteSize,spriteSize,0,c_white,1);
}

var itemSpr = spr_Strength_Up_Item;
spriteSize = 0.5;
/*
if itemVal = "A00" {
    itemSpr = spr_Strength_Up_Item;
}
if itemVal = "A01" {
    itemSpr = spr_Strengthened_Shots_Item;
}
if itemVal = "A02" {
    itemSpr = spr_Armour_Piercing_Item;
}
if itemVal = "A03" {
    itemSpr = spr_Powered_Shots_Item;
}
if itemVal = "A04" {
    itemSpr = spr_Body_Penetrating_Item;
}
if itemVal = "A05" {
    itemSpr = spr_Fight_Response_Item;
}
if itemVal = "A06" {
    itemSpr = spr_Hard_Headed_Item;
}
if itemVal = "A07" {
    itemSpr = spr_Muscle_Memory_Item;
}
if itemVal = "A08" {
    itemSpr = spr_Dense_Mindset_Item;
}
if itemVal = "A09" {
    itemSpr = spr_Thinking_Bigger_Item;
}
if itemVal = "A10" {
    itemSpr = spr_Critical_Thinking_Item;
}
if itemVal = "A11" {
    itemSpr = spr_Radiant_Strength_Item;
}
if itemVal = "A12" {
    itemSpr = spr_Overflowing_Power_Item;
}
if itemVal = "A13" {
    itemSpr = spr_Stronger_Imagination_Item;
}
if itemVal = "A14" {
    itemSpr = spr_Aura_Strike_Item;
}
if itemVal = "B00" {
    itemSpr = spr_Vitality_Up_Item;
}
if itemVal = "B01" {
    itemSpr = spr_Heartiness_Item;
}
if itemVal = "B02" {
    itemSpr = spr_Harder_Hearts_Item;
}
if itemVal = "B03" {
    itemSpr = spr_Body_Bag_Hearts_Item;
}
if itemVal = "B04" {
    itemSpr = spr_Will_To_Live_Item;
}
if itemVal = "B05" {
    itemSpr = spr_Rubber_Soul_Item;
}
if itemVal = "B06" {
    itemSpr = spr_Lovely_Personality_Item;
}
if itemVal = "B07" {
    itemSpr = spr_Encouragement_Item;
}
if itemVal = "B08" {
    itemSpr = spr_Healing_Concentration_Item;
}
if itemVal = "B09" {
    itemSpr = spr_Contact_Field_Item;
}
if itemVal = "B10" {
    itemSpr = spr_Life_Draining_Aura_Item;
}
if itemVal = "B11" {
    itemSpr = spr_Bounce_Back_Item;
}
if itemVal = "B12" {
    itemSpr = spr_Heart_Shells_Item;
}
if itemVal = "B13" {
    itemSpr = spr_Greater_Hearts_Item;
}
if itemVal = "B14" {
    itemSpr = spr_Punch_Back_Hearts_Item;
}
if itemVal = "C00" {
    itemSpr = spr_Essence_Up_Item;
}
if itemVal = "C01" {
    itemSpr = spr_Dream_Processor_Item;
}
if itemVal = "C02" {
    itemSpr = spr_Memory_Bank_Item;
}
if itemVal = "C03" {
    itemSpr = spr_Dreamers_Stamina_Item;
}
if itemVal = "C04" {
    itemSpr = spr_Creative_Flow_Item;
}
if itemVal = "C05" {
    itemSpr = spr_Essence_Attack_Field_Item;
}
if itemVal = "C06" {
    itemSpr = spr_Essence_Defense_Field_Item;
}
if itemVal = "C07" {
    itemSpr = spr_Imaginary_Reload_Item;
}
if itemVal = "C08" {
    itemSpr = spr_All_Out_Item;
}
if itemVal = "C09" {
    itemSpr = spr_Painful_Epiphany_Item;
}
if itemVal = "C10" {
    itemSpr = spr_Adrenaline_Item;
}
if itemVal = "C11" {
    itemSpr = spr_Overflow_Item;
}
if itemVal = "C12" {
    itemSpr = spr_Lifeforce_Drain_Item;
}
if itemVal = "C13" {
    itemSpr = spr_Essence_Pool_Item;
}
if itemVal = "C14" {
    itemSpr = spr_Most_Essential_Item;
}

if itemVal = "D00" {
    itemSpr = spr_Dexterity_Up_Item;
}
if itemVal = "D01" {
    itemSpr = spr_Spiritual_Swiftness_Item;
}
if itemVal = "D02" {
    itemSpr = spr_Quick_Thinking_Item;
}
if itemVal = "D03" {
    itemSpr = spr_Projectile_Launching_Item;
}
if itemVal = "D04" {
    itemSpr = spr_Projectile_Template_Item;
}
if itemVal = "D05" {
    itemSpr = spr_Flight_Response_Item;
}
if itemVal = "D06" {
    itemSpr = spr_Relief_Item;
}
if itemVal = "D07" {
    itemSpr = spr_Mindfulness_Item;
}
if itemVal = "D08" {
    itemSpr = spr_Information_Dump_Item;
}
if itemVal = "D09" {
    itemSpr = spr_Brainstorming_Item;
}
if itemVal = "D10" {
    itemSpr = spr_Multi_Tasking_Item;
}
if itemVal = "D11" {
    itemSpr = spr_Unload_Item;
}
if itemVal = "D12" {
    itemSpr = spr_Wind_Teleport_Item;
}
if itemVal = "D13" {
    itemSpr = spr_Faster_Dreams_Item;
}
if itemVal = "D14" {
    itemSpr = spr_Pressure_Run_Item;
}

if itemVal = "E00" {
    itemSpr = spr_Perception_Up_Item;
}
if itemVal = "E01" {
    itemSpr = spr_Corporeal_Focus_Item;
}
if itemVal = "E02" {
    itemSpr = spr_Phase_Sense_Item;
}
if itemVal = "E03" {
    itemSpr = spr_Projectile_Focus_Item;
}
if itemVal = "E04" {
    itemSpr = spr_Space_Warping_Adeptness_Item;
}
if itemVal = "E05" {
    itemSpr = spr_Durable_Imagination_Item;
}
if itemVal = "E06" {
    itemSpr = spr_Projectile_Bender_Item;
}
if itemVal = "E07" {
    itemSpr = spr_Space_Bender_Item;
}
if itemVal = "E08" {
    itemSpr = spr_Reality_Concealing_Item;
}
if itemVal = "E09" {
    itemSpr = spr_Time_Warping_Item;
}
if itemVal = "E10" {
    itemSpr = spr_Bullet_Conquest_Item;
}
if itemVal = "E11" {
    itemSpr = spr_Corporeal_Lag_Item;
}
if itemVal = "E12" {
    itemSpr = spr_Turbo_Transitioning_Item;
}
if itemVal = "E13" {
    itemSpr = spr_Spatial_Awareness_Item;
}
if itemVal = "E14" {
    itemSpr = spr_Dream_Glitching_Item;
}

if itemVal = "F00" {
    itemSpr = spr_State_Up_Item;
}
if itemVal = "F01" {
    itemSpr = spr_Self_Discovery_Item;
}
if itemVal = "F02" {
    itemSpr = spr_Flow_State_Item;
}
if itemVal = "F03" {
    itemSpr = spr_Uncontainable_Power_Item;
}
if itemVal = "F04" {
    itemSpr = spr_Self_Idealization_Item;
}
if itemVal = "F05" {
    itemSpr = spr_Reverie_Item;
}
if itemVal = "F06" {
    itemSpr = spr_Spite_Item;
}
if itemVal = "F07" {
    itemSpr = spr_Necesity_Item;
}
if itemVal = "F08" {
    itemSpr = spr_Hidden_Potential_Item;
}
if itemVal = "F09" {
    itemSpr = spr_Self_Control_Item;
}
if itemVal = "F10" {
    itemSpr = spr_All_On_The_Line_Item;
}


if itemVal = "G01" {
    //draw_sprite(spr_Red_Dream_Gem_Art,0,x,y);
	itemSpr = spr_Red_Dream_Gem_Art;
}
if itemVal = "G02" {
	itemSpr = spr_Yellow_Dream_Gem_Art;
}
if itemVal = "G03" {
	itemSpr = spr_Cyan_Dream_Gem_Art;
}
if itemVal = "G04" {
	itemSpr = spr_Lime_Dream_Gem_Art;
}
if itemVal = "G05" {
	itemSpr = spr_Pink_Dream_Gem_Art;
}
if itemVal = "G06" {
	itemSpr = spr_Blue_Dream_Gem_Art;
}

if itemVal = "H01" {
    itemSpr = spr_Basic_Heart_Art;
}
if itemVal = "H02" {
    itemSpr = spr_Regen_Heart_Art;
}
if itemVal = "H03" {
    itemSpr = spr_Survivor_Heart_Art;
}
if itemVal = "H04" {
    itemSpr = spr_Jumbo_Heart_Art;
}
if itemVal = "H05" {
    itemSpr = spr_Tough_Heart_Art;
}
if itemVal = "H06" {
    itemSpr = spr_Undying_Heart_Art;
}
if itemVal = "H07" {
    itemSpr = spr_Hourglass_Heart_Art;
}
if itemVal = "H08" {
    itemSpr = spr_Spike_Heart_Art;
}
if itemVal = "H09" {
    itemSpr = spr_Bleeding_Heart_Art;
}
if itemVal = "H10" {
    itemSpr = spr_Magician_Heart_Art;
}
if itemVal = "H11" {
    itemSpr = spr_Rocket_Heart_Art;
}
if itemVal = "H12" {
    itemSpr = spr_Lightning_Heart_Art;
}
if itemVal = "H13" {
    itemSpr = spr_Scaley_Heart_Art;
}
if itemVal = "H14" {
    itemSpr = spr_Beast_Heart_Art;
}
if itemVal = "H15" {
    itemSpr = spr_Rubber_Heart_Art;
}
if itemVal = "H16" {
    itemSpr = spr_Jello_Heart_Art;
}

if itemGroup = "I" {
    itemSpr = spr_Emotional_Art;
}

if itemVal = "I01" {
    itemSpr = spr_Uplifted_Art;
}
if itemVal = "I02" {
    itemSpr = spr_Overjoyed_Art;
}
if itemVal = "I03" {
    itemSpr = spr_Confident_Art;
}
if itemVal = "I04" {
    itemSpr = spr_Aggressive_Art;
}
if itemVal = "I05" {
    itemSpr = spr_Insecure_Art;
}
if itemVal = "I06" {
    itemSpr = spr_Destructive_Art;
}
if itemVal = "I07" {
    itemSpr = spr_Safe_Art;
}
if itemVal = "I08" {
    itemSpr = spr_Ecstatic_Art;
}
if itemVal = "I09" {
    itemSpr = spr_Secure_Art;
}
if itemVal = "I10" {
    itemSpr = spr_Strained_Art
}
if itemVal = "I11" {
    itemSpr = spr_Overwhelmed_Art;
}
if itemVal = "I12" {
    itemSpr = spr_Sorrow_Art;
}
if itemVal = "I13" {
    itemSpr = spr_Merry_Art
}
if itemVal = "I14" {
    itemSpr = spr_Energized_Art
}
if itemVal = "I15" {
    itemSpr = spr_Capable_Art
}
if itemVal = "I16" {
    itemSpr = spr_Hateful_Art
}
if itemVal = "I17" {
    itemSpr = spr_Pressured_Art
}
if itemVal = "I18" {
    itemSpr = spr_Defeated_Art
}
if itemVal = "I19" {
    itemSpr = spr_Eager_Art
}
if itemVal = "I20" {
    itemSpr = spr_Excited_Art
}
if itemVal = "I21" {
    itemSpr = spr_Hyped_Art;
}
if itemVal = "I22" {
    itemSpr = spr_Frustrated_Art
}
if itemVal = "I23" {
    itemSpr = spr_Panic_Art
}
if itemVal = "I24" {
    itemSpr = spr_Crushed_Art
}
if itemVal = "I25" {
    itemSpr = spr_Peaceful_Art
}
if itemVal = "I26" {
    itemSpr = spr_Tranquil_Art
}
if itemVal = "I27" {
    itemSpr = spr_Comfortable_Art;
}
if itemVal = "I28" {
    itemSpr = spr_Boiling_Art
}
if itemVal = "I29" {
    itemSpr = spr_Anxious_Art
}
if itemVal = "I30" {
    itemSpr = spr_Depressed_Art;
}
if itemVal = "I31" {
    itemSpr = spr_Overcoming_Art;
}
if itemVal = "I32" {
    itemSpr = spr_Fantasizing_Art;
}
if itemVal = "I33" {
    itemSpr = spr_Prideful_Art;
}
if itemVal = "I34" {
    itemSpr = spr_Envious_Art;
}
if itemVal = "I35" {
    itemSpr = spr_Hysterical_Art;
}
if itemVal = "I36" {
    itemSpr = spr_Empty_Art;
}


if itemVal = "M01" {
    itemSpr = spr_Wandering_Soul;
	spriteSize = 0.35;
}
if itemVal = "M02" {
    itemSpr = spr_Friendly_Figment;
	spriteSize = 0.35;
}
if itemVal = "M03" {
    itemSpr = spr_Fighter_Soul;
	spriteSize = 0.35;
}
if itemVal = "M04" {
    itemSpr = spr_Butt_of_Jokes;
	spriteSize = 0.35;
}
if itemVal = "M05" {
    itemSpr = spr_Blaze_Soul;
	spriteSize = 0.35;
}
if itemVal = "M06" {
    itemSpr = spr_Flash_Cannon;
	spriteSize = 0.35;
}
if itemVal = "M07" {
    itemSpr = spr_Fuse_Soul;
	spriteSize = 0.35;
}
if itemVal = "M08" {
    itemSpr = spr_Healthy_Thoughts;
	spriteSize = 0.35;
}
if itemVal = "M09" {
    itemSpr = spr_Spike_Soul;
	spriteSize = 0.35;
}
if itemVal = "M10" {
    itemSpr = spr_Corporeal_Chum;
	spriteSize = 0.35;
}
if itemVal = "M11" {
    itemSpr = spr_Hungry_Soul;
	spriteSize = 0.35;
}
if itemVal = "M12" {
    itemSpr = spr_Troubling_Thingo;
	spriteSize = 0.35;
}
if itemVal = "M13" {
    itemSpr = spr_Copy_Cat_Soul;
	spriteSize = 0.35;
}
if itemVal = "M14" {
    itemSpr = spr_Explosive_Manifesto;
	spriteSize = 0.35;
}
if itemVal = "M15" {
    itemSpr = spr_Poisonous_Soul;
	spriteSize = 0.35;
}
if itemVal = "M16" {
    itemSpr = spr_Cognition;
	spriteSize = 0.35;
}
if itemVal = "M17" {
    itemSpr = spr_Sharp_Soul;
	spriteSize = 0.35;
}
if itemVal = "M18" {
    itemSpr = spr_Bullet_Eater;
	spriteSize = 0.35;
}
if itemVal = "M19" {
    itemSpr = spr_Magical_Soul;
	spriteSize = 0.35;
}
if itemVal = "M20" {
    itemSpr = spr_Positive_Thoughts;
	spriteSize = 0.35;
}
if itemVal = "M21" {
    itemSpr = spr_Electro_Soul;
	spriteSize = 0.35;
}
if itemVal = "M22" {
    itemSpr = spr_Glum_Chum
	spriteSize = 0.35;
}
if itemVal = "M23" {
    itemSpr = spr_Barrier_Soul;
	spriteSize = 0.35;
}
if itemVal = "M24" {
    itemSpr = spr_Mello_Jello;
	spriteSize = 0.35;
}
if itemVal = "M25" {
    itemSpr = spr_Weakening_Soul;
	spriteSize = 0.35;
}

if itemVal = "J01" {
    itemSpr = spr_Drumstick_Art;
}
if itemVal = "J02" {
    itemSpr = spr_Pizza_Art;
}
if itemVal = "J03" {
    itemSpr = spr_Ice_Cream_Art;
}
if itemVal = "J04" {
    itemSpr = spr_Coffee_Art;
}
if itemVal = "J05" {
    itemSpr = spr_Tea_Art;
}
if itemVal = "J06" {
    itemSpr = spr_Energy_Drink_Art;
}
if itemVal = "J07" {
    itemSpr = spr_Soul_Food_Art;
}
if itemVal = "J08" {
    itemSpr = spr_Fig_Art;
}

if itemVal = "K03" {
    itemSpr = spr_Dumbell_Art;
}
if itemVal = "K04" {
    itemSpr = spr_Vitamins_Art;
}
if itemVal = "K05" {
    itemSpr = spr_Essentials_Art;
}
if itemVal = "K06" {
    itemSpr = spr_Running_Shoes_Art;
}
if itemVal = "K07" {
    itemSpr = spr_Glasses_Art;
}
if itemVal = "K08" {
    itemSpr = spr_Role_Model_Art;
}

if itemVal = "L01" {
    itemSpr = spr_Mental_Ammunition_Art;
}
if itemVal = "L02" {
    itemSpr = spr_Mental_Baggage_Art;
}
if itemVal = "L03" {
    itemSpr = spr_Technique_Art;
}
if itemVal = "L04" {
    itemSpr = spr_Brightside_Hearts_Art;
}
if itemVal = "L05" {
    itemSpr = spr_Potential_Art;
}
if itemVal = "L07" {
    itemSpr = spr_Dream_Vault_Art;
}

if itemVal = "N01" {
    itemSpr = spr_Inspired_Art;
}
if itemVal = "N02" {
    itemSpr = spr_Think_Again_Art;
}
if itemVal = "N03" {
    itemSpr = spr_Cramming_Art;
}
if itemVal = "N04" {
    itemSpr = spr_Productivity_Art;
}

if itemVal = "R01" {
    itemSpr = spr_Frightened_Memory_Art;
}
if itemVal = "R02" {
    itemSpr = spr_Anxious_Memory_Art;
}
if itemVal = "R03" {
    itemSpr = spr_Angry_Memory_Art;
}
if itemVal = "R04" {
    itemSpr = spr_Proud_Memory_Art;
}
if itemVal = "R05" {
    itemSpr = spr_Peaceful_Memory_Art;
}
if itemVal = "R06" {
    itemSpr = spr_Hopeful_Memory_Art;
}

if itemVal = "OA01" {
    itemSpr = spr_Hopeful_Art;
}
if itemVal = "OA02" {
    itemSpr = spr_Optimistic_Art;
}
if itemVal = "OA03" {
    itemSpr = spr_Feeling_Lucky_Art;
}
if itemVal = "OA04" {
    itemSpr = spr_Wishful_Thinking_Art;
}

if itemVal = "OB01" {
    itemSpr = spr_Pure_Bliss_Art;
}
if itemVal = "OB02" {
    itemSpr = spr_Care_Free_Art;
}
if itemVal = "OB03" {
    itemSpr = spr_Happy_Place_Art;
}
if itemVal = "OB04" {
    itemSpr = spr_Relaxed_Art;
}

if itemVal = "OC01" {
    itemSpr = spr_Assured_Art;
}
if itemVal = "OC02" {
    itemSpr = spr_Sense_Of_Security_Art;
}
if itemVal = "OC03" {
    itemSpr = spr_Stubborn_Art;
}
if itemVal = "OC04" {
    itemSpr = spr_Delusions_Art;
}

if itemVal = "P01" {
    itemSpr = spr_Forward_Thinking_Art;
}
if itemVal = "P02" {
    itemSpr = spr_Curious_Art;
}
if itemVal = "P03" {
    itemSpr = spr_Vindictive_Art;
}
if itemVal = "P04" {
    itemSpr = spr_Cautious_Art;
}
if itemVal = "P05" {
    itemSpr = spr_Perfectionist_Art;
}
if itemVal = "P06" {
    itemSpr = spr_Toxic_Mentality_Art;
}
if itemVal = "P07" {
    itemSpr = spr_Fiery_Passion_Art;
}
if itemVal = "P08" {
    itemSpr = spr_Optimistic_Art;
}

if itemVal = "S01" {
    itemSpr = spr_Defensive_Art;
}
if itemVal = "S02" {
    itemSpr = spr_Cry_For_Help_Art;
}
if itemVal = "S03" {
    itemSpr = spr_Coping_Buddies_Art;
}

if itemVal = "T01" {
    itemSpr = spr_Cope_Art;
}
if itemVal = "T02" {
    itemSpr = spr_Comfort_Zones_Art;
}
if itemVal = "T03" {
    itemSpr = spr_Mind_Cleanser_Art;
}

if itemVal = "U01" {
    itemSpr = spr_Stuck_In_My_Head_Art;
}
if itemVal = "U02" {
    itemSpr = spr_Second_Wind_Art;
}
if itemVal = "U03" {
    itemSpr = spr_Train_Of_Thought_Art;
}
if itemVal = "U04" {
    itemSpr = spr_Circular_Reasoning_Art;
}
if itemVal = "U05" {
    itemSpr = spr_Idea_Connection_Art;
}
if itemVal = "U06" {
    itemSpr = spr_Venting_Art;
}
if itemVal = "U07" {
    itemSpr = spr_Instinct_Art;
}
if itemVal = "U08" {
    itemSpr = spr_Hold_That_Thought_Art;
}
if itemVal = "U09" {
    itemSpr = spr_Chilling_Thoughts_Art;
}
if itemVal = "U10" {
    itemSpr = spr_Thinking_Outside_The_Box_Art;
}

if itemVal = "V01" {
    itemSpr = spr_Tiny_Bit_Of_Wonder_Art;
}
if itemVal = "V02" {
    itemSpr = spr_Starry_Eyed_Art;
}
if itemVal = "V03" {
    itemSpr = spr_Cognitive_Dissonance_Art;
}
if itemVal = "V04" {
    itemSpr = spr_Gaping_Void_Art;
}
if itemVal = "V05" {
    itemSpr = spr_Sense_Of_Security_Art;
}
if itemVal = "V06" {
    itemSpr = spr_Overexertion_Art;
}
if itemVal = "V07" {
    itemSpr = spr_Mind_Blowing_Art;
}
if itemVal = "V08" {
    itemSpr = spr_Wandering_Thoughts_Art;
}


if itemVal = "W01" {
    itemSpr = spr_Warp_Strike_Art;
}
if itemVal = "W02" {
    itemSpr = spr_Warp_Barrage_Art;
}
if itemVal = "W03" {
    itemSpr = spr_Phase_Affinity_Art;
}
if itemVal = "W04" {
    itemSpr = spr_Warp_Bomb_Art;
}
if itemVal = "W05" {
    itemSpr = spr_Clarity_Art;
}


if itemVal = "XA01" {
    itemSpr = spr_Loathsome_Art;
}
if itemVal = "XA02" {
    itemSpr = spr_Hatred_Art;
}
if itemVal = "XA03" {
    itemSpr = spr_Temper_Art;
}
if itemVal = "XA04" {
    itemSpr = spr_Seethe_Art;
}

if itemVal = "XB01" {
    itemSpr = spr_Paranoid_Art;
}
if itemVal = "XB02" {
    itemSpr = spr_Nervous_Art;
}
if itemVal = "XB03" {
    itemSpr = spr_Concerning_Memory_Art;
}
if itemVal = "XB04" {
    itemSpr = spr_Jittery_Art;
}

if itemVal = "XC01" {
    itemSpr = spr_Full_Despair_Art;
}
if itemVal = "XC02" {
    itemSpr = spr_Call_Of_The_Void_Art;
}
if itemVal = "XC03" {
    itemSpr = spr_Hopeless_Art;
}
if itemVal = "XC04" {
    itemSpr = spr_Downward_Spiral_Art;
}
*/

//sprite_index = itemSpr;

/*
if sprite_height < 164 {
	spriteSize = 1;	
}
*/

if variable_struct_exists(global.item_stats, string(itemVal)) {
	current_item_stats = variable_struct_get(global.item_stats, string(itemVal))
	
	if variable_struct_exists(current_item_stats, "recollectionSprite") {
		itemSpr = asset_get_index(current_item_stats.recollectionSprite)
		if itemSpr = -1 {
			itemSpr = spr_Soul_Shot_Art;	
		}
	}
}

if weapon = 0 {
	draw_sprite_ext(itemSpr,0,x,y,spriteSize,spriteSize,0,c_white,1);
}

image_xscale = spriteSize;
image_yscale = spriteSize;