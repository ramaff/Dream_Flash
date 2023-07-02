plusStr = "";
var dmgIndication = damageIndication;
var addIndication = additiveIndication;
if global.gameDamageDisplay = 1 {
    f = frac(damageIndication);
    dmgIndication = damageIndication - f;
	addIndication = addIndication - frac(addIndication)
    if(f > 0) {
        plusStr = "+";
    }
}

if addIndication <= 0 {
	str = string(dmgIndication) + plusStr;
} else {
	str = string(dmgIndication) + "+" + string(addIndication) + plusStr;	
}

draw_set_font(Damage_Font);

if textSize = 0 {
    draw_set_font(Weak_Damage_Font);
}
if textSize = 2 {
    draw_set_font(Strong_Damage_Font);
}
if textSize = 3 {
    draw_set_font(Crit_Font);
}
if textSize >= 4 {
    draw_set_font(Big_Crit_Font);
}

if element = 0 {
elementcolor = c_white;
}
if element = 1 {
elementcolor = c_red;
}
if element = 2 {
elementcolor = c_orange;
}
if element = 3 {
elementcolor = c_fuchsia;
}
if element = 4 {
elementcolor = c_yellow;
}
if element = 5 {
elementcolor = c_lime;
}
if element = 6 {
elementcolor = c_fuchsia;
}
if element = 7 {
elementcolor = c_aqua;
}

if global.gameDamageDisplay != 0 {
    scr_Draw_Text_Outlined(x,y,c_black,elementcolor,str);
}

