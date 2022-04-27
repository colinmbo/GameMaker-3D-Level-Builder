#region Global Vertex Format
vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_texcoord();
vertex_format_add_color();
global.vertexFormat = vertex_format_end();
#endregion

function add_vertex(vbuff,x,y,z,u,v,color,alpha) {
	vertex_position_3d(vbuff, x,y,z);
	vertex_texcoord(vbuff, u,v);
	vertex_color(vbuff, color,alpha)
}

function create_quad_hor(x1,y1,x2,y2,z,sprite,subimg,color,alpha) {
	
	var vbuff = vertex_create_buffer();
	
	var left = 0;
	var top = 0;
	var right = 1;
	var bottom = 1;
	
	if (sprite != -1) {
		var uvs = sprite_get_uvs(sprite, subimg);
		left = uvs[0];
		top = uvs[1];
		right = uvs[2];
		bottom = uvs[3];
	}
	
	//Clockwise
	add_vertex(vbuff,	x1,y1,z,	left,top,		color,alpha);
	add_vertex(vbuff,	x2,y1,z,	right,top,		color,alpha);
	add_vertex(vbuff,	x2,y2,z,	right,bottom,	color,alpha);
	
	add_vertex(vbuff,	x1,y1,z,	left,top,		color,alpha);
	add_vertex(vbuff,	x2,y2,z,	right,bottom,	color,alpha);
	add_vertex(vbuff,	x1,y2,z,	left,bottom,	color,alpha);
	
	return vbuff;
	
}

function create_quad_vert(x1,z1,x2,z2,y,sprite,subimg,color,alpha) {
	
	var vbuff = vertex_create_buffer();
	
	var left = 0;
	var top = 0;
	var right = 1;
	var bottom = 1;
	
	if (sprite != -1) {
		var uvs = sprite_get_uvs(sprite, subimg);
		left = uvs[0];
		top = uvs[1];
		right = uvs[2];
		bottom = uvs[3];
	}
	
	//Clockwise
	add_vertex(vbuff,	x1,y,z1,	left,top,		color,alpha);
	add_vertex(vbuff,	x2,y,z1,	right,top,		color,alpha);
	add_vertex(vbuff,	x2,y,z2,	right,bottom,	color,alpha);
	
	add_vertex(vbuff,	x1,y,z1,	left,top,		color,alpha);
	add_vertex(vbuff,	x2,y,z2,	right,bottom,	color,alpha);
	add_vertex(vbuff,	x1,y,z2,	left,bottom,	color,alpha);
	
	return vbuff;
	
}
	
function add_quad_hor(vbuff,x1,y1,x2,y2,z,sprite,subimg,color,alpha) {
	
	var left = 0;
	var top = 0;
	var right = 1;
	var bottom = 1;
	
	if (sprite != -1) {
		var uvs = sprite_get_uvs(sprite, subimg);
		left = uvs[0];
		top = uvs[1];
		right = uvs[2];
		bottom = uvs[3];
	}
	
	//Clockwise
	add_vertex(vbuff,	x1,y1,z,	left,top,		color,alpha);
	add_vertex(vbuff,	x2,y1,z,	right,top,		color,alpha);
	add_vertex(vbuff,	x2,y2,z,	right,bottom,	color,alpha);
	
	add_vertex(vbuff,	x1,y1,z,	left,top,		color,alpha);
	add_vertex(vbuff,	x2,y2,z,	right,bottom,	color,alpha);
	add_vertex(vbuff,	x1,y2,z,	left,bottom,	color,alpha);
	
}
	
function add_quad_vert(vbuff,x1,z1,x2,z2,y,sprite,subimg,color,alpha) {
	
	var left = 0;
	var top = 0;
	var right = 1;
	var bottom = 1;
	
	if (sprite != -1) {
		var uvs = sprite_get_uvs(sprite, subimg);
		left = uvs[0];
		top = uvs[1];
		right = uvs[2];
		bottom = uvs[3];
	}
	
	//Clockwise
	add_vertex(vbuff,	x1,y,z1,	left,top,		color,alpha);
	add_vertex(vbuff,	x2,y,z1,	right,top,		color,alpha);
	add_vertex(vbuff,	x2,y,z2,	right,bottom,	color,alpha);
	
	add_vertex(vbuff,	x1,y,z1,	left,top,		color,alpha);
	add_vertex(vbuff,	x2,y,z2,	right,bottom,	color,alpha);
	add_vertex(vbuff,	x1,y,z2,	left,bottom,	color,alpha);
	
}
	
function add_sprite_hor(vbuff,x,y,z,sprite,subimg) {
	
	var x1 = x;
	var y1 = y;
	var x2 = x+sprite_get_width(sprite);
	var y2 = y+(sprite_get_height(sprite)*4/3);
	
	var uvs = sprite_get_uvs(sprite, subimg);
	var left = uvs[0];
	var top = uvs[1];
	var right = uvs[2];
	var bottom = uvs[3];
	
	//Clockwise
	add_vertex(vbuff,	x1,y1,z,	left,top,		c_white,1);
	add_vertex(vbuff,	x2,y1,z,	right,top,		c_white,1);
	add_vertex(vbuff,	x2,y2,z,	right,bottom,	c_white,1);
	
	add_vertex(vbuff,	x1,y1,z,	left,top,		c_white,1);
	add_vertex(vbuff,	x2,y2,z,	right,bottom,	c_white,1);
	add_vertex(vbuff,	x1,y2,z,	left,bottom,	c_white,1);
	
}

function add_sprite_vert(vbuff,x,y,z,sprite,subimg) {
	
	var x1 = x;
	var z1 = z;
	var x2 = x+sprite_get_width(sprite);
	var z2 = z+(sprite_get_height(sprite)*3/2);
	
	var uvs = sprite_get_uvs(sprite, subimg);
	var left = uvs[0];
	var top = uvs[1];
	var right = uvs[2];
	var bottom = uvs[3];
	
	//Clockwise
	add_vertex(vbuff,	x1,y,z1,	left,top,		c_white,1);
	add_vertex(vbuff,	x2,y,z1,	right,top,		c_white,1);
	add_vertex(vbuff,	x2,y,z2,	right,bottom,	c_white,1);
	
	add_vertex(vbuff,	x1,y,z1,	left,top,		c_white,1);
	add_vertex(vbuff,	x2,y,z2,	right,bottom,	c_white,1);
	add_vertex(vbuff,	x1,y,z2,	left,bottom,	c_white,1);
	
}