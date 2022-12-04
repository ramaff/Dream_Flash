image_alpha -= 1 / (50 + 50 * global.E[14]);

scr_Soul_Particle_Step();
scr_Soul_Status_Step();

scr_Beam_Step();

var dx = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var dy = keyboard_check(ord("S")) - keyboard_check(ord("W"));

if ((dx != 0) or (dy != 0))
{
    var l = sqrt(dx*dx + dy*dy);
    dx /= l;
    dy /= l;
    energyregenfactor = 0.8 * ((120 + global.soulbliss) / 120) * ((10 + senergyregenfactor) / 10);
} else {
    energyregenfactor = 1 * ((120 + global.soulbliss) / 120) * ((10 + senergyidleregenfactor) / 10) * ((10 + senergyregenfactor) / 10);
}

image_speed = 0;
if dx > 0 {
    image_index = 0;
} 
if dx < 0 {
    image_index = 1;
}

if senergy > smaxenergy {
    senergy = smaxenergy;
}
sdelay -= sdelayregenfactor;
if sdelay < 0 {
    sdelay = 0;
}
if senergy < 0 {
    senergy = 0;
}

