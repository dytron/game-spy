if (locked) exit;
var c = getCenter();
#region Input
if (dir == -1 || !keyboard_check(vk_key[dir])) {	
	for (var i = 0; i < 4; i++) {
		if (keyboard_check(vk_key[i])) {
			dir = i;	
		}
	}
}
for (var i = 0; i < 4; i++) {
	if (keyboard_check_pressed(vk_key[i])) {
		dir = i;	
	}
}
if (dir != -1 && !keyboard_check(vk_key[dir])) {
	dir = -1;	
}
key_p_attack = keyboard_check_pressed(vk_attack);
#endregion
#region Movement
if (dir != -1) {
	var d = dir_axis[dir];
	move_x(walk_speed * d.x);
	move_y(walk_speed * d.y);
}

x = clamp(x, 0, room_width - width);
y = clamp(y, 0, room_height - height);
#endregion
#region Win
var o = instance_find(obj_target, 0);
if (c.distance(o.getCenter()) < o.radius) {
	obj_game.message_text = "Fugiu!";
	obj_game.restartGame();
}
#endregion
#region Attack
if (key_p_attack) {
	with (obj_foe) {
		if (c.distance(getCenter()) <= 3*circle_radius) {
			instance_destroy();	
		}
	}
}
#endregion