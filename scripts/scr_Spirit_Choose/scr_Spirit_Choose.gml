function scr_Spirit_Choose(_isbad) {
	var bossform = BOSS_TYPE.MASKED_HOPE_SPIRIT;

	if _isbad{
	    bossform = choose(BOSS_TYPE.MASKED_LOATHING_SPIRIT,BOSS_TYPE.MASKED_PARANOIA_SPIRIT,BOSS_TYPE.MASKED_DESPAIR_SPIRIT);
	}
    else {
    	bossform = choose(BOSS_TYPE.MASKED_HOPE_SPIRIT,BOSS_TYPE.MASKED_BLISS_SPIRIT,BOSS_TYPE.MASKED_VANITY_SPIRIT);
    }

	global.champ = 0

	return scr_Get_Boss_Object(bossform)
}
