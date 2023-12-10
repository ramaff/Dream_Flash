boost = global.boost;
champ = global.champ;

bossValue = 34;

scr_Boss_Stats_Setup();

if champ = 1 {
    global.bossval = 35.2;
}

image_speed = 1;
image_index = 0;

scr_Boss_Size_Setup(0.5);

scr_Default_Attack_Settings();

scr_Boss_Height_Setup(90);

spawnFrame = 0;

death_sprite = spr_locust_ko;
boss_palette = spr_Locust_Palette;
boss_palette_index = 0;
