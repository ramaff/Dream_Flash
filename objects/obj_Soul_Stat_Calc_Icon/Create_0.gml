vis = 0;

basehp = (20 * ((10 + global.soulhpfactor) / 10) + global.soulhpadd + ((global.soulvitality + global.soulvitalityTemp) / 4));
regenhp = (60 / 200) * global.soulhealthregenfactor * ((10 + global.soulhealthregenadd) / 10) * ((40 + global.soulvitality + global.soulvitalityTemp) / 40) / ((60 + (global.soulloathing + global.soulloathingTemp)) / 60) * ((200 + (global.soulhope + global.soulhopeTemp)) / 200) * ((160 + (global.soulbliss + global.soulblissTemp)) / 160);  
defense = global.souldefenseadd + ((global.soulvanity + global.soulvanityTemp) / 20) + ((global.soulbliss + global.soulblissTemp) / 20) - ((global.souldespair + global.souldespairTemp) / 20);

basepow = ((10 + global.soulpowerfactor) / 10) * global.soulpower / 10 * scr_Class_Stat_Damage_Multiplier();
powadd = global.soulpoweradd;

baseep = global.soulmaxenergy + (1.25 * (global.soulessence + global.soulessenceTemp));
var baseESSCALC = ((120 + global.soulbliss) / 120) * ((10 + global.soulenergyregenfactor) / 10);
regenep = (0.5 * 60) * baseESSCALC * ((60 + global.soulessence + global.soulessenceTemp) / 60) * ((120 + global.soulbliss + global.soulblissTemp) / 120); 
if instance_exists(obj_Soul_Parent) {
	regenep = regenep * obj_Soul_Parent.energyregenfactor;	
}

soulspeed = 1 * global.soulmovementspeed * ((10 + global.soulmovementfactor) / 10) * ((80 + global.souldexterity + global.souldexterityTemp) / 80);
basefirerate = 1 * global.souldelayconservationfactor * ((160 + global.souldexterity + global.souldexterityTemp) / 160) * ((200 + global.soulvanity + global.soulvanityTemp) / 200);	
if instance_exists(obj_Soul_Parent) {
	basefirerate = basefirerate * obj_Soul_Parent.sdelayregenfactor;	
}

teleCost = (40 - global.teleportenergyconservation) / ((160 + global.soulperception + global.soulperceptionTemp) / 160) / (global.teleportenergyconservationfactor);
teleSpeed = (120 - global.teleportdelayconservation) / ((40 + global.soulperception + global.soulperceptionTemp) / 40) / (global.teleportdelayconservationfactor);
essCost = ((global.soulperception + global.soulperceptionTemp) / 160) + ((global.soulenergyconservationfactor - 1));