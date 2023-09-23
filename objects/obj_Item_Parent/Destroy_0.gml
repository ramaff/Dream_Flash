if weapon = 0 {
    global.floor[global.currentroom,itemData] = 0;
}

global.orbit[itemOrbit] += 1;


with(obj_Item_Parent) {
    if global.orbit[itemOrbit] >= 1 and weapon = 0 {
        instance_destroy();
    }
}