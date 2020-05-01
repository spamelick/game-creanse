///putItemInIntentory(intentory, item)
/// @description Сохранение предмета в инвентарь

var inventory = argument0;
var item = argument1;
var curCell;

for(var h = 0; h < inventory.invHeight; h++) {
    for(var w = 0; w < inventory.invWidth; w++) {
        curCell = inventory.invCell[h, w];
       
        if (curCell.isBusy == false) {
            curCell.sprite_index = item.sprite_index;
            curCell.image_speed = 0;
            curCell.storedItem = ds_map_create();
            curCell.storedItem[? "objectName"] = object_get_name(item.object_index);
            curCell.storedItem[? "name"] = item.name;
            curCell.storedItem[? "group"] = item.group;
            curCell.storedItem[? "imageScaleX"] = item.image_xscale;
            curCell.storedItem[? "imageScaleY"] = item.image_yscale;
            curCell.isBusy = true;
               
            instance_destroy(item.id);
            
            return curCell;
        }
    }
}
