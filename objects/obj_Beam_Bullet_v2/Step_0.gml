/// @description Insert description here
// You can write your code in this editor
	//if bulletblend != 0 {
	//	scr_Bullet_Blend(bulletblend);	
	//}

if image_index < 8 || image_index >= 11 {
	bulletpower = 0;	
} else {
	bulletpower = global.stagedamage;	
}

if alarm[0] > 10 and image_index >= 10 {
	image_index = 10
}

if instance_exists(seg_tail) {
	if seg_angle != seg_tail.seg_angle {
		seg_angle = seg_tail.seg_angle
		image_angle = seg_angle;
	}
	var _xx = lengthdir_x(seg_tail.seg_distance, seg_tail.seg_angle)
	var _yy = lengthdir_y(seg_tail.seg_distance, seg_tail.seg_angle)
	
	x = seg_tail.x + _xx;
	y = seg_tail.y + _yy;
}
