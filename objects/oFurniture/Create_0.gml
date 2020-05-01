randomize();

if (!freeItems && group == "dress") {
    freeItems = ds_list_create();
    ds_list_add(freeItems, 
        [sSocks, "Носки"],
    );
}

if (freeItems) {
    var numFreeItems = ds_list_size(freeItems);
    if (!numFreeItems) {
        return;
    }
    
    ds_list_shuffle(freeItems);
    
    if (numFreeItems > 3) {
        numFreeItems = 3;
    }

    numFreeItems = irandom_range(0, numFreeItems);
    if (!numFreeItems) {
        return;
    }
    
    var thingCoord, freeItemData, item;
    for (var i = 0; i < numFreeItems; i++) {
        thingCoord = getFreeThingCoord();
        if (thingCoord == noone) {
            break;
        }
        
        freeItemData = freeItems[| 0];
        item = instance_create_layer(thingCoord[0], thingCoord[1], global.layerThing, oThingBase);
        item.group = group;
        item.sprite_index = freeItemData[0];
        item.name = freeItemData[1];
        ds_list_delete(freeItems, 0);
        numItems++;
    }
    
    // Инвентарь.
    drawInventory(invHeight, invWidth, invCellSideSize, global.layerInventory, self);
}
