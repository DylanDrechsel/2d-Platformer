if gathered && count <= 15 {
	y -= 2;
	count++;
} else if gathered && count <= 25 {
	y -= 1;
	image_alpha -= .1;
	count++;
} else if gathered && count > 25 {
	instance_destroy();	
}
