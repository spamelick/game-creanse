///shiftItemBetweenIntentory(intentory, currentCell)
/// @description Перекладывание предмета между инвентарями

var inventory = argument0;
var currentCell = argument1;
var anotherCell;

for(var h = 0; h < inventory.invHeight; h++) {
    for(var w = 0; w < inventory.invWidth; w++) {
        anotherCell = inventory.invCell[h, w];
                
        if (anotherCell.isBusy == false) {
            anotherCell.sprite_index = currentCell.sprite_index;
            anotherCell.image_speed = 0;
            anotherCell.storedItem = currentCell.storedItem;
            anotherCell.isBusy = true;
            
            currentCell.sprite_index = currentCell.inventory.invCellDefaultSprite;
            currentCell.isBusy = false;
            
            return anotherCell;
        }
    }
}
