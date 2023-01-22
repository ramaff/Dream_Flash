itemFieldSpeed = 1;

global.currentOrbit = 500;

var xx = x;
var yy = y;

with(obj_Potential_For_Anything) {
    if distance_to_object(obj_Astral_Indicator) < 30 {
        other.itemFieldSpeed = 0.1
    }
	var angle = (other.itemFieldPosition + itemFieldPositionOffset) mod 360
	x = xx 
	x += lengthdir_x(200, angle);
	y = yy 
	y += lengthdir_y(200, angle);
}

itemFieldPosition += itemFieldSpeed / 1;

scr_Item_Field_Push(5);

if instance_number(obj_Item_Parent) = 0 and fieldActive = 1 {
    instance_destroy();
}

y = starty - 20 + scr_Wave(-20, 20, 5, 0);