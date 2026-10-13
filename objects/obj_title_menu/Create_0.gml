global.bosscount = 0
global.bossval = 0
global.currentchapter = 1
global.currentroom = 0

global.spiritRoom = -1
global.evilSpiritRoom = -1

repeat(20 + irandom(5)) {
    instance_create(random(room_width),random(room_height),obj_Flash_Sparkle)
}

depth = -100

var _full_version_string = scr_Build_Full_Version()
version_text = string_hash_to_newline("Dream Flash Demo " + _full_version_string)

enum TITLE_MENUS {
    MAIN,
    CREDITS,
    SETTINGS,
    PLAY
}

instance_create_depth(-64,-64, depth - 9999, obj_Dream_Cursor);

menu_main = {
    button_sprite: spr_Title_Screen_Butts,
    button_hover_sprite: spr_Title_Screen_Butts_On,
    button_hover_sound: snd_Button_Hover,
    button_click_sound: [snd_Button_Click,snd_Button_Click_2,snd_Button_Click_3],
    button_selected: -1,
    button_hover: -1,
    buttons:{
        px:688,
        py:424,
        spacing:48,
        number:4,
        actions:[-1,-1,-1,-1]
    }
}

menu_main.buttons.actions[0] = function () { 
    global.layerdeep = 2
    if !(file_exists("saverun.sav")){
        scr_Sound_Effect([snd_Button_Click, snd_Button_Click_2, snd_Button_Click_3])
        
        global.loadrun = 0
        global.startrunbuttonpress = 1
        
        instance_create(0,0,Run_Fade_Control);
        instance_create(0,0,obj_Fade);
    }
    else {
    	current_menu = TITLE_MENUS.PLAY
        gui_wait = 5 
    }
}
menu_main.buttons.actions[1] = function () { current_menu = TITLE_MENUS.SETTINGS gui_wait = 5 with instance_create_depth(0,0,depth-1,obj_new_settings_menu) {parent=other.id} }
menu_main.buttons.actions[2] = function () { current_menu = TITLE_MENUS.CREDITS gui_wait = 5 }
menu_main.buttons.actions[3] = function () { game_end() }

menu_main.step = function (){
    if using_controller == false{
        other.button_selected = -1
        var _btn = other.buttons
        var _x = _btn.px
        var _y = _btn.py
        var _yplus = _btn.spacing
        for (var i = 0; i < _btn.number; i++) {
            
            if point_in_rectangle(mouse_x,mouse_y,_x-81,_y-13,_x+81,_y+13){
                other.button_selected = i
                if other.button_hover != i{
                    other.button_hover = i
                    scr_Sound_Effect(other.button_hover_sound)
                }
                if mouse_check_button_pressed(mb_left) and gui_wait == 0{
                    _btn.actions[i]()
                    scr_Sound_Effect([snd_Button_Click, snd_Button_Click_2, snd_Button_Click_3])
                }
            }
        	
            _y += _yplus
        }
    }
    else {
        if other.button_hover != -1{
            other.button_selected = 0
        }
        
        if InputPressed(INPUT_VERB.DOWN) and other.button_selected < other.buttons.number-1{
            other.button_selected++
            scr_Sound_Effect(other.button_hover_sound)
        }
        if InputPressed(INPUT_VERB.UP) and other.button_selected > 0{
            other.button_selected--
            scr_Sound_Effect(other.button_hover_sound)
        }
        
        if InputPressed(INPUT_VERB.ACCEPT) and gui_wait == 0{
            other.buttons.actions[other.button_selected]()
            scr_Sound_Effect([snd_Button_Click, snd_Button_Click_2, snd_Button_Click_3])
        }
    	
    }
}

menu_main.draw = function (){
    var _btn = other.buttons
    var _x = _btn.px
    var _y = _btn.py
    var _yplus = _btn.spacing
    for (var i = 0; i < _btn.number; i++) {
        
        if other.button_selected == i{
            draw_sprite(other.button_hover_sprite,i,_x,_y)
        }
        else {
        	draw_sprite(other.button_sprite,i,_x,_y)
        }
    	
        _y += _yplus
    }
}

menu_credits = {
    credits_text:"CREDITS\nA Game by Ramaf Party\nMusic - Rossiter, Evie\nSound Effects - justforeating",
    credits_pos:[1376/2,64],
    credits_spacing:48,
    special_thanks_text:"SPECIAL THANKS",
    special_thanks_pos:[1376/2,256],
    thanks_left_text:"Rossiter\ndouble-pmcl-dot-net\nFrostedGH\nGarrok\nWikiTay\nChortles\nWeaz\nBob\nGunga Ginga\nMiksalok\nFiery\nEmbarr",
    thanks_left_pos:[1376/2 - 104,320],
    thanks_left_spacing:20,
    thanks_right_text:"EvieMusic\nDr. Napkins\nImperfect BL God\nFilipe Andre (H3XO)\nSheeper (The Classical)\nTripledYou\nZakoji\nCryo\nYui\nJeancarlos\nOmni\nKegg (cuthe)\nAnew Returner\nProp",
    thanks_right_pos:[1376/2 + 104,320],
    thanks_right_spacing:20,
    credits_bottom_text:"Input Developers (Juju Adams, Alynne Keith, and Friends)",
    credits_bottom_pos:[1376/2,640],
    
    album_pos:[1096,556],
    album_sprite:spr_Dream_Flash_Album_Cover_Link,
    album_selected:false,
    album_link:"https://www.youtube.com/c/Rossiter23"
}

