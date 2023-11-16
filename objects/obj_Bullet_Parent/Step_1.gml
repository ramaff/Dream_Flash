	
if bulletfade = 0 {
	exit;
}
	
if alarm[0] <= 15 {
	bulletpower = 0;
	
	image_xscale -= image_xscale / alarm[0]
	image_yscale -= image_yscale / alarm[0]

} 