/// @description	Check if it collides with a block in that position (x, y)
/// @param	x		X axis
/// @param	y		Y axis
/// @param	obj		Block Object
function block_meeting(x, y, obj = obj_block) {
	for (var i = 0, len = instance_number(obj); i < len; i++) {
		var inst = instance_find(obj, i);
		if (check_block_collision(x, y, inst)) {
			return true;	
		}
	}
	return false;
}
/// @description	Check if it collides with an specific block
/// @param	x		X axis
/// @param	y		Y axis
/// @param	block	Block Instance
function check_block_collision(x, y, block) {
	return rectangle_in_rectangle(
		x, y, x + width - 1, y + height - 1,
		block.x, block.y, block.x + block.width - 1, block.y + block.height - 1) > 0;
}