image_speed = 0;
var spriteSize = 0.5;

if weapon = 1 {
	var weapSpr = spr_Soul_Shot_Art;
	
	if variable_struct_exists(global.weapon_stats, string(itemVal)) {
		current_weapon_stats = variable_struct_get(global.weapon_stats, string(itemVal))
	}
	if variable_struct_exists(current_weapon_stats, "Recollection_Sprite") {
		weapSpr = asset_get_index(current_weapon_stats.Recollection_Sprite)
		if weapSpr = -1 {
			weapSpr = spr_Soul_Shot_Art;	
		}
	}
	
	draw_sprite_ext(weapSpr,0,x,y,spriteSize,spriteSize,0,c_white,1);
} else {
	var itemSpr = spr_Soul_Shot_Art;
	
	if variable_struct_exists(global.item_stats, string(itemVal)) {
		current_item_stats = variable_struct_get(global.item_stats, string(itemVal))
	
		if variable_struct_exists(current_item_stats, "recollectionSprite") {
			itemSpr = asset_get_index(current_item_stats.recollectionSprite)
			if itemSpr = -1 {
				itemSpr = spr_Soul_Shot_Art;	
			}
		}
	
		draw_sprite_ext(itemSpr,0,x,y,spriteSize,spriteSize,0,c_white,1);
	}
}
/*
if weapon = 1 {
    if itemVal = 1 {
        sprite_index = spr_Soul_Shot_Art;
    }
    if itemVal = 2 {
        sprite_index = spr_Power_Shot_Art;
    }
    if itemVal = 3 {
        sprite_index = spr_Heavy_Shot_Art;
    }
    if itemVal = 4 {
        sprite_index = spr_Light_Shot_Art;
    }
    if itemVal = 5 {
        sprite_index = spr_Swift_Shot_Art;
    }
    if itemVal = 6 {
        sprite_index = spr_Piercing_Shot_Art;
    }
    if itemVal = 7 {
        sprite_index = spr_Chain_Shot_Art;
    }
    if itemVal = 8 {
        sprite_index = spr_Impact_Shot_Art;
    }
    if itemVal = 9 {
        sprite_index = spr_Condensed_Shot_Art;
    }
    if itemVal = 10 {
        sprite_index = spr_Charged_Shot_Art;
    }
    if itemVal = 11 {
        sprite_index = spr_Poison_Shot_Art;
    }
    if itemVal = 12 {
        sprite_index = spr_Multi_Shot_Art;
    }
    if itemVal = 13 {
        sprite_index = spr_Splitting_Shot_Art;
    }
    if itemVal = 14 {
        sprite_index = spr_Barrier_Shot_Art;
    }
    if itemVal = 15 {
        sprite_index = spr_Weakening_Shot_Art;
    }
    if itemVal = 16 {
        sprite_index = spr_Laser_Shot_Art;
    }
    if itemVal = 17 {
        sprite_index = spr_Wave_Shot_Art;
    }
    if itemVal = 18 {
        sprite_index = spr_Helix_Shot_Art;
    }
    if itemVal = 19 {
        sprite_index = spr_Hyper_Shot_Art;
    }
    if itemVal = 20 {
        sprite_index = spr_Essence_Beam_Art;
    }
    if itemVal = 21 {
        sprite_index = spr_Rainmaker_Art;
    }
    if itemVal = 51 {
        sprite_index = spr_Essence_Whip_Art;
    }
    if itemVal = 52 {
        sprite_index = spr_Power_Whip_Art;
    }
    if itemVal = 53 {
        sprite_index = spr_Dreamers_Blade_Art;
    }
    
    if itemVal = 101 {
        sprite_index = spr_Rock_Toss_Art;
    }
    if itemVal = 102 {
        sprite_index = spr_Bag_Of_Marbles_Art;
    }
    if itemVal = 103 {
        sprite_index = spr_Flying_Disk_Art;
    }
    if itemVal = 104 {
        sprite_index = spr_Shuriken_Art;
    }
    if itemVal = 105 {
        sprite_index = spr_Spike_Ball_Art;
    }
    if itemVal = 106 {
        sprite_index = spr_Boomerang_Blade_Art;
    }
    if itemVal = 107 {
        sprite_index = spr_Spinning_Top_Art;
    }
    if itemVal = 108 {
        sprite_index = spr_Sharp_Machine_Gun_Art;
    }
    if itemVal = 109 {
        sprite_index = spr_Throwing_Knives_Art;
    }
    if itemVal = 110 {
        sprite_index = spr_Archery_Bow_Art;
    }
    if itemVal = 111 {
        sprite_index = spr_Crossbow_Art;
    }
    if itemVal = 112 {
        sprite_index = spr_Soul_Shot_Art;
    }
    if itemVal = 113 {
        sprite_index = spr_Soul_Shot_Art;
    }
    if itemVal = 114 {
        sprite_index = spr_Soul_Shot_Art;
    }
    if itemVal = 115 {
        sprite_index = spr_Soul_Shot_Art;
    }
    if itemVal = 116 {
        sprite_index = spr_Soul_Shot_Art;
    }
    if itemVal = 117 {
        sprite_index = spr_Soul_Shot_Art;
    }
    if itemVal = 118 {
        sprite_index = spr_Soul_Shot_Art;
    }
    if itemVal = 119 {
        sprite_index = spr_Soul_Shot_Art;
    }
    if itemVal = 120 {
        sprite_index = spr_Soul_Shot_Art;
    }
    
    if itemVal = 201 {
        sprite_index = spr_Arm_Cannon_Art;
    }
    if itemVal = 202 {
        sprite_index = spr_Snap_Pops_Art;
    }
    if itemVal = 203 {
        sprite_index = spr_Missile_Launcher_Art;
    }
    if itemVal = 204 {
        sprite_index = spr_Big_Bomb_Cannon_Art;
    }
    if itemVal = 205 {
        sprite_index = spr_Bombarder_Art;
    }
    if itemVal = 206 {
        sprite_index = spr_Boss_Muncher_Art;
    }
    if itemVal = 207 {
        sprite_index = spr_Splodey_Seeds_Art;
    }
    if itemVal = 208 {
        sprite_index = spr_Micro_Bomb_Cannon_Art;
    }
    if itemVal = 209 {
        sprite_index = spr_Firecracker_Launcher_Art;
    }
    if itemVal = 210 {
        sprite_index = spr_Soul_Shot_Art;
    }
    if itemVal = 211 {
        sprite_index = spr_Soul_Shot_Art;
    }
    if itemVal = 212 {
        sprite_index = spr_Soul_Shot_Art;
    }
    if itemVal = 213 {
        sprite_index = spr_Soul_Shot_Art;
    }
    if itemVal = 214 {
        sprite_index = spr_Soul_Shot_Art;
    }
    if itemVal = 215 {
        sprite_index = spr_Soul_Shot_Art;
    }
    if itemVal = 216 {
        sprite_index = spr_Soul_Shot_Art;
    }
    if itemVal = 217 {
        sprite_index = spr_Soul_Shot_Art;
    }
    if itemVal = 218 {
        sprite_index = spr_Soul_Shot_Art;
    }
    if itemVal = 219 {
        sprite_index = spr_Soul_Shot_Art;
    }
    if itemVal = 220 {
        sprite_index = spr_Soul_Shot_Art;
    }
    
    if itemVal = 301 {
        sprite_index = spr_Magic_Bolt_Art;
    }
    if itemVal = 302 {
        sprite_index = spr_Charged_Bolt_Art;
    }
    if itemVal = 303 {
        sprite_index = spr_Fire_Ball_Art;
    }
    if itemVal = 304 {
        sprite_index = spr_Frost_Shard_Art;
    }
    if itemVal = 305 {
        sprite_index = spr_Lightning_Art;
    }
    if itemVal = 306 {
        sprite_index = spr_Magic_Twister_Art;
    }
    if itemVal = 307 {
        sprite_index = spr_Magic_Bubbles_Art;
    }
    if itemVal = 308 {
        sprite_index = spr_Earth_Magic_Art;
    }
    if itemVal = 309 {
        sprite_index = spr_Tide_Staff_Art;
    }
    if itemVal = 310 {
        sprite_index = spr_Adept_Staff_Art;
    }
    if itemVal = 311 {
        sprite_index = spr_Soul_Shot_Art;
    }
    if itemVal = 312 {
        sprite_index = spr_Soul_Shot_Art;
    }
    if itemVal = 313 {
        sprite_index = spr_Soul_Shot_Art;
    }
    if itemVal = 314 {
        sprite_index = spr_Soul_Shot_Art;
    }
    if itemVal = 315 {
        sprite_index = spr_Soul_Shot_Art;
    }
    if itemVal = 316 {
        sprite_index = spr_Soul_Shot_Art;
    }
    if itemVal = 317 {
        sprite_index = spr_Soul_Shot_Art;
    }
    if itemVal = 318 {
        sprite_index = spr_Soul_Shot_Art;
    }
    if itemVal = 319 {
        sprite_index = spr_Soul_Shot_Art;
    }
    if itemVal = 320 {
        sprite_index = spr_Soul_Shot_Art;
    }
    
    if itemVal = 401 {
        sprite_index = spr_Energy_Ball_Art;
    }
    if itemVal = 402 {
        sprite_index = spr_Sparks_Art;
    }
    if itemVal = 403 {
        sprite_index = spr_Laser_Barrage_Art;
    }
    if itemVal = 404 {
        sprite_index = spr_Plasma_Visor_Art;
    }
    if itemVal = 405 {
        sprite_index = spr_Power_Gun_Art;
    }
    if itemVal = 406 {
        sprite_index = spr_Wave_Gun_Art;
    }
    if itemVal = 407 {
        sprite_index = spr_Tesla_Coil_Art;
    }
    if itemVal = 408 {
        sprite_index = spr_Shock_Chain_Gun_Art;
    }
    if itemVal = 409 {
        sprite_index = spr_Charge_Rod_Art;
    }
    if itemVal = 410 {
        sprite_index = spr_Soul_Shot_Art;
    }
    if itemVal = 411 {
        sprite_index = spr_Soul_Shot_Art;
    }
    if itemVal = 412 {
        sprite_index = spr_Soul_Shot_Art;
    }
    if itemVal = 413 {
        sprite_index = spr_Soul_Shot_Art;
    }
    if itemVal = 414 {
        sprite_index = spr_Soul_Shot_Art;
    }
    if itemVal = 415 {
        sprite_index = spr_Soul_Shot_Art;
    }
    if itemVal = 416 {
        sprite_index = spr_Soul_Shot_Art;
    }
    if itemVal = 417 {
        sprite_index = spr_Soul_Shot_Art;
    }
    if itemVal = 418 {
        sprite_index = spr_Soul_Shot_Art;
    }
    if itemVal = 419 {
        sprite_index = spr_Soul_Shot_Art;
    }
    if itemVal = 420 {
        sprite_index = spr_Soul_Shot_Art;
    }
    
    if itemVal = 501 {
        sprite_index = spr_Fleeting_Soul_Staff_Art;
    }
    if itemVal = 502 {
        sprite_index = spr_Manifesting_Rod_Art;
    }
} else {
	image_xscale = 0.5;
	image_yscale = 0.5;	
}

if itemVal = "A00" {
    sprite_index = spr_Strength_Up_Item;
}
if itemVal = "A01" {
    sprite_index = spr_Strengthened_Shots_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "A02" {
    sprite_index = spr_Armour_Piercing_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "A03" {
    sprite_index = spr_Powered_Shots_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "A04" {
    sprite_index = spr_Body_Penetrating_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "A05" {
    sprite_index = spr_Fight_Response_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "A06" {
    sprite_index = spr_Hard_Headed_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "A07" {
    sprite_index = spr_Muscle_Memory_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "A08" {
    sprite_index = spr_Dense_Mindset_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "A09" {
    sprite_index = spr_Thinking_Bigger_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "A10" {
    sprite_index = spr_Critical_Thinking_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "A11" {
    sprite_index = spr_Radiant_Strength_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "A12" {
    sprite_index = spr_Overflowing_Power_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "A13" {
    sprite_index = spr_Stronger_Imagination_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "A14" {
    sprite_index = spr_Aura_Strike_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "B00" {
    sprite_index = spr_Vitality_Up_Item;
}
if itemVal = "B01" {
    sprite_index = spr_Heartiness_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "B02" {
    sprite_index = spr_Harder_Hearts_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "B03" {
    sprite_index = spr_Body_Bag_Hearts_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "B04" {
    sprite_index = spr_Will_To_Live_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "B05" {
    sprite_index = spr_Rubber_Soul_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "B06" {
    sprite_index = spr_Lovely_Personality_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "B07" {
    sprite_index = spr_Encouragement_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "B08" {
    sprite_index = spr_Healing_Concentration_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "B09" {
    sprite_index = spr_Contact_Field_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "B10" {
    sprite_index = spr_Life_Draining_Aura_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "B11" {
    sprite_index = spr_Bounce_Back_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "B12" {
    sprite_index = spr_Heart_Shells_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "B13" {
    sprite_index = spr_Greater_Hearts_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "B14" {
    sprite_index = spr_Punch_Back_Hearts_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "C00" {
    sprite_index = spr_Essence_Up_Item;
}
if itemVal = "C01" {
    sprite_index = spr_Dream_Processor_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "C02" {
    sprite_index = spr_Memory_Bank_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "C03" {
    sprite_index = spr_Dreamers_Stamina_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "C04" {
    sprite_index = spr_Creative_Flow_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "C05" {
    sprite_index = spr_Essence_Attack_Field_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "C06" {
    sprite_index = spr_Essence_Defense_Field_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "C07" {
    sprite_index = spr_Imaginary_Reload_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "C08" {
    sprite_index = spr_All_Out_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "C09" {
    sprite_index = spr_Painful_Epiphany_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "C10" {
    sprite_index = spr_Adrenaline_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "C11" {
    sprite_index = spr_Overflow_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "C12" {
    sprite_index = spr_Lifeforce_Drain_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "C13" {
    sprite_index = spr_Essence_Pool_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "C14" {
    sprite_index = spr_Most_Essential_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}

if itemVal = "D00" {
    sprite_index = spr_Dexterity_Up_Item;
}
if itemVal = "D01" {
    sprite_index = spr_Spiritual_Swiftness_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "D02" {
    sprite_index = spr_Quick_Thinking_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "D03" {
    sprite_index = spr_Projectile_Launching_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "D04" {
    sprite_index = spr_Projectile_Template_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "D05" {
    sprite_index = spr_Flight_Response_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "D06" {
    sprite_index = spr_Relief_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "D07" {
    sprite_index = spr_Mindfulness_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "D08" {
    sprite_index = spr_Information_Dump_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "D09" {
    sprite_index = spr_Brainstorming_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "D10" {
    sprite_index = spr_Multi_Tasking_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "D11" {
    sprite_index = spr_Unload_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "D12" {
    sprite_index = spr_Wind_Teleport_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "D13" {
    sprite_index = spr_Faster_Dreams_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "D14" {
    sprite_index = spr_Pressure_Run_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}

if itemVal = "E00" {
    sprite_index = spr_Perception_Up_Item;
}
if itemVal = "E01" {
    sprite_index = spr_Corporeal_Focus_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "E02" {
    sprite_index = spr_Phase_Sense_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "E03" {
    sprite_index = spr_Projectile_Focus_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "E04" {
    sprite_index = spr_Space_Warping_Adeptness_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "E05" {
    sprite_index = spr_Durable_Imagination_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "E06" {
    sprite_index = spr_Projectile_Bender_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "E07" {
    sprite_index = spr_Space_Bender_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "E08" {
    sprite_index = spr_Reality_Concealing_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "E09" {
    sprite_index = spr_Time_Warping_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "E10" {
    sprite_index = spr_Bullet_Conquest_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "E11" {
    sprite_index = spr_Corporeal_Lag_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "E12" {
    sprite_index = spr_Turbo_Transitioning_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "E13" {
    sprite_index = spr_Spatial_Awareness_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}
if itemVal = "E14" {
    sprite_index = spr_Dream_Glitching_Item;
	image_xscale = 0.5;
	image_yscale = 0.5;
}

if itemVal = "F00" {
    sprite_index = spr_State_Up_Item;
}
if itemVal = "F01" {
    sprite_index = spr_Self_Discovery_Item;
}
if itemVal = "F02" {
    sprite_index = spr_Flow_State_Item;
}
if itemVal = "F03" {
    sprite_index = spr_Uncontainable_Power_Item;
}
if itemVal = "F04" {
    sprite_index = spr_Self_Idealization_Item;
}
if itemVal = "F05" {
    sprite_index = spr_Reverie_Item;
}
if itemVal = "F06" {
    sprite_index = spr_Spite_Item;
}
if itemVal = "F07" {
    sprite_index = spr_Necesity_Item;
}
if itemVal = "F08" {
    sprite_index = spr_Hidden_Potential_Item;
}
if itemVal = "F09" {
    sprite_index = spr_Self_Control_Item;
}
if itemVal = "F10" {
    sprite_index = spr_All_On_The_Line_Item;
}

if itemVal = "G01" {
    sprite_index = spr_Red_Dream_Gem_Art;
}
if itemVal = "G02" {
    sprite_index = spr_Yellow_Dream_Gem_Art;
}
if itemVal = "G03" {
    sprite_index = spr_Cyan_Dream_Gem_Art;
}
if itemVal = "G04" {
    sprite_index = spr_Lime_Dream_Gem_Art;
}
if itemVal = "G05" {
    sprite_index = spr_Pink_Dream_Gem_Art;
}
if itemVal = "G06" {
    sprite_index = spr_Blue_Dream_Gem_Art;
}

if itemVal = "H01" {
    sprite_index = spr_Basic_Heart_Art;
}
if itemVal = "H02" {
    sprite_index = spr_Regen_Heart_Art;
}
if itemVal = "H03" {
    sprite_index = spr_Survivor_Heart_Art;
}
if itemVal = "H04" {
    sprite_index = spr_Jumbo_Heart_Art;
}
if itemVal = "H05" {
    sprite_index = spr_Tough_Heart_Art;
}
if itemVal = "H06" {
    sprite_index = spr_Undying_Heart_Art;
}
if itemVal = "H07" {
    sprite_index = spr_Hourglass_Heart_Art;
}
if itemVal = "H08" {
    sprite_index = spr_Spike_Heart_Art;
}
if itemVal = "H09" {
    sprite_index = spr_Bleeding_Heart_Art;
}
if itemVal = "H10" {
    sprite_index = spr_Magician_Heart_Art;
}
if itemVal = "H11" {
    sprite_index = spr_Rocket_Heart_Art;
}
if itemVal = "H12" {
    sprite_index = spr_Lightning_Heart_Art;
}
if itemVal = "H13" {
    sprite_index = spr_Scaley_Heart_Art;
}
if itemVal = "H14" {
    sprite_index = spr_Beast_Heart_Art;
}
if itemVal = "H15" {
    sprite_index = spr_Rubber_Heart_Art;
}
if itemVal = "H16" {
    sprite_index = spr_Jello_Heart_Art;
}

if itemVal = "I01" {
    sprite_index = spr_Uplifted_Art;
}
if itemVal = "I02" {
    sprite_index = spr_Overjoyed_Art;
}
if itemVal = "I03" {
    sprite_index = spr_Confident_Art;
}
if itemVal = "I04" {
    sprite_index = spr_Aggressive_Art;
}
if itemVal = "I05" {
    sprite_index = spr_Insecure_Art;
}
if itemVal = "I06" {
    sprite_index = spr_Destructive_Art;
}
if itemVal = "I07" {
    sprite_index = spr_Safe_Art;
}
if itemVal = "I08" {
    sprite_index = spr_Ecstatic_Art;
}
if itemVal = "I09" {
    sprite_index = spr_Secure_Art;
}
if itemVal = "I10" {
    sprite_index = spr_Strained_Art
}
if itemVal = "I11" {
    sprite_index = spr_Overwhelmed_Art;
}
if itemVal = "I12" {
    sprite_index = spr_Sorrow_Art;
}
if itemVal = "I13" {
    sprite_index = spr_Merry_Art
}
if itemVal = "I14" {
    sprite_index = spr_Energized_Art
}
if itemVal = "I15" {
    sprite_index = spr_Capable_Art
}
if itemVal = "I16" {
    sprite_index = spr_Hateful_Art
}
if itemVal = "I17" {
    sprite_index = spr_Pressured_Art
}
if itemVal = "I18" {
    sprite_index = spr_Defeated_Art
}
if itemVal = "I19" {
    sprite_index = spr_Eager_Art
}
if itemVal = "I20" {
    sprite_index = spr_Excited_Art
}
if itemVal = "I21" {
    sprite_index = spr_Hyped_Art;
}
if itemVal = "I22" {
    sprite_index = spr_Frustrated_Art
}
if itemVal = "I23" {
    sprite_index = spr_Panic_Art
}
if itemVal = "I24" {
    sprite_index = spr_Crushed_Art
}
if itemVal = "I25" {
    sprite_index = spr_Peaceful_Art
}
if itemVal = "I26" {
    sprite_index = spr_Tranquil_Art
}
if itemVal = "I27" {
    sprite_index = spr_Comfortable_Art;
}
if itemVal = "I28" {
    sprite_index = spr_Boiling_Art
}
if itemVal = "I29" {
    sprite_index = spr_Anxious_Art
}
if itemVal = "I30" {
    sprite_index = spr_Depressed_Art;
}
if itemVal = "I31" {
    sprite_index = spr_Overcoming_Art;
}
if itemVal = "I32" {
    sprite_index = spr_Fantasizing_Art;
}
if itemVal = "I33" {
    sprite_index = spr_Prideful_Art;
}
if itemVal = "I34" {
    sprite_index = spr_Envious_Art;
}
if itemVal = "I35" {
    sprite_index = spr_Hysterical_Art;
}
if itemVal = "I36" {
    sprite_index = spr_Empty_Art;
}

if itemVal = "M01" {
    sprite_index = spr_Wandering_Soul;
	spriteSize = 0.35;
}
if itemVal = "M02" {
    sprite_index = spr_Friendly_Figment;
	spriteSize = 0.35;
}
if itemVal = "M03" {
    sprite_index = spr_Fighter_Soul;
	spriteSize = 0.35;
}
if itemVal = "M04" {
    sprite_index = spr_Butt_of_Jokes;
	spriteSize = 0.35;
}
if itemVal = "M05" {
    sprite_index = spr_Blaze_Soul;
	spriteSize = 0.35;
}
if itemVal = "M06" {
    sprite_index = spr_Flash_Cannon;
	spriteSize = 0.35;
}
if itemVal = "M07" {
    sprite_index = spr_Fuse_Soul;
	spriteSize = 0.35;
}
if itemVal = "M08" {
    sprite_index = spr_Healthy_Thoughts;
	spriteSize = 0.35;
}
if itemVal = "M09" {
    sprite_index = spr_Spike_Soul;
	spriteSize = 0.35;
}
if itemVal = "M10" {
    sprite_index = spr_Corporeal_Chum;
	spriteSize = 0.35;
}
if itemVal = "M11" {
    sprite_index = spr_Hungry_Soul;
	spriteSize = 0.35;
}
if itemVal = "M12" {
    sprite_index = spr_Troubling_Thingo;
	spriteSize = 0.35;
}
if itemVal = "M13" {
    sprite_index = spr_Copy_Cat_Soul;
	spriteSize = 0.35;
}
if itemVal = "M14" {
    sprite_index = spr_Explosive_Manifesto;
	spriteSize = 0.35;
}
if itemVal = "M15" {
    sprite_index = spr_Poisonous_Soul;
	spriteSize = 0.35;
}
if itemVal = "M16" {
    sprite_index = spr_Cognition;
	spriteSize = 0.35;
}
if itemVal = "M17" {
    sprite_index = spr_Sharp_Soul;
	spriteSize = 0.35;
}
if itemVal = "M18" {
    sprite_index = spr_Bullet_Eater;
	spriteSize = 0.35;
}
if itemVal = "M19" {
    sprite_index = spr_Magical_Soul;
	spriteSize = 0.35;
}
if itemVal = "M20" {
    sprite_index = spr_Positive_Thoughts
	spriteSize = 0.35;
}
if itemVal = "M21" {
    sprite_index = spr_Electro_Soul;
	spriteSize = 0.35;
}
if itemVal = "M22" {
    sprite_index = spr_Glum_Chum
	spriteSize = 0.35;
}
if itemVal = "M23" {
    sprite_index = spr_Barrier_Soul;
	spriteSize = 0.35;
}
if itemVal = "M24" {
    sprite_index = spr_Mello_Jello;
	spriteSize = 0.35;
}
if itemVal = "M25" {
    sprite_index = spr_Weakening_Soul;
	spriteSize = 0.35;
}

if itemVal = "J01" {
    sprite_index = spr_Drumstick_Art;
}
if itemVal = "J02" {
    sprite_index = spr_Pizza_Art;
}
if itemVal = "J03" {
    sprite_index = spr_Ice_Cream_Art;
}
if itemVal = "J04" {
    sprite_index = spr_Coffee_Art;
}
if itemVal = "J05" {
    sprite_index = spr_Tea_Art;
}
if itemVal = "J06" {
    sprite_index = spr_Energy_Drink_Art;
}
if itemVal = "J07" {
    sprite_index = spr_Soul_Food_Art;
}
if itemVal = "J08" {
    sprite_index = spr_Fig_Art;
}

if itemVal = "K03" {
    sprite_index = spr_Dumbell_Art;
}
if itemVal = "K04" {
    sprite_index = spr_Vitamins_Art;
}
if itemVal = "K05" {
    sprite_index = spr_Essentials_Art;
}
if itemVal = "K06" {
    sprite_index = spr_Running_Shoes_Art;
}
if itemVal = "K07" {
    sprite_index = spr_Glasses_Art;
}
if itemVal = "K08" {
    sprite_index = spr_Role_Model_Art;
}

if itemVal = "L01" {
    sprite_index = spr_Mental_Ammunition_Art;
}
if itemVal = "L02" {
    sprite_index = spr_Mental_Baggage_Art;
}
if itemVal = "L03" {
    sprite_index = spr_Technique_Art;
}
if itemVal = "L04" {
    sprite_index = spr_Brightside_Hearts_Art;
}
if itemVal = "L05" {
    sprite_index = spr_Potential_Art;
}
if itemVal = "L07" {
    sprite_index = spr_Dream_Vault_Art;
}

if itemVal = "N01" {
    sprite_index = spr_Inspired_Art;
}
if itemVal = "N02" {
    sprite_index = spr_Think_Again_Art;
}
if itemVal = "N03" {
    sprite_index = spr_Cramming_Art;
}
if itemVal = "N04" {
    sprite_index = spr_Productivity_Art;
}

if itemVal = "R01" {
    sprite_index = spr_Frightened_Memory_Art;
}
if itemVal = "R02" {
    sprite_index = spr_Anxious_Memory_Art;
}
if itemVal = "R03" {
    sprite_index = spr_Angry_Memory_Art;
}
if itemVal = "R04" {
    sprite_index = spr_Proud_Memory_Art;
}
if itemVal = "R05" {
    sprite_index = spr_Peaceful_Memory_Art;
}
if itemVal = "R06" {
    sprite_index = spr_Hopeful_Memory_Art;
}

if itemVal = "OA01" {
    sprite_index = spr_Hopeful_Art;
}
if itemVal = "OA02" {
    sprite_index = spr_Optimistic_Art;
}
if itemVal = "OA03" {
    sprite_index = spr_Feeling_Lucky_Art;
}
if itemVal = "OA04" {
    sprite_index = spr_Wishful_Thinking_Art;
}

if itemVal = "OB01" {
    sprite_index = spr_Pure_Bliss_Art;
}
if itemVal = "OB02" {
    sprite_index = spr_Care_Free_Art;
}
if itemVal = "OB03" {
    sprite_index = spr_Happy_Place_Art;
}
if itemVal = "OB04" {
    sprite_index = spr_Relaxed_Art;
}

if itemVal = "OC01" {
    sprite_index = spr_Assured_Art;
}
if itemVal = "OC02" {
    sprite_index = spr_Sense_Of_Security_Art;
}
if itemVal = "OC03" {
    sprite_index = spr_Stubborn_Art;
}
if itemVal = "OC04" {
    sprite_index = spr_Delusions_Art;
}

if itemVal = "P01" {
    sprite_index = spr_Forward_Thinking_Art;
}
if itemVal = "P02" {
    sprite_index = spr_Curious_Art;
}
if itemVal = "P03" {
    sprite_index = spr_Vindictive_Art;
}
if itemVal = "P04" {
    sprite_index = spr_Cautious_Art;
}
if itemVal = "P05" {
    sprite_index = spr_Perfectionist_Art;
}
if itemVal = "P06" {
    sprite_index = spr_Toxic_Mentality_Art;
}
if itemVal = "P07" {
    sprite_index = spr_Fiery_Passion_Art;
}
if itemVal = "P08" {
    sprite_index = spr_Optimistic_Art;
}

if itemVal = "S01" {
    sprite_index = spr_Defensive_Art;
}
if itemVal = "S02" {
    sprite_index = spr_Cry_For_Help_Art;
}
if itemVal = "S03" {
    sprite_index = spr_Coping_Buddies_Art;
}

if itemVal = "T01" {
    sprite_index = spr_Cope_Art;
}
if itemVal = "T02" {
    sprite_index = spr_Comfort_Zones_Art;
}
if itemVal = "T03" {
    sprite_index = spr_Mind_Cleanser_Art;
}

if itemVal = "U01" {
    sprite_index = spr_Stuck_In_My_Head_Art;
}
if itemVal = "U02" {
    sprite_index = spr_Second_Wind_Art;
}
if itemVal = "U03" {
    sprite_index = spr_Train_Of_Thought_Art;
}
if itemVal = "U04" {
    sprite_index = spr_Circular_Reasoning_Art;
}
if itemVal = "U05" {
    sprite_index = spr_Idea_Connection_Art;
}
if itemVal = "U06" {
    sprite_index = spr_Venting_Art;
}
if itemVal = "U07" {
    sprite_index = spr_Instinct_Art;
}
if itemVal = "U08" {
    sprite_index = spr_Hold_That_Thought_Art;
}
if itemVal = "U09" {
    sprite_index = spr_Chilling_Thoughts_Art;
}
if itemVal = "U10" {
    sprite_index = spr_Thinking_Outside_The_Box_Art;
}

if itemVal = "V01" {
    sprite_index = spr_Tiny_Bit_Of_Wonder_Art;
}
if itemVal = "V02" {
    sprite_index = spr_Starry_Eyed_Art;
}
if itemVal = "V03" {
    sprite_index = spr_Cognitive_Dissonance_Art;
}
if itemVal = "V04" {
    sprite_index = spr_Gaping_Void_Art;
}
if itemVal = "V05" {
    sprite_index = spr_Sense_Of_Security_Art;
}
if itemVal = "V06" {
    sprite_index = spr_Overexertion_Art;
}
if itemVal = "V07" {
    sprite_index = spr_Mind_Blowing_Art;
}
if itemVal = "V08" {
    sprite_index = spr_Wandering_Thoughts_Art;
}


if itemVal = "W01" {
    sprite_index = spr_Warp_Strike_Art;
}
if itemVal = "W02" {
    sprite_index = spr_Warp_Barrage_Art;
}
if itemVal = "W03" {
    sprite_index = spr_Phase_Affinity_Art;
}
if itemVal = "W04" {
    sprite_index = spr_Warp_Bomb_Art;
}
if itemVal = "W05" {
    sprite_index = spr_Clarity_Art;
}

if itemVal = "XA01" {
    sprite_index = spr_Loathsome_Art;
}
if itemVal = "XA02" {
    sprite_index = spr_Hatred_Art;
}
if itemVal = "XA03" {
    sprite_index = spr_Temper_Art;
}
if itemVal = "XA04" {
    sprite_index = spr_Seethe_Art;
}

if itemVal = "XB01" {
    sprite_index = spr_Paranoid_Art;
}
if itemVal = "XB02" {
    sprite_index = spr_Nervous_Art;
}
if itemVal = "XB03" {
    sprite_index = spr_Concerning_Memory_Art;
}
if itemVal = "XB04" {
    sprite_index = spr_Jittery_Art;
}

if itemVal = "XC01" {
    sprite_index = spr_Full_Despair_Art;
}
if itemVal = "XC02" {
    sprite_index = spr_Call_Of_The_Void_Art;
}
if itemVal = "XC03" {
    sprite_index = spr_Hopeless_Art;
}
if itemVal = "XC04" {
    sprite_index = spr_Downward_Spiral_Art;
}


draw_self();

*/

draw_sprite_ext(spr_Soul_Item_Border,0,x,y,0.5,0.5,0,c_white,1);