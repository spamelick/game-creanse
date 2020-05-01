/// showTooltip(object, msg)

var object = argument0;
var msg = argument1;

if (position_meeting(mouse_x, mouse_y, object)) {
    var startX = mouse_x;
    var startY = mouse_y + 20;
    var tooltipWidth = string_width(msg) + 10;
    var tooltipHeight = string_height(msg);
    
    draw_set_color(c_aqua);
    draw_rectangle(startX, startY, startX + tooltipWidth, startY + tooltipHeight, 0);
    draw_set_color(c_black);
    draw_set_font(fDefault);
    draw_text(startX + 5, startY + 1, msg);
    draw_rectangle(startX, startY, startX + tooltipWidth, startY + tooltipHeight, 1);
}
