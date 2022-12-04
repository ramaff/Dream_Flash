scr_Invincibility_Frames();
//scr_New_Face_Direction();

scr_Wall_Bounce();

scr_Minion_Step();

scr_Light_Follow_Soul_AI();

//Horizontal collisions
if place_meeting(x+hspeed,y,obj_The_Border) {
        while !place_meeting(x+sign(hspeed),y,obj_The_Border) {
                 x += sign(hspeed);
        }
        hspeed = 0;
}
//x += hspeed;

//Vertical collisions
if place_meeting(x,y+vspeed,obj_The_Border) {
        while !place_meeting(x,y+sign(vspeed),obj_The_Border) {
                 y += sign(vspeed);
        }
        vspeed = 0;
}
//y += vspeed;

