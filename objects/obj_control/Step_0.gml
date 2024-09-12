if not instance_exists(obj_circle) and !instance_exists(obj_gameover)
{
	var xp = random(room_width); 
	var yp = random(room_height);
	instance_create_layer(xp, yp, layer, obj_circle);	
}