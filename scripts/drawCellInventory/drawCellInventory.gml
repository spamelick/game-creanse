///drawCellInventory(cell, size)

var cell = argument0;
var size = argument1;

draw_set_alpha(0.3);
draw_rectangle(cell.x, cell.y, cell.x + size, cell.y + size, 0);
draw_set_alpha(1);
draw_rectangle(cell.x, cell.y, cell.x + size, cell.y + size, 1);
draw_sprite_ext(cell.sprite_index, cell.image_index, cell.x, cell.y, 1, 1, cell.image_angle, c_white, 1);