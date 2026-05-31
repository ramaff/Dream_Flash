
// I got this online somewhere a long time ago
function scr_Draw_Text_Outlined(_xx, _yy, _outline_color, _text_color, _text) {

	//Outline  
	draw_set_color(_outline_color);  
	//draw_text(_xx-1, _yy-1, _text);  
	//draw_text(_xx, _yy-1, _text); 
	draw_text(_xx-1, _yy, _text);  
	draw_text(_xx-1, _yy+1, _text); 
	draw_text(_xx+1, _yy-1, _text); 
	
	draw_text(_xx, _yy+2, _text);  
	draw_text(_xx+2, _yy, _text);  
	draw_text(_xx+2, _yy+2, _text);

	//Text  
	draw_set_color(_text_color);  
	draw_text(_xx, _yy, _text);  



}
