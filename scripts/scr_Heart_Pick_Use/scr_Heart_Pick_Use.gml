function scr_Heart_Pick_Use() {
	scr_Heart_Reactions();

	shealth -= 1;

	with(obj_Boss_Parent) {
		var dmg = (20 + other.spoweradd) * ((10 + other.spowerfactor + other.sattackfactorbuffamount) / 10) * other.spower / 10 * ((60 + global.soulstrength + global.soulstrengthTemp) / 60);
		bosshealth -= dmg;	
		with instance_create(x,y,obj_Damage_Indicator) {
		        element = 0;
		        damageIndication = dmg;
		        textSize = 1;
		        direction = 90;
		        speed = 1 + (other.speed / 6) + random(0.05)
		        friction = 0.01 + (other.speed / 600)
		        alarm[0] = 30 + irandom(3);
			}
	}


}
