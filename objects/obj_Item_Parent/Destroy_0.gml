if weapon = 0 {
    Floor_Layout_Control.Flash[global.currentroom,itemData] = 0;
}

global.orbit[itemOrbit] += 1;


with(obj_Item_Parent) {
    if global.orbit[itemOrbit] >= 1 and weapon = 0 {
        instance_destroy();
    }
}