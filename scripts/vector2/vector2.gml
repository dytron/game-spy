function Vector2(x, y) constructor {
	self.x = x;
	self.y = y;
	/// @description	Add Vector
	/// @returns		{Vector2}
	static add = function(v) {
		return new Vector2(x + v.x, y + v.y);	
	}
	/// @description	Subtract Vector
	/// @returns		{Vector2}
	static sub = function(v) {
		return new Vector2(x - v.x, y - v.y);
	}
	/// @description	Dot Product
	/// @returns		{real}
	static dot = function(v = self) {
		return x*v.x + y*v.y;	
	}
	/// @description	Vector Length
	/// @returns		{real}
	static len = function() {
		return sqrt(self.dot(self));	
	}
	/// @description	Cross Product
	/// @returns		{real}
	static cross = function(v) {
		return x*v.y - y*v.x;
	}
	/// @description	Multiply by scalar k
	/// @returns		{Vector2}
	static multiply = function(k) {
		return new Vector2(x*k, y*k);
	}
	/// @description	Divide by scalar k
	/// @returns		{Vector2}
	static divide = function(k) {
		return multiply(1 / k);
	}
	/// @description	Distance from self to Vector v
	/// @returns		{Vector2}
	static distance = function(v) {
		return v.sub(self).len();	
	}
}