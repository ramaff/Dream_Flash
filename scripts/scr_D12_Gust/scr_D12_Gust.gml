function scr_D12_Gust() {
	// Location Soul Item Step Before Event

	if global.D[12] > 0 and sWindGustTime > 0 {
	    var _suckpow = (20 + (30 * global.D[12])) * (1 + global.teleportboost);
	    scr_Enemy_Bullet_Suck(-_suckpow);
	}
}
