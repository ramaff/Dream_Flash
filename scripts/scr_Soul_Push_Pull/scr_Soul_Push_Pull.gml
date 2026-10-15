function scr_Soul_Push_Pull(suckSpeed) {
    var _x = x
    var _y = y
    
    with (obj_Soul) {
        var suckAngle = point_direction(x,y,_x,_y);
        
        x += lengthdir_x(suckSpeed, suckAngle);
        y += lengthdir_y(suckSpeed, suckAngle);
        
    }
    
    with (obj_Projectile_Parent) {
        var suckAngle = point_direction(x,y,_x,_y);
        
        x += lengthdir_x(suckSpeed, suckAngle);
        y += lengthdir_y(suckSpeed, suckAngle);
        
    }
    
    with (obj_Bullet_Parent) {
        if id == other.id {
            exit;	
        }
        var suckAngle = point_direction(x,y,_x,_y);
        
        x += lengthdir_x(suckSpeed, suckAngle);
        y += lengthdir_y(suckSpeed, suckAngle);
        
    }
}
