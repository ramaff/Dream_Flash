// Just defaults basically I think
boost = global.boost;
champ = global.champ;

// Boss # id
boss_value = 57;
scr_Boss_Stats_Setup(2);

// Required, usually set to 0.5
scr_Boss_Size_Setup(0.475);

// If boss is visually 'floating' setup boss height
// Needed for bobbing/boss shadows
scr_Boss_Height_Setup(90);

center_xx = room_width / 2;
center_yy = room_height / 2;

box_size = 200;

box_xx = center_xx - box_size - 5;
box_yy = center_yy - box_size - 5;
box_move_direction = 0;