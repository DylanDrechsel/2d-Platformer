if alarm[1] <= 0 {
	xSpawn = irandom_range(0, 640);
	instance_create_layer(xSpawn, 0, "Enemies", oFirerain);
	alarm[1] = 30;
}
