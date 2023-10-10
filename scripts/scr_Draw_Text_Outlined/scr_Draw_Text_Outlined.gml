function scr_Draw_Text_Outlined() {
	//draw_text_outlined(x, y, outline color, string color, string)  
	var xx,yy;  
	xx = argument[0];  
	yy = argument[1];  

	//Outline  
	draw_set_color(argument[2]);  
	draw_text(xx+1, yy+1, string_hash_to_newline(argument[4]));  
	draw_text(xx-1, yy-1, string_hash_to_newline(argument[4]));  
	draw_text(xx,   yy+1, string_hash_to_newline(argument[4]));  
	draw_text(xx+1,   yy, string_hash_to_newline(argument[4]));  
	draw_text(xx,   yy-1, string_hash_to_newline(argument[4]));  
	draw_text(xx-1,   yy, string_hash_to_newline(argument[4]));  
	draw_text(xx-1, yy+1, string_hash_to_newline(argument[4]));  
	draw_text(xx+1, yy-1, string_hash_to_newline(argument[4]));
	draw_text(xx+2, yy+2, string_hash_to_newline(argument[4]));
	draw_text(xx+1, yy+2, string_hash_to_newline(argument[4]));
	draw_text(xx+2, yy+1, string_hash_to_newline(argument[4]));

	//Text  
	draw_set_color(argument[3]);  
	draw_text(xx, yy, string_hash_to_newline(argument[4]));  



}
