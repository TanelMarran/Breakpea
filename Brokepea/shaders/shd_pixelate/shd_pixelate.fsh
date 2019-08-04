//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform vec3 Size;

void main()
{
        float Pixels = Size.x;
        float dx = (1.0 / Size.y);
        float dy = (1.0 / Size.z);
        vec2 Coord = vec2(dx*Pixels * (floor(v_vTexcoord.x / dx*Pixels)),
                          dy*Pixels * (floor(v_vTexcoord.y / dy*Pixels)));
        gl_FragColor = texture2D(gm_BaseTexture, Coord);
}
