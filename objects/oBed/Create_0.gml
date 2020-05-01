// Инициализируем предметы.
freeItems = ds_list_create();
ds_list_add(freeItems, 
    [sPillowRed, "Подушка красная без номера"],
    [sPillowRed1, "Подушка-1"],
    [sPillowRed2, "Подушка-2"],
    [sPillowRed3, "Подушка-3"],
    [sPillowRed4, "Подушка-4"],
    [sPillowRed5, "Подушка-5"],
    [sPillowGreen, "Подушка зеленая"],
);

event_inherited();
