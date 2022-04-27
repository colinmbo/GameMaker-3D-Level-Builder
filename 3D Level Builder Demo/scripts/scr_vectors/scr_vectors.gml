function Vector2(inX, inY) constructor {
	
	x = inX;
	y = inY;
	
	function Add(vec2) {
		x += vec2.x;
		y += vec2.y;
	}
	
	function Subtract(vec2) {
		x -= vec2.x;
		y -= vec2.y;
	}
	
	function Multiply(vec2) {
		x *= vec2.x;
		y *= vec2.y;
	}
	
	function Divide(vec2) {
		x /= vec2.x;
		y /= vec2.y;
	}
		
	function Copy(vec2) {
		x = vec2.x;
		y = vec2.y;
	}
	
}

function Vector3(inX, inY, inZ) constructor {
	
	x = inX;
	y = inY;
	z = inZ;
	
	function Add(vec3) {
		x += vec3.x;
		y += vec3.y;
		z += vec3.z;
	}
	
	function Subtract(vec3) {
		x -= vec3.x;
		y -= vec3.y;
		z -= vec3.z;
	}
	
	function Multiply(vec3) {
		x *= vec3.x;
		y *= vec3.y;
		z *= vec3.z;
	}
	
	function Divide(vec3) {
		x /= vec3.x;
		y /= vec3.y;
		z /= vec3.z;
	}
		
	function Copy(vec3) {
		x = vec3.x;
		y = vec3.y;
		z = vec3.z;
	}
	
}

function correctX(inX) {
	return round(inX);
}

function correctY(inY) {
	return round(inY/YSCALAR)*YSCALAR;
}

function correctZ(inZ) {
	return round(inZ/ZSCALAR)*ZSCALAR;
}