//depth = -1000;

var camX = camera_get_view_x(view);
var camY = camera_get_view_y(view);

if (Pause_Control.pause) {

	//depth = -1;
    draw_set_colour(c_black);
    draw_rectangle(0,0,room_width,room_height,0);
    draw_set_halign(fa_center);
	
	with obj_State_Menu_Button {
		event_perform(ev_draw,0);
	}
	with obj_Back_To_Soul_Menu_Button {
		event_perform(ev_draw,0);
	}
	draw_set_colour(c_white);
	draw_text(camX + 764,camY + 36, "Switch to Soul Menu:");
	
	var cX = camX + 64;
	var cY = camY + 192;
	
	snakedis = global.snakeprogress;
	beastdis = global.beastprogress;
	mechdis = global.mechprogress;
	scrubdis = global.scrubprogress;
	spikedis = global.spikeprogress;
	bleedingdis = global.bleedingprogress;
	castingdis = global.castingprogress;
	ascendingdis = global.ascendingprogress;
	
	scr_State_Stat_Credits();
	
	/*snakeprog += 0.5 * floor((global.souldexterity + global.soulperception) / 20);
	beastprog += 0.5 * floor((global.soulstrength + global.soulvitality) / 20);
	mechprog += 0.5 * floor((global.soulvitality + global.soulessence) / 20);
	scrubprog += 0.5 * floor((global.soulvitality + global.souldexterity) / 20);
	spikeprog += 0.5 * floor((global.soulessence + global.souldexterity) / 20);
	bleedingprog += 0.5 * floor((global.soulstrength + global.souldexterity) / 20);
	castingprog += 0.5 * floor((global.soulvitality + global.soulperception) / 20);
	ascendingprog += 0.5 * floor((global.soulessence + global.soulperception) / 20); */
    
    draw_sprite_ext(spr_Snake_Soul_Reco_Icon,0,cX,cY,0.4,0.4,0,c_white,1);
	draw_sprite(spr_State_Reco_Prog,0,cX + 64,cY - 64);
    draw_sprite_part(spr_State_Reco_Prog,1,0,0,224 * (snakedis / 3),80,cX + 64,cY - 64);	
	
	cY += 96;
	
	draw_sprite_ext(spr_Beast_Soul_Reco_Icon,0,cX,cY,0.4,0.4,0,c_white,1);
	draw_sprite(spr_State_Reco_Prog,0,cX + 64,cY - 64);
    draw_sprite_part(spr_State_Reco_Prog,1,0,0,224 * (beastdis / 3),80,cX + 64,cY - 64);	
	
	cY += 96;
	
	draw_sprite_ext(spr_Mechanical_Soul_Reco_Icon,0,cX,cY,0.4,0.4,0,c_white,1);
	draw_sprite(spr_State_Reco_Prog,0,cX + 64,cY - 64);
    draw_sprite_part(spr_State_Reco_Prog,1,0,0,224 * (mechdis / 3),80,cX + 64,cY - 64);	
	
	cY += 96;
	
	draw_sprite_ext(spr_Scrub_Soul_Reco_Icon,0,cX,cY,0.4,0.4,0,c_white,1);
	draw_sprite(spr_State_Reco_Prog,0,cX + 64,cY - 64);
    draw_sprite_part(spr_State_Reco_Prog,1,0,0,224 * (scrubdis / 3),80,cX + 64,cY - 64);	
	
	cX = camX + 448;
	cY = camY + 192;
	
	draw_sprite_ext(spr_Spike_State_Reco_Icon,0,cX,cY,0.4,0.4,0,c_white,1);
	draw_sprite(spr_State_Reco_Prog,0,cX + 64,cY - 64);
    draw_sprite_part(spr_State_Reco_Prog,1,0,0,224 * (spikedis / 3),80,cX + 64,cY - 64);	
	
	cY += 96;
	
	draw_sprite_ext(spr_Bleeding_Soul_Reco_icon,0,cX,cY,0.4,0.4,0,c_white,1);
	draw_sprite(spr_State_Reco_Prog,0,cX + 64,cY - 64);
    draw_sprite_part(spr_State_Reco_Prog,1,0,0,224 * (bleedingdis / 3),80,cX + 64,cY - 64);	
	
	cY += 96;
	
	draw_sprite_ext(spr_Casting_Soul_Reco_Icon,0,cX,cY,0.4,0.4,0,c_white,1);
	draw_sprite(spr_State_Reco_Prog,0,cX + 64,cY - 64);
    draw_sprite_part(spr_State_Reco_Prog,1,0,0,224 * (castingdis / 3),80,cX + 64,cY - 64);	
	
	cY += 96;
	
	draw_sprite_ext(spr_Ascending_Soul_Reco_Icon,0,cX,cY,0.4,0.4,0,c_white,1);
	draw_sprite(spr_State_Reco_Prog,0,cX + 64,cY - 64);
    draw_sprite_part(spr_State_Reco_Prog,1,0,0,224 * (ascendingdis / 3),80,cX + 64,cY - 64);	
    
    //draw_sprite(spr_Soul_Menu_Essence,0,view_xview + 896,view_yview + 152);

}

