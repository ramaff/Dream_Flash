function scr_Soul_Stats_Setup() {
	Charge_Hold = 0;
	Charge_Time = 0;

	///////////////////////////////////////////////
	///////////////// Temp Effects ////////////////
	///////////////////////////////////////////////

	sdefensebuffduration = 0;
	sdefensebuffamount = 0;
	sattackfactorbuffduration = 0;
	sattackfactorbuffamount = 0;
	sregenfactorbuffduration = 0;
	sregenfactorbuffamount = 0;
	smovementfactorbuffduration = 0;
	smovementfactorbuffamount = 0;
	sfireratefactorbuffduration = 0;
	sfireratefactorbuffamount = 0;

	smovefactor = 1;
	currentenergyregenfactor = 1;

	sstrength = global.soulstrength;
	svitality = global.soulvitality;
	sessence = global.soulessence;
	sdexterity = global.souldexterity;
	sperception = global.soulperception;
	sstate = global.soulstate;

	shearts = global.soulhearts;
	shealth = global.soulhealth;
	smaxhealth = global.soulmaxhealth;
	shealthregenfactor = global.soulhealthregenfactor;
	shealthidleregenfactor = global.soulhealthidleregenfactor;

	tdelay = global.teleportdelay
	tdelayregenfactor = global.teleportdelayregenfactor;
	tdelayconservationfactor = global.teleportdelayconservationfactor;
	tdelayconservation = global.teleportdelayconservation;

	tenergyconservationfactor = global.teleportenergyconservationfactor;
	tenergyconservation = global.teleportenergyconservation;

	senergy = global.soulmaxenergy;
	smaxenergy = global.soulmaxenergy;
	senergyregenfactor = global.soulenergyregenfactor;
	senergyidleregenfactor = global.soulenergyidleregenfactor;
	senergyconservationfactor = global.soulenergyconservationfactor;
	senergyconservation = global.soulenergyconservation;

	sdelay = global.souldelay;
	sdelayregenfactor = global.souldelayregenfactor;
	sdelayidleregenfactor = global.souldelayidleregenfactor;
	sdelayconservationfactor = global.souldelayconservationfactor;
	sdelayconservation = global.souldelayconservation;

	sstatecharge = global.soulstatecharge;
	smaxstate = global.soulmaxstate;
	sstateregenfactor = global.soulstateregenfactor;
	sstatedrainrate = global.soulstatedrainrate;
	statepoweruptime = global.soulstatepoweruptime;
	
	sstatepower = global.soulstatepower;
	sstatefirerate = global.soulstatefirerate;
	sstateshotspeed = global.soulstateshotspeed;
	
	stransformedstate = global.soultransformedstate;
	scurrentstate = global.currentstate;

	sknockbackdefense = global.soulknockbackdefense;
	sknockbackforce = global.soulknockbackforce;
	scontactdamage = global.soulcontactdamage;

	spower = global.soulpower;
	spoweraddition = global.soulpoweraddition;
	smovementspeed = global.soulmovementspeed;
	smovementfactor = global.soulmovementfactor;
	sshotspeed = global.soulshotspeed;
	sshotspeedaddition = global.soulshotspeedaddition;
	sshotspeedfactor = global.soulshotspeedfactor;
	sshotknockback = global.soulshotknockback;
	sshotknockbackaddition = global.soulshotknockbackaddition;
	sshotlifefactor = global.soulshotlifefactor;

	saccuracy = global.soulaccuracy;
	ssize = global.soulsize;

	/////////////////////////Other Soul Stats

	spoweradd = global.soulpoweradd;
	spowerfactor = global.soulpowerfactor;

	shealthregenadd = global.soulhealthregenadd;

	sarmourpierce = global.soularmourpierce;
	sarmourfactor = global.soularmourfactor;

	shpadd = global.soulhpadd;
	shpfactor = global.soulhpfactor;

	sdefenseadd = global.souldefenseadd;
	sdefensefactor = global.souldefensefactor;

	sshotpierce = global.soulshotpierce;

	sshotsizefactor = global.soulshotsizefactor;
	scritadd = global.soulcritadd;
	scritaddchance = global.soulcritaddchance;
	scontactdefenseadd = global.soulcontactdefenseadd;
	scontactdefensefactor = global.soulcontactdefensefactor;
	sshotamountadd = global.soulshotamountadd;
	sshotamountaddchance = global.soulshotamountaddchance;

	scontactdamageadd = global.soulcontactdamageadd;
	sdamagereduction = global.souldamagereduction;
	
	sheartboost = global.soulheartboost;

	//tboost = global.teleportboost;
	
	// item releated stuff
	cant_help = 0
	
	scr_Set_Soul_Scripts(id)
	soul_step_status_effects = {}
	soul_status_effects = {}
	soul_draw_status_effects = {}


}
