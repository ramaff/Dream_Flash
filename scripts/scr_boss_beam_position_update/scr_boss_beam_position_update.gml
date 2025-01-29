// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_boss_beam_position_update(){
	if instance_exists(seg_tail) {
		var _actual_tail_angle = seg_tail.seg_angle + seg_tail.seg_angle_displacement
		if seg_angle != _actual_tail_angle {
			seg_angle = _actual_tail_angle// - seg_angle_displacement
			//_actual_tail_angle = seg_tail.seg_angle
		}
		var _xx = lengthdir_x(seg_tail.seg_distance, _actual_tail_angle)
		var _yy = lengthdir_y(seg_tail.seg_distance, _actual_tail_angle)
	
		x = seg_tail.x + _xx;
		y = seg_tail.y + _yy;
		
	} else {
		if seg_angle_displacement != bullet_stats.bullet_origin.image_angle and bullet_stats.bullet_direction_angle = 1 {
			seg_angle_displacement = bullet_stats.bullet_origin.image_angle;
		}
		x = bullet_stats.bullet_origin.x + bullet_stats.boss_xoffset;
		y = bullet_stats.bullet_origin.y + bullet_stats.boss_yoffset;
	}
	image_angle = seg_angle//+ seg_angle_displacement; // don't turn this shit back on
}