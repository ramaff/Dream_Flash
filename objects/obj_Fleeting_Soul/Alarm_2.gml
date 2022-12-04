scr_Minion_Reload();

scr_Soul_Stretch("Vertical", 0.5);

if instance_exists(obj_Boss_Parent) {
    scr_Default_Weapon_Stats();
    
    Shot_Spread += 0;
    Shot_Accuracy += 10;
    Shot_Count += 0;
    
    Shot_Sprite = spr_Fleeting_Soul_Shot;
    Shot_Type = obj_Lesser_Soul_Shot;
	Shot_Size = 0.4;
    
    Shot_Speed = 5;
    Shot_Power = other.Shot_Power;
    Shot_Knockback = 10;
    Shot_Lifespan = 100;
    
    scr_Minion_Shot_Creation();
}

exit;

if instance_exists(obj_Boss_Parent) {
    with instance_create(x,y,obj_Lesser_Soul_Shot) {
        scr_Default_Shot_Stats();
        sprite_index = spr_Wander_Soul_Shot;
        shotspeed = 0.35 * other.sshotspeed;
        shotpower = 1 * other.spower;
        shotknockback = 1 * other.sshotknockback;
        shotlifespan = 90;
        move_towards_point(instance_nearest(x,y,obj_Boss_Parent).x,instance_nearest(x,y,obj_Boss_Parent).y, shotspeed);
        direction += (-2.5 + random(5)) / other.saccuracy;
        alarm[0] = shotlifespan;
    }
}

