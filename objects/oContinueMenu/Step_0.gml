if (!visible) {
    return;
}

if (keyboard_check_released(ord("S")) && activeOption <> len) {
    activeOption++;
    return;
}

if (keyboard_check_released(ord("W")) && activeOption) {
    activeOption--;
    return;
}
