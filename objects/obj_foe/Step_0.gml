angle += angle_inc;
if (angle >= angle_max || angle <= angle_min)
	angle_inc *= -1;
can_see = canSee();
vision_color = can_see ? Colors.BORDER_RED : Colors.LIGHT_GREEN;
if (can_see) {
	obj_game.message_text = "Preso!";
	obj_game.restartGame();
}