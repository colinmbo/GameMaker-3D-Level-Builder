attribute vec3 in_Position;                  // (x,y,z)
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

varying float fogFactor;

uniform vec3 spritePos;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y * 4/3, in_Position.z * 3/2, 1.0 );
	object_space_pos.xyz += spritePos;
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
	
	if (gm_VS_FogEnabled)
	{
		vec4 viewpos = gm_Matrices[MATRIX_WORLD_VIEW] * object_space_pos;
		fogFactor = ((viewpos.z - gm_FogStart) * gm_RcpFogRange);
	}
	else
	{
		fogFactor = 0.0;
	}
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}