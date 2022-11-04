var i = 0, colors_length = array_length(colors);
while (i < circles_number) {
	var r = radius * (1 - i / circles_number);
	draw_set_color(colors[i mod colors_length]);
	draw_circle(x, y, r, false);
	i++;
}