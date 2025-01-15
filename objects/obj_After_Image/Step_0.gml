if half_time {
	if alarm[0] > max_time / 2 {
		exit;	
	}
}

if shrinking {
	size -= size / max(1, alarm[0]);
	image_xscale = size;
	image_yscale = size;
}
if fading {
	image_alpha -= image_alpha / max(1, alarm[0]);
}