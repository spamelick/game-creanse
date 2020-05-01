oPlayer.time--;
alarm[0] = room_speed;

if (!oPlayer.time) {
    game_end();
}