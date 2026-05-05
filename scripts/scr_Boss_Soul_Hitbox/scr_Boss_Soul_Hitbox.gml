// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Boss_Soul_Hitbox(_hitbox_sprite = sprite_index, _hitbox_index = image_index){
	if instance_exists(obj_Boss_Overlay) {
		with(obj_Boss_Overlay) {
			if bossd = other.id {
				other.state = states.phasing;
			}
		}
	}
	if state = states.phasing {
		speed = 0;
		//path_speed = 0;
	}
	if state = states.normal || (state = states.jumping and boss_height < 10)  || (state = states.leaping and boss_height < 10) {
		with instance_create_depth(x,y,depth,obj_Boss_Soul_Hitbox) {
			sprite_index = _hitbox_sprite;
			image_xscale = other.image_xscale * 0.75;
			image_yscale = other.image_yscale * 0.75;
			image_index = _hitbox_index;
		
			bossid = other.id;
			speed = other.speed;
			direction = other.direction;
			image_angle = other.image_angle;
		
			alarm[0] = 1;
		}
	}
	
}