///drawInventory(height, width, sideSize, layerName, parent)

var height = argument0;
var width = argument1;
var sideSize = argument2;
var layerName = argument3;
var parent = argument4;
var coordX, coordY;

for (var h = 0; h < height; h++) {
    coordY = y + h * sideSize;
    for (var w = 0; w < width; w++) {
        coordX = x + w * sideSize;
        invCell[h, w] = instance_create_layer(coordX, coordY, layerName, oFurnitureInventoryCell);
        invCell[h, w].inventory = parent.id;
    }
}
