alarm[1] = 9;
if champ = 1 {
    with instance_create(x,y,obj_After_Image_Shot) {
        sprite_index = other.sprite_index;
        image_angle = other.image_angle;
        image_index = other.image_index;
        image_xscale = other.image_xscale;
        image_yscale = other.image_yscale;
        alarm[0] = 27;
    }
}

