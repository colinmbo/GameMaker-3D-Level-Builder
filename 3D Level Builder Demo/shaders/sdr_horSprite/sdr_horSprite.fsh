varying vec2 v_vTexcoord;
varying vec4 v_vColour;

varying float fogFactor;

void main()
{
    
	vec4 SrcColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	if (SrcColor.a < 0.5) { discard; }
	
	if (gm_PS_FogEnabled)
	{
		SrcColor = mix(SrcColor, gm_FogColour, clamp(fogFactor, 0.0, 1.0)); 
	}
	
	gl_FragColor = SrcColor;

}
