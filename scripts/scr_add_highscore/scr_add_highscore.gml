function scr_add_highscore(new_score) {
    show_debug_message("Adding score to highscores: " + string(new_score));
    ds_list_add(global.highscores, new_score);
    ds_list_sort(global.highscores, false);
    if (ds_list_size(global.highscores) > global.max_highscores) {
        ds_list_delete(global.highscores, global.max_highscores);
    }
    scr_save_highscores();
    
    }