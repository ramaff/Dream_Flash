vis = 0;

basehp = (20 * ((10 + global.soulhpfactor) / 10) + global.soulhpadd + scr_Class_Stat_Health_Cap_Increase());
regenhp = (60 / 200) * global.soulhealthregenfactor * ((10 + global.soulhealthregenadd) / 10) * scr_Class_Stat_Health_Regen_Multiplier();  
defense = global.souldefenseadd + scr_Class_Stat_Defense_Increase();

basepow = ((10 + global.soulpowerfactor) / 10) * global.soulpower / 10 * scr_Class_Stat_Damage_Multiplier();
powadd = global.soulpoweradd;

baseep = global.soulmaxenergy + scr_Class_Stat_Essence_Cap_Increase();
regenep = (0.5 * 60) * ((10 + global.soulenergyregenfactor) / 10) * scr_Class_Stat_Essence_Regen_Multiplier(); 
if instance_exists(obj_Soul_Parent) {
	regenep = regenep * obj_Soul_Parent.senergyregenfactor;	
}

soulspeed = 1 * global.soulmovementspeed * ((10 + global.soulmovementfactor) / 10) * scr_Class_Stat_Movement_Speed_Multiplier();
basefirerate = 1 * global.souldelayconservationfactor * scr_Class_Stat_Firerate_Multiplier();	
if instance_exists(obj_Soul_Parent) {
	basefirerate = basefirerate * obj_Soul_Parent.sdelayregenfactor;	
}

teleCost = (40 - global.teleportenergyconservation) / scr_Class_Stat_Teleport_Cost_Multiplier() / (global.teleportenergyconservationfactor);
teleSpeed = (120 - global.teleportdelayconservation) / scr_Class_Stat_Teleport_Speed_Multiplier() / (global.teleportdelayconservationfactor);
essCost = (1 / (scr_Class_Stat_Weapon_Cost_Multiplier())) / (global.soulenergyconservationfactor);