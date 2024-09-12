function scr_load_highscores() {
    if (file_exists("highscores.txt")) {
        var file = file_text_open_read("highscores.txt");
        while (!file_text_eof(file)) {
            var score_value = file_text_read_real(file);
            ds_list_add(global.highscores, score_value);
            file_text_readln(file);
        }
        file_text_close(file);
        ds_list_sort(global.highscores, false);
    }
}
