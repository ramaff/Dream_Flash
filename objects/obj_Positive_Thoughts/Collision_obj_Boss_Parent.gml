if soulinvincibility = 0 {
    soulinvincibility = 6;
    if sknockbackdefense < other.bossknockbackforce {
                direction = other.direction;
                speed = (other.bossknockbackforce - sknockbackdefense) / 2;
                alarm[10] = 6;
            }
            
    shealth -= other.bosscontactdamage;
    
    val = random(9) + random(other.bosscontactdamage);
    
    if val >= 8 {
        with instance_create(x,y,obj_Positive_Essence) {
            PositiveType = 1 + irandom(4);
            if PositiveType = 1 {
                sprite_index = spr_Strength_Up_Item;
            }
            if PositiveType = 2 {
                sprite_index = spr_Vitality_Up_Item;
            }
            if PositiveType = 3 {
                sprite_index = spr_Essence_Up_Item;
            }
            if PositiveType = 4 {
                sprite_index = spr_Dexterity_Up_Item;
            }
            if PositiveType = 5 {
                sprite_index = spr_Perception_Up_Item;
            }
            if PositiveType = 6 {
                sprite_index = spr_State_Up_Item;
            }
            image_xscale = 0.7;
            image_yscale = 0.7;
            speed = 0.5 + random(0.8);
            friction = 0.01;
            direction = random(360);
        }
    }
    
    if shealth <= 0 {
        instance_destroy();
    }
}

