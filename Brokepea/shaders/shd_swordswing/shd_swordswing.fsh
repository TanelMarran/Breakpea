//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 OriginalColor = texture2D( gm_BaseTexture, v_vTexcoord );
	gl_FragColor = vec4(0.8,0.7,1.0,OriginalColor.a*0.7);
}
