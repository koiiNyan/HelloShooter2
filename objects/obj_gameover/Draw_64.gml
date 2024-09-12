draw_set_font(Font1);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

// Game Over text
draw_text(room_width/2, room_height/15, "GAME OVER");

// Your Score text
draw_text(room_width/2, room_height/7, "Your Score: " + string(final_score));

draw_set_font(Font2);

// High Scores
draw_text(room_width/2, room_height/4.5, "High Scores:");
var high_score_start_y = room_height/3.5;
for (var i = 0; i < min(ds_list_size(global.highscores), global.max_highscores); i++) {
    draw_text(room_width/2, high_score_start_y + i * 40, string(i+1) + ". " + string(global.highscores[| i]));
}

