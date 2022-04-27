//Iterate through every object in the world geometry
//Add every unique texture to a texture array
#region Texture Array
texArray = [];
with(obj_world) {
	
	var found = false;
	for (var i = 0; i < array_length(other.texArray); i++) {
		if (other.texArray[i] == sprite_get_texture(sprite_index, image_index)) {
			found = true;
			break;
		}
	}
	
	if (!found) {
		other.texArray[array_length(other.texArray)] = sprite_get_texture(sprite_index, image_index);
	}
	
}
#endregion

//Create a vertex buffer of world geometry for each unique texture in the texture array
//Store each vertex buffer with the corresponding texture in a 2-dimensional buffer array
#region Buffer Array
bufferArray = [];
for (var i = 0; i < array_length(texArray); i++) {
	
	bufferArray[i][0] = vertex_create_buffer();
	vertex_begin(bufferArray[i][0], global.vertexFormat);
	
	with(obj_world) {
		if (sprite_get_texture(sprite_index, image_index) == other.texArray[i]) {
			
			if (isVertical) {
				add_sprite_vert(other.bufferArray[i][0], x, y*YSCALAR - z*YSCALAR, z*ZSCALAR, sprite_index,image_index);
			} else {
				add_sprite_hor(other.bufferArray[i][0], x, y*YSCALAR, z*ZSCALAR, sprite_index,image_index);
			}
			
			instance_destroy();
			
		}
	}
	
	vertex_end(bufferArray[i][0]);
	vertex_freeze(bufferArray[i][0]);
	
	bufferArray[i][1] = texArray[i];
	
}
#endregion