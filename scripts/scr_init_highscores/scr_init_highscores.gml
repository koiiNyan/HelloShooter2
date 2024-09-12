function scr_init_highscores() {
    global.current_score = 0;
    global.highscores = ds_list_create();
    global.max_highscores = 10;
    scr_load_highscores();
}
