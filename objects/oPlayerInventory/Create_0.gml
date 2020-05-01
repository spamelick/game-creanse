var coordY;
var invStartX = 2000;
var invStartY = 2000;

for (var h = 0; h < invHeight; h++) {
    coordY = cellSideSize * h + invStartY;
    for (var w = 0; w < invWidth; w++) {
        invCell[h, w] = instance_create_layer(cellSideSize * w + invStartX, coordY, global.layerInventory, oPlayerInventoryCell);
        invCell[h, w].inventory = id;
    }
}