menu_credits.draw = function (){
    draw_set_colour(c_black)
    draw_rectangle(0,0,room_width,room_height,0)
    draw_set_halign(fa_center)
    draw_set_colour(c_white)
    
    scr_Go_Back_Text()
    
    var _cred_pos = other.credits_pos
    draw_text_ext(_cred_pos[0],_cred_pos[1],other.credits_text,other.credits_spacing,999_999)
    var _spec_pos = other.special_thanks_pos
    draw_text(_spec_pos[0],_spec_pos[1],other.special_thanks_text)
    var _left_pos = other.thanks_left_pos
    draw_text_ext(_left_pos[0],_left_pos[1],other.thanks_left_text,other.thanks_left_spacing,999_999)
    var _right_pos = other.thanks_right_pos
    draw_text_ext(_right_pos[0],_right_pos[1],other.thanks_right_text,other.thanks_right_spacing,999_999)
    var _bott_pos = other.credits_bottom_pos
    draw_text(_bott_pos[0],_bott_pos[1],other.credits_bottom_text)
    
    var _album_pos = other.album_pos
    draw_sprite(other.album_sprite,other.album_selected,_album_pos[0],_album_pos[1])
}

menu_credits.step = function (){
    if using_controller == false{
         var _album_pos = other.album_pos
        if point_in_rectangle(mouse_x,mouse_y,_album_pos[0],_album_pos[1],_album_pos[0]+132,_album_pos[1]+132){
            other.album_selected = true
            if mouse_check_button_pressed(mb_left){
                url_open(other.album_link)
            }
        }
        else {
        	other.album_selected = false
        }
    }
    else {
    	other.album_selected = true
        if InputPressed(INPUT_VERB.ACTION){
            url_open(other.album_link)
        }
    }
    
    if (InputReleased(INPUT_VERB.PAUSE) || InputReleased(INPUT_VERB.CANCEL)) and gui_wait == 0 {
    	gui_wait = 5
        current_menu = TITLE_MENUS.MAIN
    }
}


play_menu = {
    top_text: "START A NEW DREAM OR CONTINUE?",
    top_pos: [room_width / 2 + 32,room_height / 2 + 32 - 140],
    button_selected: -1,
    buttons_x:[room_width / 2 + 32 - 100,room_width / 2 + 32 + 100],
    buttons_y:room_height / 2 + 96,
    buttons_text:["NEW DREAM","CONTINUE"],
    button_sprite:spr_Option_Button,
    button_hover_sprite:spr_Option_Button_On,
    button_action:[-1,-1]
}

play_menu.button_action[0] = function (){
    if file_exists("saverun.sav"){
        file_delete("saverun.sav")
    }
    
    global.loadrun = 0
    global.startrunbuttonpress = 1
    
    instance_create(0,0,Run_Fade_Control)
    instance_create(0,0,obj_Fade)
}
play_menu.button_action[1] = function (){
    global.loadrun = 1
	global.startrunbuttonpress = 1
    
    instance_create(0,0,Run_Fade_Control)
    instance_create(0,0,obj_Fade)
}
    


play_menu.step = function (){
    if using_controller == false{
        other.button_selected = -1
        
        var _y = other.buttons_y
        for (var i = 0; i < 2; i++) {
            var _x = other.buttons_x[i]
            
            if point_in_rectangle(mouse_x,mouse_y,_x-80,_y-32,_x+80,_y+32){
                other.button_selected = i
                if mouse_check_button_pressed(mb_left){
                    other.button_action[i]()
                    gui_wait = 60
                }
            }
        }
        
    }
    else {
        if other.button_selected == -1{
            other.button_selected = 0
        }
        
    	if InputPressed(INPUT_VERB.RIGHT){
            other.button_selected = 1
        }
        if InputPressed(INPUT_VERB.LEFT){
            other.button_selected = 0
        }
        
        if InputPressed(INPUT_VERB.ACCEPT){
            other.button_action[other.button_selected]()
            gui_wait = 60
        }
        
    }
    
    if (InputReleased(INPUT_VERB.PAUSE) || InputReleased(INPUT_VERB.CANCEL)) and gui_wait == 0 {
    	gui_wait = 5
        current_menu = TITLE_MENUS.MAIN
    }
}

play_menu.draw = function (){
    draw_set_colour(c_black)
    draw_rectangle(0,0,room_width,room_height,0)
    draw_set_halign(fa_center)
    draw_set_colour(c_white)
    
    scr_Go_Back_Text()
    
    var _pos = other.top_pos
    draw_text(_pos[0],_pos[1],other.top_text)
    
    var _y = other.buttons_y
    for (var i = 0; i < 2; i++) {
        var _x = other.buttons_x[i]
        var _txt = other.buttons_text[i]
        
        if other.button_selected == i{
            draw_sprite(other.button_hover_sprite,0,_x,_y)
        }
    	else {
        	draw_sprite(other.button_sprite,0,_x,_y)
        }
        
        draw_text(_x,_y-8,_txt)
    }
}


using_controller = false
current_menu = TITLE_MENUS.MAIN
gui_wait = 0
mouse_moved = 0