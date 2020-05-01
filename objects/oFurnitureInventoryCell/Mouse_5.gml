if (isBusy) {
    var inst = collision_rectangle(x - 50, y - 50, x + 50, y + 50, oPlayer, false, true);
    if (inst != noone) {
        shiftItemBetweenIntentory(oPlayerInventory, self)
    }
}
