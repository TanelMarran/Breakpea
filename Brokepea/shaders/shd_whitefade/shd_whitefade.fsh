//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float Percent;

void main()
{
    vec4 OriginalColor = texture2D( gm_BaseTexture, v_vTexcoord );
	gl_FragColor = OriginalColor + vec4((1.0-OriginalColor.r)*Percent,(1.0-OriginalColor.g)*Percent,(1.0-OriginalColor.b)*Percent,0);
}
