if !instance_exists(target) {
    instance_destroy();
	exit;
}
x = target.x;
y = target.y;
lightstrength = target.image_alpha;