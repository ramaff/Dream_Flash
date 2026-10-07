if instance_exists(obj_new_mega_map) and no_mouse >= 60
    exit

var _sc = camcon.window_scale
var _x = (x - camera_get_view_x(view))*_sc
var _y = (y - camera_get_view_y(view))*_sc

var tMaxDelay = (120 - obj_Soul_Parent.tdelayconservation) / ((40 + global.soulperception + global.soulperceptionTemp) / 40) / obj_Soul_Parent.tdelayconservationfactor;

var tpercent = 1 - ((tMaxDelay - obj_Soul_Parent.tdelay) / tMaxDelay)

draw_sprite_ext(spr_Astral_Indicator,0,_x,_y,_sc,_sc,0,c_white,1);

draw_sprite_part_ext(
    spr_Astral_Indicator,1,0,
    27 * tpercent,
    31,
    27,
    _x - 15 * _sc,
    _y - 13 * _sc + (27*_sc) * tpercent,
    _sc,
    _sc,
    c_white,1
)

//draw_sprite_part_ext(spr_Astral_Indicator,1,0,27 * tpercent,31,27,_x-15,_y - 13 * _sc + 27 * tpercent,_sc,_sc,c_white,1);