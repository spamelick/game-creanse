///throwItemFromInventory(cell)
/// @description Выкидывание предмета

var cell = argument0;
var item = instance_create_layer(
    oPlayer.x, 
    oPlayer.y, 
    global.layerThing,
    asset_get_index(cell.storedItem[? "objectName"])
);
    
item.image_xscale = cell.storedItem[? "imageScaleX"];
item.image_yscale = cell.storedItem[? "imageScaleY"];
item.name = cell.storedItem[? "name"];
item.group = cell.storedItem[? "group"];

ds_map_clear(cell.storedItem);

cell.sprite_index = cell.inventory.invCellDefaultSprite;
cell.isBusy = false;

return item;
