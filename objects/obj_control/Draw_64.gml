if !instance_exists(obj_gameover)
{
	draw_set_font(Font1);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text(room_width/2, room_height/2, global.current_score);
}