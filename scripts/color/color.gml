/// @description	Color object
/// @param r		Red
/// @param g		Green
/// @param b		Blue
/// @param [a]		Alpha
function Color(r, g, b, a = 255) constructor {
	rgb = make_color_rgb(r, g, b);
	alpha = a / 255;
}
