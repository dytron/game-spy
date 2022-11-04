/// @description		Draw rectangle with the given size
/// @param x			X
/// @param y			Y
/// @param w			Width
/// @param h			Height
/// @param [color]		Color
/// @param [outline]	Is it only an outline?
function draw_rectangle_size(x, y, w, h, color = draw_get_color(), outline = false) {
	draw_set_color_alpha(color);
	draw_rectangle(x, y, x + w - 1, y + h - 1, outline);
}
/// @description		Draw Arc (pizza shape)
/// @param x
/// @param y
/// @param radius
/// @param start_angle
/// @param arc_angle
/// @param [color]
/// Modified from: http://www.davetech.co.uk/gamemakercircularhealthbars
function draw_arc(x, y, radius, start_angle, arc_angle, color = draw_get_color()) {
	if (arc_angle > 0) {
	    var i, angle, tx, ty, val;
	    var number_of_sections = 60;
	    var size_of_section = 360 / number_of_sections;
	    val = (arc_angle / 360) * number_of_sections;

	    if (val > 1) { // HTML5 version doesn't like triangle with only 2 sides 
	        draw_set_color_alpha(color);
	        draw_primitive_begin(pr_trianglefan);
	        draw_vertex(x, y);
	        for (i = 0; i <= val; i++) {
	            angle = (i * size_of_section) + start_angle;
	            tx = lengthdir_x(radius, angle);
	            ty = lengthdir_y(radius, angle);
	            draw_vertex(x + tx, y + ty);
	        }
	        draw_primitive_end();
	    }
		draw_set_alpha(1);
	}
}
/// @description				Set Color (RGBA)
/// @param {Color|int} color	Color
function draw_set_color_alpha(color) {
	var c = color, a = 1;
	if (is_struct(color)) {
		c = color.rgb;
		a = color.alpha;
	}
	draw_set_color(c);
	draw_set_alpha(a);
}