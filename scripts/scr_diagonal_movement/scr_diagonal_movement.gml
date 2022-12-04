function scr_diagonal_movement() {
	var dx = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	var dy = keyboard_check(ord("S")) - keyboard_check(ord("W"));

	if ((dx != 0) or (dy != 0))
	{
	  var l = sqrt(dx*dx + dy*dy);
	  dx /= l;
	  dy /= l;
	}

	x += dx * 4;
	y += dy * 4;



}
