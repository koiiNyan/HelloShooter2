image_xscale -= 1/room_speed/global.sp;
image_yscale = image_xscale;

if image_xscale < 0
{
	show_debug_message("Game ending - Current Score: " + string(global.current_score));
	instance_create_layer(0, 0, layer, obj_gameover);
	room_restart();
}