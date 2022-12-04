function scr_Persistent_Stat_Check() {
	global.chaptertime++;

	if instance_exists(obj_Boss_Parent) {
		global.glasstime++;	
	}

	if global.souldespair > 40 {
		global.souldespair = 40;	
	}
	if global.soulparanoia > 40 {
		global.soulparanoia = 40;	
	}
	if global.soulloathing > 40 {
		global.soulloathing = 40;	
	}

	if global.soulhope > 40 {
		global.soulhope = 40;	
	}
	if global.soulbliss > 40 {
		global.soulbliss = 40;	
	}
	if global.soulvanity > 40 {
		global.soulvanity = 40;	
	}

	if global.soulstrength > 120 {
		global.soulstrength = 120;	
	}
	if global.soulvitality > 120 {
		global.soulvitality = 120;	
	}
	if global.soulessence > 120 {
		global.soulessence = 120;	
	}
	if global.souldexterity > 120 {
		global.souldexterity = 120;	
	}
	if global.soulperception > 120 {
		global.soulperception = 120;	
	}
	if global.soulstate > 120 {
		global.soulstate = 120;	
	}
	
	/*
	for(i = 1; i <= 999; i++) {
	    if global.Weap[i] > 10 {
			global.Weap[i] = 10;	
		}
	}
	
	for(i = 1; i <= 99; i++) {
	    if global.A[i] > 10 {
			global.A[i] = 10;	
		}
		if global.B[i] > 10 {
			global.B[i] = 10;	
		}
		if global.C[i] > 10 {
			global.C[i] = 10;	
		}
		if global.D[i] > 10 {
			global.D[i] = 10;	
		}
		if global.E[i] > 10 {
			global.E[i] = 10;	
		}
		if global.F[i] > 10 {
			global.F[i] = 10;	
		}
		if global.G[i] > 10 {
			global.G[i] = 10;	
		}
		if global.H[i] > 10 {
			global.H[i] = 10;	
		}
		if global.J[i] > 10 {
			global.J[i] = 10;	
		}
		if global.K[i] > 10 {
			global.K[i] = 10;	
		}
		if global.L[i] > 10 {
			global.L[i] = 10;	
		}
		if global.M[i] > 10 {
			global.M[i] = 10;	
		}
		if global.P[i] > 10 {
			global.P[i] = 10;	
		}
		if global.R[i] > 10 {
			global.R[i] = 10;	
		}
		if global.S[i] > 10 {
			global.S[i] = 10;	
		}
		if global.T[i] > 10 {
			global.T[i] = 10;	
		}
		if global.U[i] > 10 {
			global.U[i] = 10;	
		}
		if global.V[i] > 10 {
			global.V[i] = 10;	
		}
		if global.W[i] > 10 {
			global.W[i] = 10;	
		}
	}
	*/

	//global.soulflash = 99;


}
