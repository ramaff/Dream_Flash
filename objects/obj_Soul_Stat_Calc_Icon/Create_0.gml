vis = 0;

basehp = (20 * ((10 + global.soulhpfactor) / 10) + global.soulhpadd);
regenhp = (60 / 200) * global.soulhealthregenfactor * ((10 + global.soulhealthregenadd) / 10);  
defense = global.souldefenseadd;

basepow = ((10 + global.soulpowerfactor) / 10) * global.soulpower / 10;
powadd = global.soulpoweradd;

baseep = global.soulmaxenergy;
regenep = (0.5 * 60) * ((10 + global.soulenergyregenfactor) / 10); 
if instance_exists(obj_Soul_Parent) {
	regenep = regenep * obj_Soul_Parent.senergyregenfactor;	
}

soulspeed = 1 * global.soulmovementspeed * ((10 + global.soulmovementfactor) / 10);
basefirerate = 1 * global.souldelayconservationfactor;	
if instance_exists(obj_Soul_Parent) {
	basefirerate = basefirerate * obj_Soul_Parent.sdelayregenfactor;	
}

teleCost = (40 - global.teleportenergyconservation) / (global.teleportenergyconservationfactor);
teleSpeed = (120 - global.teleportdelayconservation) / (global.teleportdelayconservationfactor);
essCost = (1) / (global.soulenergyconservationfactor);