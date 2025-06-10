// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Location Soul Step Before
function scr_OC05(){

	var convergeSpeed = 0.6 + (0.9 * global.OC[5]);
	var tunnelAngleTarget = point_direction(x,y,mouse_x,mouse_y);
	global.Tunnel_Vision_Angle = scr_Angle_Converge(global.Tunnel_Vision_Angle, tunnelAngleTarget, convergeSpeed)
		
	//Print_DF("tunnelAngleTarget: " + string(tunnelAngleTarget))
	//Print_DF("global.TunnelAngleTarget: " + string(global.Tunnel_Vision_Angle))
		
	var xx = x;
	var yy = y;
	var tangle = global.Tunnel_Vision_Angle;
		
	//var convergeVelocity = convergeSpeed * 0.4;
	var convergeLerpSpeed = convergeSpeed * 0.0125
		
	with (obj_Projectile_Parent) {
		if shot_stats.Shot_Melee == 0 {
			var dist = shot_stats.Shot_Speed * (shot_stats.Shot_Exist_Time);
			var tarPositionX = xx + lengthdir_x(dist, tangle)
			var tarPositionY = yy + lengthdir_y(dist, tangle)
				
			var lerp_amount = convergeLerpSpeed * speed;
				
			x = lerp(x, tarPositionX, lerp_amount)
			y = lerp(y, tarPositionY, lerp_amount)
				
				
		}
	}

}