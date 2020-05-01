switch (activeOption) {
    case 0:
        instance_destroy(id);
        oPlayer.visible = true;
        break;
    case 1:
        room_goto(rLevel1);
        break;
    case 2:
        game_end();
        break;
}