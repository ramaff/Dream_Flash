/// @description Insert description here
// You can write your code in this editor
if instance_exists(target) {
	var dis = point_distance(x, y, target.x, target.y)
	if dis > dist {
		direction = point_direction(x, y, target.x, target.y);
		speed = (dis - dist) / 30;
	} else {
		speed = lerp(speed, 0, 0.3);
	}
	
	sprite_index = target.sprite_index;
	image_index = target.image_index;
	image_xscale = target.image_xscale;
	image_yscale = target.image_yscale;
	image_alpha = target.image_alpha - 0.25;
} else {
	speed = lerp(speed, 0, 0.3);
	instance_destroy();
}