// Inherit the parent event
event_inherited();
color = make_color_rgb(255, 128, 0);
// Key Settings
vk_key = [vk_right, vk_up, vk_left, vk_down];
vk_attack = vk_space;
// Key Variables
key_p_attack = false;
// Direction
dir = -1;
dir_axis = [
	new Vector2( 1,  0),
	new Vector2( 0, -1),
	new Vector2(-1,  0),
	new Vector2( 0,  1)
];
// Attributes
walk_speed = 5;
// I can't control if it is locked
locked = false;
getCenter = function() {
	return new Vector2(
		x + width / 2,
		y + height / 2
	);
}