//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float Percent;

void main()
{
    vec4 OriginalColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	gl_FragColor = vec4(OriginalColor.r,OriginalColor.g,OriginalColor.b+0.3*Percent,OriginalColor.a);
}
