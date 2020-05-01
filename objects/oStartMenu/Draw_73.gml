draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fStartMenu);
draw_set_colour(c_white);

for (var i = 0; i <= len; i++) {
    if (i <> activeOption) {
        draw_text(200, 200 + i * 100, options[i]);
    } else {
        draw_text_color(200, 200 + i * 100, options[i], c_lime, c_lime, c_green, c_green, 1);
    }
}


