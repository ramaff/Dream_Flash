// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Location Soul Step Before
function scr_OC05(){

	if global.OC[5] > 0 {
		var convergeSpeed = 2 * global.OC[5];
		var tunnelAngleTarget = point_direction(x,y,mouse_x,mouse_y);
		global.Tunnel_Vision_Angle = scr_Angle_Converge(global.Tunnel_Vision_Angle, tunnelAngleTarget, convergeSpeed)
		var xx = x;
		var yy = y;
		var tangle = global.Tunnel_Vision_Angle;
		
		with (obj_Projectile_Parent) {
			if shotmelee == 0 {
				var dist = shotspeed * (shotexisttime);
				var tarPositionX = xx + lengthdir_x(dist, tangle)
				var tarPositionY = yy + lengthdir_y(dist, tangle)
				
				//x = tarPositionX;
				//y = tarPositionY;
				
				//x = scr_Converge(x, tarPositionX, shotspeed);
				//y = scr_Converge(y, tarPositionY, shotspeed);
				
				x = lerp(x, tarPositionX, 0.05 * speed)
				y = lerp(y, tarPositionY, 0.05 * speed)
				
				
				/*var sdist = point_distance(x,y,xx,yy)
				var dir = point_direction(x,y,xx,yy) + 180;
				if sdist < dist {
					//x += lengthdir_x(shotspeed, dir);
					//y += lengthdir_y(shotspeed, dir);
					//x = lerp(x, tarPositionX, 0.5)
					//y = lerp(y, tarPositionY, 0.5)
				}*/
				
				
			}
		}
	}
}