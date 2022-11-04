/// @description	Move dist pixels in X axis or until it collides with an object
/// @param	dist	Distance to move
/// @param	obj		Object to check collision
function move_x(dist, obj = obj_block) {
	if (dist == 0) exit;
	if (block_meeting(x + dist, y, obj)) {
		while (!block_meeting(x + sign(dist), y, obj)) {
			x += sign(dist);	
		}
		dist = 0;
	}
	x += dist;
}

/// @description	Move dist pixels in Y axis or until it collides with an object
/// @param	dist	Distance to move
/// @param	obj		Object to check collision
function move_y(dist, obj = obj_block) {
	if (dist == 0) exit;
	if (block_meeting(x, y + dist, obj)) {
		while (!block_meeting(x, y + sign(dist), obj)) {
			y += sign(dist);	
		}
		dist = 0;
	}
	y += dist;
}
