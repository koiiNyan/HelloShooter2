function scr_save_highscores() {
    show_debug_message("Saving highscores to file");
    var file = file_text_open_write("highscores.txt");
    for (var i = 0; i < ds_list_size(global.highscores); i++) {
        file_text_write_real(file, global.highscores[| i]);
        file_text_writeln(file);
        show_debug_message("Wrote score: " + string(global.highscores[| i]));
    }
    file_text_close(file);
    show_debug_message("Highscores saved");
}
