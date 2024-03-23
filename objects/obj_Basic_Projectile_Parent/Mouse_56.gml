if shot_stats.Shot_Orbital_Type = 1 {
    move_towards_point(mouse_x,mouse_y,shot_stats.Shot_Speed);
    speed = shot_stats.Shot_Speed;
    shot_stats.Shot_Orbital_Type = 0;
}

