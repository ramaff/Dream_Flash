// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Location Soul Step Before
function scr_OC05(){

	if global.OC[5] > 0 {
		var convergeSpeed = 1.25 * (1 + global.OC[5]);
		var tunnelAngleTarget = point_direction(x,y,mouse_x,mouse_y);
		global.Tunnel_Vision_Angle = scr_Angle_Converge(global.Tunnel_Vision_Angle, tunnelAngleTarget, convergeSpeed)
		var xx = x;
		var yy = y;
		var tangle = global.Tunnel_Vision_Angle;
		
		//var convergeVelocity = convergeSpeed * 0.4;
		var convergeLerpSpeed = convergeSpeed * 0.002
		
		with (obj_Projectile_Parent) {
			if shotmelee == 0 {
				var dist = shotspeed * (shotexisttime);
				var tarPositionX = xx + lengthdir_x(dist, tangle)
				var tarPositionY = yy + lengthdir_y(dist, tangle)
				
				var lerp_amount = convergeLerpSpeed * speed;
				//var converge_amount = convergeVelocity * speed;
				
				x = lerp(x, tarPositionX, lerp_amount)
				y = lerp(y, tarPositionY, lerp_amount)
				//x = scr_Converge(x, tarPositionX, converge_amount)
				//y = scr_Converge(y, tarPositionY, converge_amount)
				
				
			}
		}
	}
}