/// @description Insert description here
// You can write your code in this editor

draw_set_font(Dream_Flash_Font)

draw_sprite_ext(spr_Menu_Big_Cloud,0,x,y,1,1,0,c_white,note_alpha);

draw_text_ext_color(x-256,y+144,string_hash_to_newline("Page " + string(current_page) + "/" + string(final_page)),40,400,c_black,c_black,c_black,c_black,note_alpha);

draw_sprite_ext(spr_Tutorial_Arrow,0,x+256,y+144,1,1,0,c_white,note_alpha);

note_alpha += 0.05;

if current_page >= 1 and current_page <= final_page {
    if text_alpha <= 1 and note_alpha >= 1 {
        text_alpha += 0.02;
    }
    draw_sprite_ext(tutorial_sprite,current_page-1,x,y-128,0.5,0.5,0,c_white,text_alpha);
    draw_text_ext_color(x,y-32,tutorial_text[current_page-1],40,400,c_black,c_black,c_black,c_black,text_alpha);
}
