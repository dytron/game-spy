/// @description Hotkeys
if (keyboard_check(vk_alt) && keyboard_check_pressed(vk_enter)) {
	window_set_fullscreen(!window_get_fullscreen());	
}
if (keyboard_check_pressed(ord("1"))) {
	applyTheme(theme[0]);
}
if (keyboard_check_pressed(ord("2"))) {
	applyTheme(theme[1]);
}
if (keyboard_check_pressed(vk_escape)) {
	game_end();
}