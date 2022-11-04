randomize();
#region Layers
layer_blocks = layer_get_id("blocks");
layer_enemies = layer_get_id("enemies");
layer_bg = layer_get_id("Background");
#endregion
#region Instances
// Create Target
instance_create_layer(irandom_range(40, room_width - 40), 40 + irandom(room_height / 8), "target", obj_target);
// Create Blocks
for (var i = 0; i < 105; i++) {
	var xx = BLOCK_W * irandom(room_width / BLOCK_W);
	var yy = BLOCK_H * irandom(room_height / BLOCK_H);
	if (obj_player.x != xx && obj_player.y != yy)
		instance_create_layer(xx, yy, layer_blocks, obj_block);
	else i--;
}
// Create enemies
for (var xi = 0; xi < 4; xi++) {
	for (var yi = 0; yi < 3; yi++) {
		if (xi == 2 && yi == 1) continue;
		var xx = 200*xi + irandom(200);
		var yy = 150*yi + irandom(150);
		instance_create_layer(xx, yy, layer_enemies, obj_foe);
	}
}
#endregion
#region Game Restart
message_text = "";
game_finished = false;
function restartGame(restart_time = 120) {
	if (game_finished) exit;
	game_finished = true;
	with (obj_foe) {
		angle_inc = 0;	
	}
	with (obj_player) {
		locked = true;	
	}
	alarm[0] = restart_time;
}
#endregion
#region Themes
theme[0] = {
	outline: c_white,
	background: $191919
}
theme[1] = {
	outline: c_black,
	background: c_white
}
/// @description	Apply the given theme to the game
function applyTheme(t) {
	with (obj_game_object) {
		color_outline = t.outline;	
	}
	layer_background_blend(layer_background_get_id(layer_bg), t.background);
}
#endregion