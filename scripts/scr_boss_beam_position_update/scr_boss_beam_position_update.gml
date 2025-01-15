// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_boss_beam_position_update(){
	if instance_exists(seg_tail) {
		if seg_angle != seg_tail.seg_angle {
			seg_angle = seg_tail.seg_angle
		}
		var _xx = lengthdir_x(seg_tail.seg_distance, seg_tail.seg_angle)
		var _yy = lengthdir_y(seg_tail.seg_distance, seg_tail.seg_angle)
	
		x = seg_tail.x + _xx;
		y = seg_tail.y + _yy;
		
		image_xscale = seg_tail.image_xscale;
		image_yscale = seg_tail.image_yscale;
	} else {
		x = bullet_stats.bullet_origin.x	
		y = bullet_stats.bullet_origin.y
	}
	image_angle = seg_angle;
}