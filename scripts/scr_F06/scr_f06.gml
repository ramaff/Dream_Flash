function scr_F06(dmg) {
	// Location Soul Hit by Bullet Event

	if global.F[6] > 0 {
	    obj_Soul_Parent.sstatecharge += dmg * global.F[6];
	}
}
