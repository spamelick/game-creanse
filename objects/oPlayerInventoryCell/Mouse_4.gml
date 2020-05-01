if (isBusy) {
    var furns = ds_list_create();
    var num = collision_rectangle_list(
        oPlayer.x - 50, oPlayer.y - 50, 
        oPlayer.x + 50, oPlayer.y + 50, 
        oFurniture, 
        false, true, furns, false
    );
    
    if (num > 0 && furns[| 0].group == storedItem[? "group"]) {
        shiftItemBetweenIntentory(furns[| 0], self);
    }
    
    ds_list_destroy(furns);
}
