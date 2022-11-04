event_inherited();
// Palette
Colors = {
	LIGHT_YELLOW	: new Color(255,255,196,128),
	LIGHT_GREEN		: new Color(146,235,146,128),
	LIGHT_RED		: new Color(255,196,196,160),
	BORDER_GREEN	: new Color(100,255,100,48),
	BORDER_GREEN2	: new Color(100,255,100,72),
	BORDER_RED		: new Color(255,100,100,48),
	BORDER_RED2		: new Color(255,100,100,72),
	BORDER_YELLOW	: new Color(255,255,100,48),
	BORDER_YELLOW2	: new Color(255,255,100,72)
};
// Angle
angle_inc = choose(random_range(1, 1.5), random_range(-1.5, -1));
angle_min = random(360);
angle_max = angle_min + 50 + random(70);
angle = angle_min + 37;
angle_wide = angle_max - angle_min;
// Drawing
radius = irandom_range(100, 160);
circle_radius = 5;
vision_color = Colors.LIGHT_GREEN;
// Color
color = choose(c_red, c_ltgray, c_fuchsia, c_yellow);
color_outline = c_white;

can_see = false;
/// @description	Check if this enemy can see the player
function canSee(player = obj_player) {
	var c = getCenter();
	var p = player.getCenter();
	// Vector d
	var d = p.sub(c);
	var d2 = d.dot();
	// Out of the circle
	if (d2 > sqr(radius)) return false;
	
	// Vector du, called ('u')
	var u = d.divide(sqrt(d2)); // du = d / |d|
	
	// Vector ô, called v
	var a = degtorad(angle);
	var v = new Vector2(cos(a), -sin(a));
	
	// Dot product
	var dot = u.dot(v);
	var theta = degtorad(angle_wide) / 2;
	
	return (dot >= cos(theta));
}