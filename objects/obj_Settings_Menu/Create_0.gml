for(i = 1; i <= 4; i++) {
    with instance_create(camera_get_view_x(view) + camera_get_view_width(view) / 2 - 160,camera_get_view_y(view) - 80 + i * 104,obj_Specific_Setting_Butt) {
        category = other.i;
        image_speed = 0;
        image_index = category - 1;
    }
}

