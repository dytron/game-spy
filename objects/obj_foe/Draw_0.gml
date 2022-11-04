// Draw Enemy
draw_set_color_alpha(color_outline);
draw_circle(x, y, circle_radius + 1, false);
draw_set_color_alpha(color);
draw_circle(x, y, circle_radius, false);