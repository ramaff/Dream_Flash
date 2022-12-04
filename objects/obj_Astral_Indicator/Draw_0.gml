var tMaxDelay = (120 - obj_Soul_Parent.tdelayconservation) / ((40 + global.soulperception + global.soulperceptionTemp) / 40) / obj_Soul_Parent.tdelayconservationfactor;

var tpercent = 100 * ((tMaxDelay - obj_Soul_Parent.tdelay) / tMaxDelay);

draw_sprite(spr_Astral_Indicator,0,x,y);
draw_sprite_part(spr_Astral_Indicator,1,0,27 * (1 - (tpercent / 100)),31,27,x-15,y - 13 + 27 * (1 - (tpercent / 100)));

