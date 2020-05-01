/// @description Передвижение по комнате

if (!visible) {
    return;
}

var keyRight = keyboard_check(ord("D"));
var keyLeft = -keyboard_check(ord("A"));
var keyUp = -keyboard_check(ord("W"));
var keyDown = keyboard_check(ord("S"));

var hMove = keyLeft + keyRight;
var vMove = keyUp + keyDown;

var hsp = hMove * moveSpeed;
var vsp = vMove * moveSpeed;

// ---------------------------
// Проверка на препятствия
// ---------------------------
if (place_meeting(x + hsp, y, oBlockMove)) {
    while (!place_meeting(x + sign(hsp), y, oBlockMove)) {
        x += sign(hsp);
    }
    hsp = 0;
}

if (place_meeting(x, y + vsp, oBlockMove)) {
    while (!place_meeting(x, y + sign(vsp), oBlockMove)) {
        y += sign(vsp);
	}
    vsp = 0;
}

x += hsp;
y += vsp;

// ---------------------------
// Смена спрайтов
// ---------------------------
if (hMove = 1) {
    sprite_index = sPlayerMoveRight;
    direction = 0;
} else if (hMove = -1) {
    sprite_index = sPlayerMoveLeft;
    direction = 180;
}

if (vMove = 1) {
    sprite_index = sPlayerMoveDown;
    direction = 270;
}
else if (vMove = -1) {
    sprite_index = sPlayerMoveUp;
    direction = 90;
}

if (hMove = 0 && vMove = 0) {
    sprite_index = sPlayerStandUp;
    image_speed = 0;
    image_index = direction / 90;
} else {
    image_speed = 1;
}

