/*

__view_set( e__VW.Object, 0, noone );

camX += (mean(obj_Soul_Parent.x * 3,obj_Astral_Indicator.x) / 2 - camX - (__view_get( e__VW.WView, 0 )/2)) * camSpeed;
camY += (mean(obj_Soul_Parent.y * 3,obj_Astral_Indicator.y) / 2 - camY - (__view_get( e__VW.HView, 0 )/2)) * camSpeed;

if instance_exists(Tutorial_Control) {

    camX = Tutorial_Control.x - (__view_get( e__VW.WView, 0 )/2);
    camY = Tutorial_Control.y - (__view_get( e__VW.HView, 0 )/2);
}

camX = clamp(camX,obj_Soul_Parent.x - 1280,obj_Soul_Parent.x + 1280);
camY = clamp(camY,obj_Soul_Parent.y - 720,obj_Soul_Parent.y + 720);

/*
if point_distance(obj_Soul_Parent.x,obj_Soul_Parent.y,obj_Astral_Indicator.x,obj_Astral_Indicator.y) >= 128 {
    view_xview[0] = (mean(obj_Soul_Parent.x,obj_Soul_Parent.x,obj_Soul_Parent.x,obj_Astral_Indicator.x) - lengthdir_x(32,dir)) - (view_wview[0]/2)
    view_yview[0] = (mean(obj_Soul_Parent.y,obj_Soul_Parent.y,obj_Soul_Parent.y,obj_Astral_Indicator.y) - lengthdir_y(32,dir)) - (view_hview[0]/2)
} else {
    view_xview[0] = obj_Soul_Parent.x - (view_wview[0]/2);
    view_yview[0] = obj_Soul_Parent.y - (view_hview[0]/2);
}
*/

//camX = round(camX);
//camY = round(camY);

/*

__view_set( e__VW.XView, 0, floor(camX));
__view_set( e__VW.YView, 0, floor(camY));

/* */
/*  */
