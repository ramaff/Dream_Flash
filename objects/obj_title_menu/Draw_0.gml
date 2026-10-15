switch (current_menu) {
    default: break;
    case TITLE_MENUS.MAIN: menu_main.draw() break;
    case TITLE_MENUS.CREDITS: menu_credits.draw() break;
    case TITLE_MENUS.PLAY: play_menu.draw() break;
}

draw_set_halign(fa_left);
draw_set_colour(c_white);
draw_set_font(Dream_Flash_Font);

var startx = camera_get_view_x(view);
var starty = camera_get_view_y(view);
var bottomy = starty + (camera_get_view_height(view));

draw_text(startx + 8, bottomy - 20, version_text);