/// @description Insert description here
// You can write your code in this editor

depth = -2;

draw_self();

draw_set_color(c_black);

var ybott = camera_get_view_y(view) + 80 + 11 + 40;
var ytop = camera_get_view_y(view) + 156 + 379 + 22;

var xx = camera_get_view_x(view);
var yy = camera_get_view_y(view);


draw_line_width(xx + 100, ybott, xx + 360, ybott, 2);
draw_line_width(xx + 100, ytop, xx + 360, ytop, 2);
draw_line_width(xx + 400, yy + 144, xx + 400, yy + 520, 2);

